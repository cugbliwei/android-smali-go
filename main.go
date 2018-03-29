package main

import (
	"bufio"
	"bytes"
	"fmt"
	"log"
	"os"
	"os/exec"
	"path/filepath"
	"strconv"
	"strings"

	"github.com/cugbliwei/dlog"
)

func addSmaliCode(path string) {
	dlog.Warn("start add smali code to %s", path)
	f, err := os.Open(path)
	if err != nil {
		dlog.Warn("read file %s error: %v", path, err)
	}

	newFile := ""
	tmp := ""
	scanner := bufio.NewScanner(f)
	for scanner.Scan() {
		text := scanner.Text()
		if strings.Contains(text, ".locals") {
			num, _ := strconv.Atoi(strings.TrimSpace(text[12:]))
			n := num + 2
			newNum := strconv.Itoa(n)
			text = text[0:12] + newNum + "\n\n"
			text += "    const-string v" + strconv.Itoa(num) + ", \"======================== " + path + "\"\n"
			text += "    const-string v" + strconv.Itoa(num+1) + ",  \"" + tmp + "\"\n"
			text += "    invoke-static {v" + strconv.Itoa(num) + ",v" + strconv.Itoa(num+1) + "} ,Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I"
		}

		tmp = text
		newFile += text + "\n"
	}
	f.Close()

	f, err = os.OpenFile(path, os.O_RDWR|os.O_TRUNC, 0644)
	f.WriteString(newFile)
	f.Close()
}

func readDir(root string) {
	err := filepath.Walk(root, func(path string, f os.FileInfo, err error) error {
		if f == nil {
			return err
		}
		if f.IsDir() {
			return nil
		}
		addSmaliCode(path)
		return nil
	})
	if err != nil {
		fmt.Printf("filepath.Walk() returned %v\n", err)
	}
}

func findSmaliCode(path string) {
	f, err := os.Open(path)
	if err != nil {
		dlog.Warn("read file %s error: %v", path, err)
	}

	tmp := ""
	tmp1 := ""
	tmp2 := ""
	flag := 1
	scanner := bufio.NewScanner(f)
	for scanner.Scan() {
		text := scanner.Text()
		if flag == 3 {
			tmp2 = text
			flag = 1
			//dlog.Warn("tmp: %s, tmp1: %s, tmp2: %s", tmp, tmp1, tmp2)
			if !strings.Contains(tmp1, "===========") && !strings.Contains(tmp2, "===========") {
				dlog.Info("path: %s, method: %s", path, tmp)
			}
		}
		if flag == 2 {
			tmp1 = text
			flag = 3
		}

		if strings.Contains(text, ".locals") {
			flag = 2
		} else if flag == 1 {
			tmp = text
		}
	}
	f.Close()
}

func findMethod(root string) {
	err := filepath.Walk(root, func(path string, f os.FileInfo, err error) error {
		if f == nil {
			return err
		}
		if f.IsDir() {
			return nil
		}
		findSmaliCode(path)
		return nil
	})
	if err != nil {
		fmt.Printf("filepath.Walk() returned %v\n", err)
	}
}

//在go中用来执行shell命令
func Shell(s string) (string, error) {
	cmd := exec.Command("/bin/sh", "-c", s)
	var out bytes.Buffer
	var stderr bytes.Buffer
	cmd.Stdout = &out
	cmd.Stderr = &stderr
	err := cmd.Run()
	if err != nil {
		return stderr.String(), err
	}
	return out.String(), nil
}

func deleteSmaliCode(path string, line int) {
	dlog.Warn("start delete smali code to %s, line %d", path, line)
	f, err := os.Open(path)
	if err != nil {
		dlog.Warn("read file %s error: %v", path, err)
	}

	newFile := ""
	lineCount := 0
	scanner := bufio.NewScanner(f)
	for scanner.Scan() {
		text := scanner.Text()
		lineCount += 1
		if lineCount == line {
			newFile += text + "\n"
			newFile = deleteLogCode(newFile)
		} else {
			newFile += text + "\n"
		}
	}
	f.Close()

	f, err = os.OpenFile(path, os.O_RDWR|os.O_TRUNC, 0644)
	f.WriteString(newFile)
	f.Close()
	dlog.Warn("success delete smali code to %s, line %d", path, line)
}

func deleteLogCode(code string) string {
	codes := strings.Split(code, "\n")
	index := -1
	for i := len(codes) - 1; i >= 0; i-- {
		if strings.Contains(codes[i], ".locals") {
			index = i + 1
			num, _ := strconv.Atoi(strings.TrimSpace(codes[i][12:]))
			n := num - 2
			newNum := strconv.Itoa(n)
			codes[i] = codes[i][0:12] + newNum
			break
		}
	}

	if index == -1 {
		return code
	}

	newCode := ""
	for i := 0; i < len(codes); i++ {
		if i >= index && i <= index+3 {
			continue
		}
		newCode += codes[i] + "\n"
	}
	return newCode
}

func main() {
	flag := 22
	if flag == 1 {
		readDir("./PokerFishs/smali")
	} else if flag == 2 {
		findMethod("./PokerFishs/smali/com/igexin")
	} else if flag == 3 {
		for {
			out, err := Shell("apktool b PokerFishs")
			if err == nil {
				break
			}

			outs := strings.Split(out, "\n")
			log.Println(outs[0])
			if !strings.Contains(outs[0], "PokerFishs/smali") {
				return
			}
			a := strings.Split(outs[0], "[")
			if len(a) != 2 {
				return
			}
			b := strings.Split(a[1], "]")
			if len(b) != 2 {
				return
			}
			c := strings.Split(b[0], ",")
			if len(c) != 2 {
				return
			}
			num, _ := strconv.Atoi(c[0])
			deleteSmaliCode(a[0], num)
		}
	}
}

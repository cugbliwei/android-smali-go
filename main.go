package main

import (
	"bufio"
	"fmt"
	"os"
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

func main() {
	readDir("./PokerFishs1/smali/com/unity3d/")
}

package main

import (
	"bytes"
	"fmt"
	"log"
	"os"
	"os/exec"
	"path/filepath"
	"strings"

	"github.com/xlvector/dlog"
)

func readDir(root string) {
	err := filepath.Walk(root, func(path string, f os.FileInfo, err error) error {
		if f == nil {
			return err
		}
		if f.IsDir() {
			return nil
		}
		//log.Println(path)
		oldPath := strings.Replace(path, "$", "\\$", -1)
		newPath := strings.Replace(oldPath, ".smali", ".java", -1)
		log.Println("mv " + oldPath + " " + newPath)
		if _, err := Shell("mv " + oldPath + " " + newPath); err != nil {
			dlog.Warn("Command error: %v", err)
		}
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

func main() {
	readDir("../PokerFishs/smali")
}

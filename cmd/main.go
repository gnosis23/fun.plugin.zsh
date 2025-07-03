package main

import (
	"fmt"
	"os"

	"github.com/fatih/color"
)

func main() {
	// print ascii "fun"
	message := os.Getenv("FUN_MESSAGE")
	if message == "" {
		message = "fun"
	}

	fmt.Println("")
	fmt.Println("")
	color.Cyan(message)
	fmt.Println("")
}

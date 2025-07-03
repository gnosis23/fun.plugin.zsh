package main

import (
	"fmt"
	"os"
	"strings"

	"github.com/fatih/color"
)

func main() {
	// print ascii "fun"
	greetingMessage := os.Getenv("FUN_GREETING_MESSAGE")
	if greetingMessage == "" {
		greetingMessage = "hello"
	}

	input := "too young"
	if len(os.Args) > 1 {
		input = os.Args[1]
	}
	input = strings.ReplaceAll(input, ";", "\n")

	fmt.Println("")
	color.Cyan(greetingMessage)
	color.Green(input)
	fmt.Println("")
}

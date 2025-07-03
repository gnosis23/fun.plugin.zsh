package main

import (
	"fmt"
	"os"
	"strings"
	"time"

	"github.com/fatih/color"
)

func saveCompletionTime() {
	// write to /tmp/fun_completion.txt
	completionTime := time.Now()
	os.WriteFile("/tmp/fun_completion.txt", []byte(completionTime.Format(time.DateTime)), 0644)
}

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
	input = strings.ReplaceAll(input, ";", "")

	fmt.Println("")
	color.Cyan(greetingMessage)
	fmt.Printf("args[1]: '%s'\n", input)
	fmt.Println("")

	saveCompletionTime()
}

PHONY: build install clean

build:
	go build -o fun-bin cmd/main.go

install: build
	mkdir -p ~/.config/fun-plugin-zsh
	cp fun-bin ~/.config/fun-plugin-zsh/fun-bin
	chmod +x ~/.config/fun-plugin-zsh/fun-bin

clean:
	rm -f fun-bin

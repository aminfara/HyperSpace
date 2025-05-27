.PHONY: compile,install

all: install

compile:
	yq eval hyper-space.yaml -o=json > hyper-space.json

install: compile
	mkdir -p $$HOME/.config/karabiner/assets/complex_modifications/
	cp hyper-space.json $$HOME/.config/karabiner/assets/complex_modifications/

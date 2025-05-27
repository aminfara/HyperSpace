.PHONY: clean,compile,install

all: install

clean:
	rm -f $$HOME/.config/karabiner/assets/complex_modifications/hyper-space.json

compile:
	yq eval hyper-space.yaml -o=json > hyper-space.json

install: clean compile
	mkdir -p $$HOME/.config/karabiner/assets/complex_modifications/
	cp hyper-space.json $$HOME/.config/karabiner/assets/complex_modifications/

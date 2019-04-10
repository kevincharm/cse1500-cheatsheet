MDBOOK=./mdbook-linux-x86_64

default: serve

serve:
	$(MDBOOK) serve

build:
	$(MDBOOK) build

clean:
	$(MDBOOK) clean

# Use bundled mdbook binary for netlify deploys
PLATFORM=$(shell uname -s)
ifeq ($(PLATFORM),Darwin)
	MDBOOK=mdbook
endif
ifeq ($(PLATFORM),Linux)
	MDBOOK=./tools/mdbook-linux-x86_64
endif

default: serve

serve:
	$(MDBOOK) serve

build:
	$(MDBOOK) build

clean:
	$(MDBOOK) clean

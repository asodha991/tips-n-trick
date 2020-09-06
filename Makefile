SHELL := /bin/bash

venv-docs/bin/activate: requirements.txt
	test -f venv-docs/bin/activate || virtualenv -p $(shell which python3) venv-docs
	. venv-docs/bin/activate ;\
	pip install -Ur requirements.txt;

.PHONY: install

install: venv-docs/bin/activate
		. venv-docs/bin/activate;

commit:
	git add .
	git commit -m "Commit using Makefile."
	git push

pull:
	git pull

test: install
	echo "Running local web server"
	mkdocs serve

deploy: install
	echo "Deploying Website to Production"
	mkdocs gh-deploy --clean
	$(MAKE) commit

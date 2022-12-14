init: .venv
.PHONY: init

.venv: requirements.txt
	python -m venv .venv
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install -r requirements.txt

freeze: .venv
	.venv/bin/pip freeze > requirements.txt
.PHONY: freeze

clean:
	rm -rf .venv/
.PHONY: clean
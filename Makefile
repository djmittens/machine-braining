init:
	python -m venv .venv
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install -r requirements.txt
.PHONY: init

clean:
	rm -rf .venv/
.PHONY: clean
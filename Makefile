
install: 
	pip install -r requirements.txt --upgrade
	pip install -r requirements_dev.txt --upgrade
	pip install -e .
	pre-commit install

test:
	pytest

cov:
	pytest --cov= sky130

mypy:
	mypy . --ignore-missing-imports

lint:
	flake8 

pylint:
	pylint sky130

lintd2:
	flake8 --select RST

lintd:
	pydocstyle sky130

doc8:
	doc8 docs/

update:
	pur

update2:
	pre-commit autoupdate --bleeding-edge

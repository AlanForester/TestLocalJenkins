test:
	pytest --collect-in-virtualenv spec
lint:
	pylint --rcfile=./.pylintrc *
build:
	pyinstaller -d all -s -a --clean --specpath spec -n diploma diploma.py
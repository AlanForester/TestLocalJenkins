test:
	pytest --collect-in-virtualenv tests
lint:
	pylint --rcfile=./.pylintrc diplom/**.py
build:
	pyinstaller -d all -s -a --clean --specpath spec -n diploma diploma.py
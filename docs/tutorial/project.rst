Project Setup
=============

## Explain directory structure

- purpose of setup.py
- purpose of __init__.py
- version.py
- Makefile
- tests

README: the README gives information for users on github, but is also used to provide information about your package on Pypi. In this example, we read the README.md file in setup.py to provide a long description for our package.

License: A license tells users of your package the terms under which they can use it. https://choosealicense.com/ provides information for picking out a license. In this tutorial, we use the Apache Foundation license, as it provides no restrictions for users.

What is a module?
- file that contains definitions that can be imported into other modules. File name is the module name with the suffix .py.

A package is a collection of modules. The __init__.py file is required in package directories for Python to treat directories
as packages. __init__.py files can be empty, but can also contain initialization code for the submodule it defines.

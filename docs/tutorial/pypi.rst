Building and Uploading to PyPI
==============================

## Building a distribution

pypi: python package index


.. code:: bash

	python3 setup.py sdist

Generates the following files in the dist output directory:

.. code:: bash

	dist/
		PlotMAPQ-py3-none-any.whl
		PlotMAPQ-0.0.1.tar.gz


tar.gz is a source archive and .whl is a build distribution. Depending on the pip version,
pip will choose one of these files to install your package.


### Uploading your package to PyPI.

Make an account on test Pypi: https://test.pypi.org/account/register/
Verify your email address. Then make a PyPi API token. This will allow you to securely upload your project. https://test.pypi.org/help/#apitoken
Make sure to save to token to a safe place.

We will use twine to upload distribution packages we created in the previous section. First, let's install twine:

.. code:: bash

	pip install twine


Next we can run twine to upload all files under dist:

.. code:: bash

	python -m twine upload --repository testpypi dist/*


**Note**: Normally, I use my Makefile to prepare and publish packages on PyPi.
See the PyPI command in the Makefile. This command automatically builds your distribution
and uploads to PyPI.

Here, enter your testPyPi username and your token for the password.
Once uploaded, the package should be available here:
https://test.pypi.org/project/PlotMAPQ-YOUR-USERNAME-HERE

Now, you can install your package from PyPI:

.. code:: bash


	pip install --index-url https://test.pypi.org/simple/ --no-deps PlotMAPQ-YOUR-USERNAME-HERE


**Note**: testPyPI is a great way to test publishing packages. However, when publishing a
package, you will normally publish to https://pypi.org/. You can make an account here for PyPI
and upload to this repository for future projects.

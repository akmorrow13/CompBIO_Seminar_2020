define help

Supported targets: prepare, develop, sdist, clean, test, and pypi.

The 'prepare' target installs this project's build requirements into the current virtualenv.

The 'develop' target creates an editable install of this project and its runtime requirements in the
current virtualenv. The install is called 'editable' because changes to the source code
immediately affect the virtualenv.

The 'clean' target undoes the effect of 'develop'.

The 'test' target runs unit tests. Set the 'tests' variable to run a particular test, e.g.

        make test tests=PlotMAPQtest/countMAPQ_test.py

The 'pypi' target publishes the current commit of this project to PyPI after enforcing that the working
copy and the index are clean, and tagging it as an unstable .dev build.

endef
export help
help:
	@printf "$$help"

SHELL=bash
python=python
pip=pip
tests=.
version:=$(shell $(python) version.py)
sdist_name:=PlotMAPQ-$(version).tar.gz

develop:
	$(pip) install -e .

clean_develop:
	- $(pip) uninstall -y PlotMAPQ
	- rm -rf *.egg-info

clean_sdist:
	- rm -rf dist

clean: clean_develop clean_pypi

check_build_reqs:
	@$(python) -c 'import pytest' \
                || ( printf "$(redpip)Build requirements are missing. Run 'make prepare' to install them.$(normal)" ; false )

test: check_build_reqs
	$(python) -m pytest -vv --junitxml target/pytest-reports/tests.xml $(tests)

check_clean_working_copy:
	@printf "$(green)Checking if your working copy is clean ...$(normal)"
	@git diff --exit-code > /dev/null \
                || ( printf "$(red)Your working copy looks dirty.$(normal)" ; false )
	@git diff --cached --exit-code > /dev/null \
                || ( printf "$(red)Your index looks dirty.$(normal)" ; false )
	@test -z "$$(git ls-files --other --exclude-standard --directory)" \
                || ( printf "$(red)You have are untracked files:$(normal)" \
                        ; git ls-files --other --exclude-standard --directory \
                        ; false )

pypi: clean clean_sdist check_clean_working_copy
	set -x \
	&& $(python) setup.py egg_info sdist bdist_egg \
	&& twine check dist/* \
	&& twine upload dist/*
clean_pypi:
	- rm -rf build/

.PHONY: test tox docs docs-clean

test: # Run the tests
	pytest

tox: # Run the tests with tox
	tox

docs: # Build the documentation
	rm -rf docs/_build
	uv run sphinx-build -b html docs docs/_build/html

docs-clean: # Clean the documentation build
	rm -rf docs/_build

rm ./dist/*.tar.gz
rm ./dist/*.whl
python ./setup.py sdist
python ./setup.py bdist_wheel --universal
twine upload --repository-url https://test.pypi.org/legacy/ .\dist\* --verbose
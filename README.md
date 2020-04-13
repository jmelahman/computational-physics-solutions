# Computational Physics

Following Computational Physics: FORTRAN Version by Steven E. Koonin and Dawn C. Meredith.

## Getting started

Any exercise can be executed with the following command,

```
$ python launcher.py <chapter> [<exercise>]
```

Simiarly, to execute examples or projects, run the following commands respectively,

```
$ python launcher.py <chapter> --example
$ python launcher.py <chapter> --project
```

To run the files directly, add the `computational_physics` directory to your python's site module.
For example,

```
$ sudo ln -s computational_physics /usr/local/lib/pythonX.Y/site-packages
```

See also, https://docs.python.org/3/library/site.html.

### Repository structure

The repository follows the folling structure,

/computational_physics                # Contains all relevant modules
/computational_physics/chapters       # List of chapters from the text
/computational_physics/chapters/chapter_X   # Solutions from chapter X in the text
/computational_physics/library        # Library of methods used in exercises, example, and projects
/docs                     # Documentation of the solutions
/tests                    # Unit tests for library methods

## Tooling

No third-party packages are needed to execute any of the scripts in `computational_physics/`.
Some third-party packages are used for development purposes.
They're defined in the `requirements.txt` file.
To install the requirements, run,

```
$ pip install -r requirements.txt
```

### Linting

Linting is performed by the `pylint` package.
Linting rules are defined by the project's `.pylintrc` file.
Additionally, the `autopep8`package can be used to auto-lint.
To preview the result from running `autopep8`, run,

```
$ autopep8 <file>
```

The result can be saved by running,

```
$ autopep8 -i <file>
```

### Testing

Unit tests can be ran with the following command,

```
$ python -m unittest discover tests/
```

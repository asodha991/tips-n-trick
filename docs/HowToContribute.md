# How to Contribute

Please [click here to request access to BITS20 Org](AccessForm.md)

## Fast and Quick Fix

1. For short fix to this website, you can click on pencil icon and edit. Please make sure you are not in master branch.

## Recommended Approach

**Steps to contribute:**

1. Fork [tips-n-trick](https://github.com/bits20/tips-n-trick) repository into your account on Github or  create a branch.
2. Clone your forked repository or checkout the newly created branch.
3. Edit or Add New Page
4. Test it
5. Create a pull request for review to request merge on `tips-n-trick` repo.

Thank you for your contribution!


## Detailed Steps

### Pre-Requisite

1. Python3.6+
2. Make
3. Install virtualenv

```bash
python3 -m pip install virtualenv
```

4. Run Make file to create virtualenv

```bash
make install
```


### Testing Locally

1. Run webserver locally and test your changes.

```
make test
```

2. Open Website in `http://127.0.0.1:8000/`

You can have webserver running while make changes to files. Changes are automatically reloaded.


### Ready for PR

1. Once all things verified, please send a PR.

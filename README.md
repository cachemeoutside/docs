# My instructions for deploying sphinx documentation

## Installing sphinx
```bash
apt-get install python3-pip
  503  pip install sphinx
  504  pip install sphinx_rtd_theme
  526  ~/.local/bin/sphinx-quickstart .
```

## Day to day instructions
```bash
make -j html
rsync -av --delete _build/html/ docs/
git add *
git commit -m 'your message'
git push origin master
```

avtest

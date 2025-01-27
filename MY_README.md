# Main readme
https://github.com/cuter-testing/cuter?tab=readme-ov-file

# Erlang using https://github.com/kerl/kerl

```bash
curl -O https://raw.githubusercontent.com/kerl/kerl/master/kerl
chmod a+x kerl
./kerl build 21.3.8.24
./kerl install 21.3.8.24 ~/.local/erlang/21.3.8.24
source ~/.local/erlang/21.3.8.24/activate
```

# Python 3.7 using https://github.com/pyenv/pyenv

```bash
curl -fsSL https://pyenv.run | bash
pyenv install 3.7.17
pyenv virtualenv 3.7.17 cuter
pyenv activate cuter
```

maybe `source ~/.pyenv/versions/cuter` is better for activation to have the right path

# z3
ok

# submodules
ok

# protoc
ok

# configure and compile
ok but do NOT use `-j`

# make test
some fail but i don't know why or if it is ok

# make dialyzer
why not... seems to work


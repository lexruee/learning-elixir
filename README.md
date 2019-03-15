# Learning Elixir 

## Elixir Scripts

Elixir Scrips have the file type `exs`. They can be directly run with the `elixir` command:

```
elixir smoke-book/chap1/hello-world.exs
```

## Elixir Shell: iex

Elixir also provides a helpful shell called `iex`.

You can run it by enter `iex` in your shell. To leave it, enter twice Ctrl-C.


## IElixir and Jupyter

 * [IElixir](https://github.com/pprzetacznik/IElixir)
 * [Pipenv](https://github.com/pypa/pipenv)

### Installation

```
pipenv --three
pipenv install jupyter
git clone https://github.com/pprzetacznik/IElixir.git
cd IElixir
mix deps.get
mix local.rebar --force
mix test
MIX_ENV=prod mix compile
```

## Online Resources
 * [Elixir Programming Language Website](https://elixir-lang.org/)
 * [Elixir Documentation](https://elixir-lang.org/docs.html)
 * [Elixir Learning Resources](https://elixir-lang.org/learning.html)

## Book Resources

 * [Learn Functional Programming with Elixir (aka Smoke Book)](https://www.amazon.com/Learn-Functional-Programming-Elixir-Foundations/dp/168050245X/)
 * [Programming Elixir (aka Bottle Book)](https://www.amazon.com/Programming-Elixir-1-6-Functional-Concurrent/dp/1680502999/)

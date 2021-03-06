# Learning Elixir 

## Installation

On Arch Linux, we can install elixir by simply running the following `pacman` command:

```
sudo pacman -S elixir
```

This installs the latest elixir version on the system level. However, for development 
and testing purposes, it's more handy to use a virtual environment managment tool
such as `asdf-vm`.


## Managing multiple Elixir versions with asdf-vm

To manage multiple elixir versions on your system, you can use the [asdf-vm](https://asdf-vm.com/#/).
The later is a handy tool to install different versions of different programming 
environments like erlang, elixir, nodejs etc.

The installation is straightforward. One has just to git-clone the `adsf` git repository:

```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.0
```

Next, adapt your shell dotfile such as `.zshrc`:

```
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
```

Next, we install the elixir plugin and erlang plugin:

```
asdf plugin-add elixir
asdf plugin-add erlang
```

Finally, we install the latest elixir and erlang version and set the local version in the .tool-versions file:

```
asdf install erlang 21.3.2
asdf install elixir 1.8.1
echo "elixir 1.8.1" >> .tool-versions
echo "erlang 21.3.2" >> .tool-versions
```

Notes:

* To list all installed versions, run `asdf list elixir`.
* To list all avaialble versions, run `asdf list-all elixir`.
* For more details how to use `asdf`, run `asdf help`.

## Elixir Scripts

Elixir Scripts have the file type `exs`. They can be directly run with the `elixir` command:

```
elixir smoke-book/chap1/hello-world.exs
```

## Elixir Shell: iex

Elixir also provides a helpful shell called `iex`.

You can run it by enter `iex` in your shell. To leave it, enter twice Ctrl-C.


## Online Resources

 * [Elixir Programming Language Website](https://elixir-lang.org/)
 * [Elixir Documentation](https://elixir-lang.org/docs.html)
 * [Elixir Learning Resources](https://elixir-lang.org/learning.html)
 * [Elixir Getting Started Guide](https://elixir-lang.org/getting-started/introduction.html)
 * [Elixir School](https://elixirschool.com/en/)

## Book Resources

 * [Learn Functional Programming with Elixir (aka Smoke Book)](https://www.amazon.com/Learn-Functional-Programming-Elixir-Foundations/dp/168050245X/)
 * [Programming Elixir (aka Bottle Book)](https://www.amazon.com/Programming-Elixir-1-6-Functional-Concurrent/dp/1680502999/)

## Code Examples

The following code examples were created while reading the books and playing 
around with the book code examples.

### Smoke Book

 * [Chapter 1 - Thinking Functionally](https://github.com/lexruee/learning-elixir/tree/master/smoke-book/chap1)
 * [Chapter 2 - Working with Variables and Functions](https://github.com/lexruee/learning-elixir/tree/master/smoke-book/chap2)
 * [Chapter 3 - Using Pattern Matching to Control the Program Flow](https://github.com/lexruee/learning-elixir/tree/master/smoke-book/chap3)
 * [Chapter 4 - Diving into Recursion](https://github.com/lexruee/learning-elixir/tree/master/smoke-book/chap4)
 * [Chapter 5 - Using Higher-Order Functions](https://github.com/lexruee/learning-elixir/tree/master/smoke-book/chap5)
 * [Chapter 6 - Designing Your Elixir Applications](#TODO)
 * [Chapter 7 - Handling Impure Functions](#TODO)

# elixir-examples

A *very* nascent collection of [Elixir](http://elixir-lang.org) examples along with their unit tests.

About these exercises
---
I'm totally new to Elixir and Erlang, but I think it's pretty cool so far. Since I'm so new, surely the code needs lots and lots and lots of work to make it truly an examplary example site. Please submit issues or pull requests!

(Of note, some of these examples are going to require elixir 1.2+, which can be an issue on some workstations. See below for some notes on how to upgrade your system.)

Basics
---
* Outset and obligatory [hello, world](https://github.com/mrice/elixir-examples/tree/master/basics/1-hello-world)

* [Functions examples](https://github.com/mrice/elixir-examples/tree/master/basics/2-functions) **with a lot to do to do Elixir justice on this front**

* [Recursion example](https://github.com/mrice/elixir-examples/tree/master/basics/3-recursion)

I/O
---

* Quick demo of [reading and writing to the console](https://github.com/mrice/elixir-examples/tree/master/io/1-read-write-console)

* A simple REST client using [httpoison](https://github.com/edgurgel/httpoison) and [poison](https://github.com/devinus/poison) [here](https://github.com/mrice/elixir-examples/tree/master/io/2-rest-client)


Upgrading to Elixir 1.2+
===

There are two parts to installing Elixir 1.2: installing Erlang 18+ and then getting Elixir 1.2 installed. When I originally wrote these examples I was using a Fedora 23 machine and the ```dnf``` packaging tool would only let me install Erlang 17 and Elixir 1.0-something. The Fedora 23 folks apparently (thought Erlang 18x wasn't ready for prime time)[https://lists.fedoraproject.org/pipermail/devel/2015-September/215140.html]. Hopefully this issue will be moot on later versions of Fedora. Here's how to know what version you're running

```
erl --version
```

Erlang 18+
---
There are ways to get multiple versions of Erlang installed, notwithstanding ```dnf```, which is something you might need anyway if you're a professional developer. The tool for Erlang is called ```kerl```, which lets you get it done on Fedora 23 (and possibly other environments too).

First, download it:

```
curl -O https://raw.githubusercontent.com/yrashk/kerl/master/kerl
```

Make kerl executable:

```
chmod a+x kerl
```

Make it available on your path this way (or however you want to do it):

```
sudo mv kerl /usr/local/bin
```

Next, make sure you've got all the kerl dependencies installed on your workstation:

```
sudo dnf install gcc ncurses-devel openssl-devel
```

Now create a .kerlrc file in your home directory

```
vim ~/.kerlrc
```

And put this in the file:

```
export KERL_CONFIGURE_OPTIONS="--with-ssl=/usr --enable-smp-support --enable-threads --enable-kernel-poll --enable-sctp --without-javac"
```

Now build Erlang 18.2 locally with this:

```
kerl build 18.2 erlang_18_2
```

The first parameter is the version of Erlang available from the internet (you can list if you want too), the second parameter is the label you'll reference it as on your local machine (don't worry, will make sense later on.) After that, install it on your machine (you can put it wherever you want):

```
kerl install erlang_18_2 ~/.kerl/installations/erlang_18_2
```

Now activate it:

```
source ~/.kerl/installations/erlang_18_2/activate
```

These steps came straight from Verbose Guides, *Installing Erlang using kerl* [here](http://verboseguides.com/2016/01/26/installing-erlang-using-kerl/). (By the way, the guide has information for you OS X folks too.)


First, Elixir 1.2+
---
This step is a little easier if you simply download the binaries from the Elixir site (again, the ```dnf``` tool only supports Elixir 1.0x on Fedora 23).

All you have to do is download one of the precompiled pacakages from here

```
http://elixir-lang.org/install.html#precompiled-package
```

Unpack it in any directory you want (I have a languages directory), and then update your paths. I do that by updating my ```.bash_profile``` with the following:

```
ELIXIR_HOME=/home/mrice/tools/elixir-1.2.5
export ELIXIR_HOME
.
.
.
PATH=$PATH:$ELIXIR_HOME/bin
export PATH
```

Jekyll-base
===========

By Adrian Haasler García.

*Jekyll-base* gives you a hassle-free way to start your jekyll based website. Feel free to take a look at the [demo](http://jekyll-base.adrianhaasler.com).

Getting Started
---------------

### Prerequisites

1. Make sure you have *ruby-dev* and *npm* installed (you may also need *ruby*, *rubygems*, *gem* or *nodejs* if not automatically installed).

  ```bash
# Fedora
yum install -y ruby-devel npm
  ```

  ```bash
# Ubuntu
apt-get install -y ruby-dev npm
  ```

  or the equivalent for your distro or package manager.

2. You will also need *bundler* to handle your gems:

  ```bash
gem install bundler
  ```

### First steps

1. Clone or [fork](https://github.com/ahaasler/jekyll-base/fork "Fork your own copy of ahaasler/jekyll-base to your account") the repo.

  ```bash
git clone https://github.com/ahaasler/jekyll-base.git
# Or use the url of your fork
  ```

1. Install all necessary gems.

  ```bash
# In the root folder of the project
bundle install
  ```

### Build your page

To build the page use the following command:

```bash
bundle exec jekyll build
```

The page will be generated in a folder called `_site`. This files are ready to be hosted on a server (any server capable of serving static
files will handle it just fine).

### See the page

You can see how the page looks with:

```bash
bundle exec jekyll serve
```

Now go to `http://localhost:4000` in your browser and see how the page would look served by a web server.

As long as the command is running you can edit your page and see the changes **live**.

License
-------

See [LICENSE](LICENSE "The MIT License").

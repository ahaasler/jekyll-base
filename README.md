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

2. Install all necessary *gems*.

  ```bash
# In the root folder of the project
bundle install
  ```

3. Install *npm* packages.

  ```bash
#In the root folder of the project
npm install
  ```

  > ### Check *grunt*
  >
  > To test if *grunt* is installed correctly run:
  >
  > ```bash
grunt --version
  > ```
  >
  > You will see something like:
  >
  > ```
grunt-cli v0.1.13
grunt v0.4.5
  > ```
  >
  > #### No *grunt*?
  >
  > If that's not the case you may need to install *grunt-cli* globally:
  >
  > ```bash
sudo npm install -g grunt-cli
  > ```
  >
  > #### Possible errors:
  >
  > * `/usr/bin/env: node: No such file or directory`: If you see this
  > error running *grunt* your distro may have installed *node* as *nodejs*.
  > A symlink will do just fine:
  >
  >   ```bash
sudo ln -s /usr/bin/nodejs /usr/bin/node
  >   ```
  >
  > #### Nothing works!
  >
  > If you can't make *grunt* work don't worry. You can find the binary in
  > the `node_modules` folder inside the project's root folder.
  >
  > ```bash
# Create a symlink
ln -s node_modules/grunt-cli/bin/grunt grunt
# Now you should be able to use grunt this way:
./grunt --version
  > ```

### Build your page

This project uses [*grunt*](http://gruntjs.com/ "Grunt, the javascript task runner") as automation tool to build itself.

To build the page use the following command:

```bash
grunt build
```

The page will be generated in a folder called `_site`. This files are ready to be hosted on a server (any server capable of serving static
files will handle it just fine).

### See the page

You can see how the page looks with:

```bash
grunt serve
```

> Or simply `grunt` without specifying a task, since the default one is `serve`.

Now go to `http://localhost:4000` in your browser and see how the page would look served by a web server.

As long as the command is running you can edit your page and see the changes **live**.

### Add bower dependencies

Let's say you want to use [*jQuery*](http://jquery.com/ "jQuery") in your website. Just add it as a dependency
in `bower.json` like this:

```json
"dependencies": {
  "jquery": "~2.1.1"
}
```

and run the *bower* task to download it:

```bash
grunt bower
```

This will download *jQuery* and will be available in `lib`.

License
-------

See [LICENSE](LICENSE "The MIT License").

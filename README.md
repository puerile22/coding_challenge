directory-struct-challenge
==========================

This repo is a collection of branches whose purpose is to convey how ruby's require/require-relative and the bootstrap process in general works.

# Getting Started

* `git clone https://github.com/makersquare/directory-struct-challenge.git dir-challenge`
* `git checkout Exercise1` (Exercise2, Exercise#...)
* Fix Them!

## Your Arsenal

```ruby
require_realtive 'bar.rb'
require 'foo.rb'
?.each {|file| require file }

Dir["/path/to/directory/*.rb"]
Dir[File.dirname(__FILE__) + '/lib/*.rb']
# ANY COMBINATIONS!
```

## Globbing

`'/support/**/*.rb'`

### Exercise 1

Link the folder structure together in such a way to make the bootstrap process load in the following order.

<pre>
0: app.rb
1: Enviroment Init
2: db_init.rb
2.1: loading/creating tables
    Game Table
    Machine Gun Table
    Panda Table
    Tournament Table
    User Table
2.2: loading models
    Game Model
    Machine Gun Model
    Panda Model
    Tournament Model
    User Model
3: helpers.rb
4: server.rb
 4.1  Controllers Init
5: Routes.rb
</pre>

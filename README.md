directory-struct-challenge
==========================

This repo is a collection of branches whose purpose is to convey how ruby's require/require-relative and the bootstrap process in general works.

## Solution 1
The solution for exercise one should be in this order

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

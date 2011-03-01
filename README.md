placekitten
===========

placekitten is a small library for generating [placekittens](http://placekitten.com/).

Installing
----------

placekitten is available on [RubyGems](http://rubygems.org/gems/placekitten).

    gem install placekitten

Examples
--------

    require 'placekitten'

    # Generate a 300x400 placekitten
    PlaceKitten.image(300, 400) # => "http://placekitten.com/300/400"

    # Generate a 400x600 grayscale placekitten
    PlaceKitten.image(400, 600, true) # => "http://placekitten.com/g/300/400"
    # Alternatively:
    PlaceKitten.grayscale(400, 600)

Rails Helpers
-------------

    # in Gemfile:
    gem 'placekitten'

    # in app/helpers/application_helper.rb:
    module ApplicationHelper
      include PlaceKitten::Helpers
    end

    # in your views:
    <%= image_tag placekitten(400, 500) %>
    <%= image_tag placekitten_gray(400, 500) %>

Contributing
------------

Just fork the project, create a topic branch, push your changes, and issue a Pull Request. Avoid changing `Rakefile` or `VERSION` (or do it in a separate commit so I can skip pulling those changes).

License
-------

    Copyright (c) 2011 Brandon Tilley <brandon@brandontilley.com>

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.

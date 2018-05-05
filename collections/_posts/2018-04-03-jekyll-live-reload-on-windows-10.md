---
layout: post
sidebar_link: true
excerpt_separator: "<!--more-->"
title: "Jekyll: Live reload on Windows 10"
categories:
  - Jekyll
tags:
  - Jekyll
last_modified_at: 2017-04-03
guid: 2018-04-03-000
---

Live reload issue solved when running Jekyll on Windows 10.<!--more-->

#### Issue

When attempting to use live reload on Windows 10 (`jekyll serve --livereload`), encountered the following error,

```
Unable to load the EventMachine C extension; To use the pure-ruby reactor, require "em/pure_ruby"
C:/tools/ruby24/lib/ruby/gems/2.4.0/gems/eventmachine-1.2.5-x64-mingw32/lib/rubyeventmachine.rb:2:in `require': cannot load such file -- 2.4/rubyeventmachine (LoadError)
        from C:/tools/ruby24/lib/ruby/gems/2.4.0/gems/eventmachine-1.2.5-x64-mingw32/lib/rubyeventmachine.rb:2:in `<top (required)>'
        from C:/tools/ruby24/lib/ruby/gems/2.4.0/gems/eventmachine-1.2.5-x64-mingw32/lib/eventmachine.rb:8:in `require'
        ...
```

#### Solution

From the Ruby command prompt,

```
gem uninstall eventmachine
gem install eventmachine --platform ruby
```

#### Reference

[Does the plugin works for higher version of Jekyll?](https://github.com/RobertDeRose/jekyll-livereload/issues/18)

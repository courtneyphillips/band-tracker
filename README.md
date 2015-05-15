#Keeping Tabs
### _a tool to track bands and concert venues_
---

## Synopsis

Keeping Tabs built by [Courtney Phillips](https://github.com/courtneymaepdx) as part of the Spring 2015 Ruby course curriculum at [Epicodus](https://www.epicodus.com/). Keeping Tabs is a basic Ruby and ActiveRecord application that allows users to enter bands and venues alike, tracking which bands have played at which venues, and which venues have hosted which bands.

## Motivation

Keeping Tabs was crafted as an exercise and assessment in integrating many-to-many database relationships in ActiveRecord into Ruby and Sinatra web applications.

## Installation

#### Gems

Keeping Tabs uses the following gems:

-Development:
  - Sinatra
  - Sinatra-Contrib
  - Sinatra-ActiveRecord
  - Rake
  - PG

-Testing:
  - RSpec
  - Pry
  - Shoulda-Matchers
  - Capybara
  - Sholda-Callback-Matchers

To install, run `$ gem install bundle` from the command line while located in the project folder.

#### Databases

Additionally, Keeping Tabs utilizes databases via ActiveRecord. Should you clone this repository, simply do the following to establish and prepare similar databases for your own use:

1. Launch the Postgres server by running `$ postgres` in the terminal.
2. Navigate to the project folder, run `$ rake db:create`.
3. Run `$ rake db:migrate` to migrate any changes into the database.
4. Should any alterations to tables take place, run `$ rake db:test:prepare` to mirror changes in the test environment.

## Tests

Gems used for testing are listed above under 'Installation'. Both Class and Integration tests are included in the project. Before testing, run `$ rake db:test:prepare` in order to ensure the test and development environments are parallell.

## Credits

The web theme is 'Carousel Layout' for Bootstrap 3, courtesy of [Bootply](http://www.bootply.com/62603), crafted by [Katie Jones](http://www.bootply.com/users/katie).

## Contribute

  - Issue Tracker: https://github.com/courtneymaepdx/band-tracker/issues
  - Source Code: https://github.com/courtneymaepdx/band-tracker
  - Pull Requests: https://github.com/courtneymaepdx/band-tracker/pulls

## Contact

Questions, grievances and general hellos can be directed to Courtney at <courtney.mae.phillips@gmail.com>.

## License

The MIT License (MIT)

Copyright (c) 2015 Courtney Phillips

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

---

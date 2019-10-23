# Harry Potter Trivia

Harry Potter Trivia is a small quiz game based on the Harry Potter series.

![](hp-app-gif.gif)

## Prerequisites

Make sure you have installed:
  * Ruby, version 2.2.2 or newer
  * Sqlite3
  * Rails

You can check in the terminal:

```bash
ruby -v
rails -v
sqlite3 -version
```

This should output some information on the installed versions.
If not, you can refer to the [Ruby](https://www.ruby-lang.org/en/documentation/installation/), [SQLite](https://www.sqlite.org/index.html) and [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html) documentation.

## Getting Started

Fork and clone this repository.

## Installation

### Backend

On a terminal window, move into the backend directory of this project. Use the gem manager [bundler](https://bundler.io/v2.0/guides/rails.html) to install all dependencies. Create, migrate and seed the database. Start the Rails server. To do all this, run these commands, one at the time.

```bash
cd hp-app-backend
bundle install
rails db:create
rails db:migrate
rails db:seed
rails start
```
On another terminal tab, move into the frontend folder and open index.html.

```bash
cd ../hp-app-frontend
open index.html
```

### All good to go! And solemnly swear that you're up to no good.

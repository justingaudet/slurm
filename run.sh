#!/usr/bin/env bash
mysql.server start
rake db:drop:all
rake db:create:all
rake db:migrate
rake db:seed

bin/rails server -b 0.0.0.0 -p 3000 -e development

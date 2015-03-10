Joynus Staffing
================================
For Editing
---------------
If you would like to change colors:
[Go Here](https://github.com/joynus/joynusstaffing/blob/master/app/assets/stylesheets/modules/_variables.scss)

If you would like to change the English text:
[Go Here](https://github.com/joynus/joynusstaffing/blob/master/config/locales/en.yml)

If you would like to change the Korean text:
[Go Here](https://github.com/joynus/joynusstaffing/blob/master/config/locales/kr.yml)

If you would like to change the Spanish text:
[Go Here](https://github.com/joynus/joynusstaffing/blob/master/config/locales/es.yml)

If you would like to change analytics:
[Go Here](https://github.com/joynus/joynusstaffing/blob/master/app/views/layouts/_google.html.erb)

For the Developers
---------------

It's a Rails 4.1.8 app.

Make sure you're running Ruby 2.1.5 (there's a .ruby-version file that should be
read by rvm or rbenv) and then:

    bundle
    bundle exec rake db:create db:migrate
    bundle exec rails server

Open on http://localhost:3000

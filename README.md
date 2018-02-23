# action-cable-reconnect
rails example app for action cable reconnection pr


Plan:

* Have an example application with action cable clients and a redis connection.
* Have an event emitter source.
* Restart redis container to lose connection.
* Point rails gem to local rails gem and figure out a solution.
* Extract DHH comment library https://github.com/rails/rails/blob/master/activejob/lib/active_job/exceptions.rb#L116

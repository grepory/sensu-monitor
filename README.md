# Sensu-monitor

Sensu-monitor is a base Thor application that serves as a method of encapsulating
domain-specific logic for Sensu. It serves as a bridge between Sensu and any
systems or services that are being monitored.

## Installation

Add this line to your application's Gemfile:

    gem 'sensu-monitor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sensu-monitor

## Usage

Implement one or more of the SensuMonitor::Inquisitor or SensuMonitor::Collector
classes and then run them using (respectively):

sensu-monitor check
sensu-monitor collect

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Testing

The Rakefile comes with several convenience tasks for running tests as well. By rake task:

  + `spec`: Runs all rspec tests in the spec directory.
  + `yard`: Generates yard documentation.
  + `reek_lib`: Runs reek on the lib directory only.
  + `rubocop`: Runs rubocop.
  + `run_guards`: Runs all guards.

`run_guards` is the one you're most likely to want to run, since it runs all the other test-related tasks.

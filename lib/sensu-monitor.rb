require 'tessen'

require 'sensu-monitor/version'
require 'sensu-monitor/inquisitor'
require 'sensu-monitor/collector'

# Thor app encapsulate of domain-specific logic for Sensu.
module SensuMonitor
  # Callback invoked before the CLI loads all its command modules.
  def self.before_command_load
  end

  # Callback invoked after the CLI loads all its command modules.
  def self.after_command_load
  end
end

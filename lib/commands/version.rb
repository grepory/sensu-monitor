# print the version
class SensuMonitorCLI < Thor
  desc 'version', 'show sensu-monitor version'
  def version
    puts "sensu-monitor #{SensuMonitor::VERSION}"
  end
end

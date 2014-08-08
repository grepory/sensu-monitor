# Run a Sensu Check
class SensuMonitorCLI < Thor
  desc 'check', 'check the status of a service'
  def check
    @inquisitor = SensuMonitor::Inquisitor.new
    @inquisitor.run
  end
end

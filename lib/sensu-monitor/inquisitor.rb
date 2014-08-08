# Implement this class to setup the check
class SensuMonitor::Inquisitor < Tessen::Inquisitor
  # @see Tessen::Inquisitor.description
  def description
    'Example Check'
  end

  # @see Tessen::Inquisitor.run
  def run
    ok('Everything okay here, boss.')
  end
end

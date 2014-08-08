# Implement this class to setup the metrics collector
class SensuMonitor::Collector < Tessen::Collector
  def run
    add_metric(Tessen::Metric.new('metric', 0))
    output
  end
end

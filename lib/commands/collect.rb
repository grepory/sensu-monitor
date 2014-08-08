# Run a sensu metrics collector
class SensuMonitorCLI < Thor
  desc 'collect', 'collect metrics'
  method_option :format,
                default: 'json',
                aliases: '-f'
  def collect
    formatter_class = get_formatter_class(options[:format].intern)
    @collector = SensuMonitor::Collector.new(formatter_class)
    @collector.run
  end

  private

  def get_formatter_class(format_type)
    {
      json: Tessen::Metrics::Formatter::JSON
      # XXX: Once implemented, uncomment
      # graphite: Tessen::Metrics::Formatter::Graphite,
      # opentsdb: Tessen::Metrics::Formatter::OpenTSDB
    }[format_type]
  end
end

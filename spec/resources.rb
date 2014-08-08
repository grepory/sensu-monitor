def resource(filename)
  File.expand_path("../resources/#{filename}", __FILE__)
end

module SensuMonitor::Test
  # Test resources
  module Resources
  end
end

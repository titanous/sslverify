module SSLVerify
  module Platform

    class Base
      class << self
        attr_reader :platforms

        def inherited(platform)
          @platforms ||= []
          @platforms << platform
        end
      end
    end

    def self.get_certs
      Base.platforms.each { |platform| return platform.get_certs if platform.current_platform? }
    end

  end
end

require 'sslverify/platform/darwin'

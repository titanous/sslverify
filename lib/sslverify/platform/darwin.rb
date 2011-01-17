module SSLVerify
  module Platform
    class Darwin < Base

      def self.current_platform?
        RUBY_PLATFORM =~ /darwin/
      end

      def self.get_certs
        version = `sw_vers`.match(/(\d{2}\.\d{1})/)[0]
        case version
        when '10.6'
          `security export -k /System/Library/Keychains/SystemCACertificates.keychain > #{CA_FILE}`
          `security export -k /System/Library/Keychains/SystemRootCertificates.keychain >> #{CA_FILE}`
        end
      end

    end
  end
end

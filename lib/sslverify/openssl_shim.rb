require 'openssl'

module OpenSSL
  module SSL
    class SSLContext

      def initialize_with_sslverify(*args)
        initialize_without_sslverify(*args)
        @ca_file = SSLVerify::CA_FILE
        @verify_mode = OpenSSL::SSL::VERIFY_PEER
      end

      alias_method :initialize_without_sslverify, :initialize
      alias_method :initialize, :initialize_with_sslverify

    end
  end
end

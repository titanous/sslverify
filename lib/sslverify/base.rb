require 'sslverify/version'
require 'sslverify/platform'

module SSLVerify
  CA_FILE = File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'certs', 'ca_file.pem'))
end

# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CfCli < Formula
    desc "The official command line client for Cloud Foundry"
    homepage "https://docs.cloudfoundry.org/cf-cli"
    url "https://github.com/wanddynosios/cli/releases/download/v8.3.0/cf-cli_osx_arm"
    sha256 "6e36830b91153a0ddb77fb61ed0dba891c05247f6fa4b7d4a7de672de0d2e6ae"
    license "Apache-2.0"
  
    # depends_on "cmake" => :build
  
    depends_on :arch => :arm64
  
    def install
      bin.install 'cf-cli_osx_arm'
      bin.install_symlink 'cf-cli_osx_arm' => 'cf'
    end
  
    test do
      system "#{bin}/cf"
    end
  end
  

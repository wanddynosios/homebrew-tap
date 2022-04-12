# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CfCli < Formula
   desc "The official command line client for Cloud Foundry"
   homepage "https://docs.cloudfoundry.org/cf-cli"
   url "https://github.com/cloudfoundry/cli/releases/download/v8.3.0/cf-cli_osx_arm"
   sha256 "212c50401df758e7b0ce55d762e19c8cea51bb1fb5c28e1eeb8f3f114afdfff0"
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
  

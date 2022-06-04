# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CfCli < Formula
   desc "The official command line client for Cloud Foundry"
   homepage "https://docs.cloudfoundry.org/cf-cli"
   url "https://packages.cloudfoundry.org/homebrew?arch=macosarm&version=8.4.0"
   sha256 "156261838e3e65d52b5d9eea3f2c53113a6bab05349494cd8f0f7d6e06398e29"
   license "Apache-2.0"


    # depends_on "cmake" => :build

    depends_on :arch => :arm64

    def install
      bin.install 'cf8'
      bin.install_symlink 'cf8' => 'cf'
      system "echo -n '\n
\tThis Tap is now deprecated!\n
\tPlease use the official tap:\n
\tbrew uninstall wanddynosios/tap/cf-cli\n
\tbrew install cloudfoundry/tap/cf-cli@8\n'
"
     end

    test do
      system "#{bin}/cf"
    end
  end

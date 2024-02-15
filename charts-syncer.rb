# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class ChartsSyncer < Formula
    desc "Tool for synchronizing Helm Chart repositories."
    homepage "https://bitnami.com"
    url "https://github.com/bitnami/charts-syncer/releases/download/v0.20.3/charts-syncer_0.20.3_darwin_arm64.tar.gz"
    sha256 "8c6f45ed98eac0eb6242ce02d8cec74c690f953e0c1e3d23a564b740438322d3"
    license "Apache-2.0"
  
    # depends_on "cmake" => :build
  
    depends_on :arch => :arm64
  
    def install
      bin.install 'charts-syncer'
    end
  
    test do
      system "#{bin}/charts-syncer"
    end
  end
  
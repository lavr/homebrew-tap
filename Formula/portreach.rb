class Portreach < Formula
  desc "Distributed network reachability checker (multi-point host:port probe)"
  homepage "https://github.com/lavr/portreach"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.2.0/portreach-darwin-arm64.tar.gz"
      sha256 "7ae2dcd0c634c30951d329a65975eed52c3ec49c78273145f7051a4df2eff287"
    else
      url "https://github.com/lavr/portreach/releases/download/0.2.0/portreach-darwin-amd64.tar.gz"
      sha256 "583fdb447d360a0d0c69f491dea1c7f98ae908ec45c3bbacf22cb1f2a821cdc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.2.0/portreach-linux-arm64.tar.gz"
      sha256 "26173c9253c97e06cc4844620366f951fc776ad3a6b5e85b7fb98583e70a037d"
    else
      url "https://github.com/lavr/portreach/releases/download/0.2.0/portreach-linux-amd64.tar.gz"
      sha256 "71998e117f8b9490cb16e54781ea0a9ce876c5e2b01e63a8463ebb330f57193d"
    end
  end

  def install
    bin.install "portreach"
  end

  test do
    assert_match "portreach", shell_output("#{bin}/portreach --help 2>&1", 0)
  end
end

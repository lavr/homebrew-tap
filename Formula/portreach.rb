class Portreach < Formula
  desc "Distributed network reachability checker (multi-point host:port probe)"
  homepage "https://github.com/lavr/portreach"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.1.0/portreach-darwin-arm64.tar.gz"
      sha256 "0e99b7e83166c37083506ff0e1a8ae9a7bcaa9aca1b80dd59ce8ca0d324aeedc"
    else
      url "https://github.com/lavr/portreach/releases/download/0.1.0/portreach-darwin-amd64.tar.gz"
      sha256 "0e0d1b0fb63f77647e036160e2a422d478433758d5a0bfac036d00c82e4cdaf6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.1.0/portreach-linux-arm64.tar.gz"
      sha256 "b67a4cf4bbaa24f38b71fc9d77f194ba736e23ed29c993004ee91a4971a67867"
    else
      url "https://github.com/lavr/portreach/releases/download/0.1.0/portreach-linux-amd64.tar.gz"
      sha256 "9407a540b66f1f1c21ef8a222690e319dc6493c280b5e5f2de9694abe3368dc1"
    end
  end

  def install
    bin.install "portreach"
  end

  test do
    assert_match "portreach", shell_output("#{bin}/portreach --help 2>&1", 0)
  end
end

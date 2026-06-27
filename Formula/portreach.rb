class Portreach < Formula
  desc "Distributed network reachability checker (multi-point host:port probe)"
  homepage "https://github.com/lavr/portreach"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.5.0/portreach-darwin-arm64.tar.gz"
      sha256 "5bc3fc427c6526f8a821c082242829fb10c922e96999efde65d204d814e0a3cc"
    else
      url "https://github.com/lavr/portreach/releases/download/0.5.0/portreach-darwin-amd64.tar.gz"
      sha256 "0d495b657b4ceeeb05c73386b9fb098fd0af19fcf1522eaa8027102c6f5710c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.5.0/portreach-linux-arm64.tar.gz"
      sha256 "549f9deef98d44c2c7b438729726297fffb358cff107ded1021ce45a255f87b0"
    else
      url "https://github.com/lavr/portreach/releases/download/0.5.0/portreach-linux-amd64.tar.gz"
      sha256 "41d12357db2f8038ba22aab24b59cbc5112de220793074a4951f272d3c3d3a81"
    end
  end

  def install
    bin.install "portreach"
  end

  test do
    assert_match "portreach", shell_output("#{bin}/portreach --help 2>&1", 0)
  end
end

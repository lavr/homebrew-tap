class Portreach < Formula
  desc "Distributed network reachability checker (multi-point host:port probe)"
  homepage "https://github.com/lavr/portreach"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.3.0/portreach-darwin-arm64.tar.gz"
      sha256 "854efc1e8857c8bad748eb38011527eecd6eae20c80108da563a37af2fcd6857"
    else
      url "https://github.com/lavr/portreach/releases/download/0.3.0/portreach-darwin-amd64.tar.gz"
      sha256 "6b0946e158e7a6ae689807e55805dcdd15ba5b40ba4389118c9d78737beed354"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.3.0/portreach-linux-arm64.tar.gz"
      sha256 "0845ccfffac7125297d6625b946117e5a9279ad39df5bbb6502b60525802e3f9"
    else
      url "https://github.com/lavr/portreach/releases/download/0.3.0/portreach-linux-amd64.tar.gz"
      sha256 "3b9cb904736c653425f25f4e4984790d1578a5b53b8082da38a4400bd44a079e"
    end
  end

  def install
    bin.install "portreach"
  end

  test do
    assert_match "portreach", shell_output("#{bin}/portreach --help 2>&1", 0)
  end
end

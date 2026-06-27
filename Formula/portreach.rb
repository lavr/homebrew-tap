class Portreach < Formula
  desc "Distributed network reachability checker (multi-point host:port probe)"
  homepage "https://github.com/lavr/portreach"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.5.1/portreach-darwin-arm64.tar.gz"
      sha256 "3c06bdf6a755b10ba055e856a528a20a43f4e0df92d7914cc0b0cfcbcd8a607c"
    else
      url "https://github.com/lavr/portreach/releases/download/0.5.1/portreach-darwin-amd64.tar.gz"
      sha256 "fecf8d2d8379cc162c484eee6d26704c307ab730840e48cd8216baced9d4732c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.5.1/portreach-linux-arm64.tar.gz"
      sha256 "2ea67e5ffd44049a4f097a45d3d2ab6e10f7854eecfe81145146767b031ae293"
    else
      url "https://github.com/lavr/portreach/releases/download/0.5.1/portreach-linux-amd64.tar.gz"
      sha256 "6e59069211448638e5c0b1396fcbbe4083ff5b1254351769f2643d554a7ef97d"
    end
  end

  def install
    bin.install "portreach"
  end

  test do
    assert_match "portreach", shell_output("#{bin}/portreach --help 2>&1", 0)
  end
end

class Portreach < Formula
  desc "Distributed network reachability checker (multi-point host:port probe)"
  homepage "https://github.com/lavr/portreach"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.4.0/portreach-darwin-arm64.tar.gz"
      sha256 "8d8feec562595172f475020bf3020ac8895ed7556edcf70f92d6fcc801c48806"
    else
      url "https://github.com/lavr/portreach/releases/download/0.4.0/portreach-darwin-amd64.tar.gz"
      sha256 "5ef6b432160a7fd3e4b70ec004fb123be2d0574b392e1a7592848aa3bc624733"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.4.0/portreach-linux-arm64.tar.gz"
      sha256 "f2e39baf68a6301db02bc50189a7bf2cbdf9b68ce66262ea4f9b8d6c1782f7e8"
    else
      url "https://github.com/lavr/portreach/releases/download/0.4.0/portreach-linux-amd64.tar.gz"
      sha256 "0bfc108f4d749818c7374c151581cd073b479be53299c7bd73962e2840af6460"
    end
  end

  def install
    bin.install "portreach"
  end

  test do
    assert_match "portreach", shell_output("#{bin}/portreach --help 2>&1", 0)
  end
end

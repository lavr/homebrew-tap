class Portreach < Formula
  desc "Distributed network reachability checker (multi-point host:port probe)"
  homepage "https://github.com/lavr/portreach"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.2.1/portreach-darwin-arm64.tar.gz"
      sha256 "13d650d97f3e7fa9a142695e346de77a3af28977e7106766b3f5c5a19ce3b4f8"
    else
      url "https://github.com/lavr/portreach/releases/download/0.2.1/portreach-darwin-amd64.tar.gz"
      sha256 "2c5c6da0152ca78843f987801cbbb8dd4efce5147cf39f2f010cd5d758761b54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/portreach/releases/download/0.2.1/portreach-linux-arm64.tar.gz"
      sha256 "4b8f21188a440a4951d7b8085368c8500d81d67a103f7bfdad890e79472de134"
    else
      url "https://github.com/lavr/portreach/releases/download/0.2.1/portreach-linux-amd64.tar.gz"
      sha256 "82be0c1b34d673f7ef1f4956a62bbcc8329a4e908c5efbc437db5a5e7da5a0c0"
    end
  end

  def install
    bin.install "portreach"
  end

  test do
    assert_match "portreach", shell_output("#{bin}/portreach --help 2>&1", 0)
  end
end

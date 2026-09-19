class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.36.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.36.0/express-botx-darwin-arm64.tar.gz"
      sha256 "c26c08105cc30c2ffdce9618e1d281d5cd9532f3c9db6220e27ae763a7597e6f"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.36.0/express-botx-darwin-amd64.tar.gz"
      sha256 "703aff27b963e02b31607796a6a6ea0cf30f908bbaf881f699ecac79e25e44b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.36.0/express-botx-linux-arm64.tar.gz"
      sha256 "bbf862c94fb149b6da1f162d69f6a354c34f5740848b341499bddb0db02fba54"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.36.0/express-botx-linux-amd64.tar.gz"
      sha256 "c0863acc606ed6ed2bf59bd0786120934edda2738933d93e0232acee89f4ca8d"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

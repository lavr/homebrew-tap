class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.29.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.29.1/express-botx-darwin-arm64.tar.gz"
      sha256 "360118e3040bc98830a47351321b0ba9ced5de0fedc2ff954caf6b75ab122179"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.29.1/express-botx-darwin-amd64.tar.gz"
      sha256 "d06570b80edf46dcc1e991c379390e37852895b5c1add2117494c3aafff9c50c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.29.1/express-botx-linux-arm64.tar.gz"
      sha256 "391e34694fbb76d9bc1aa4acca1b50d102f2afdcf20fb1f3a6c22b94ec107aaf"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.29.1/express-botx-linux-amd64.tar.gz"
      sha256 "4bdf7e81ae1f072f2da6ab7e0b77d00b4eb528094732b0df35814e97cc5ccdc5"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.14.0/express-botx-darwin-arm64.tar.gz"
      sha256 "78591135f48df90599ccfc17a52b28c031b154d0e6f2de1c826ef778b4770bd8"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.14.0/express-botx-darwin-amd64.tar.gz"
      sha256 "6b16fb2f81a9afed73d54c88adb18dee69cac091dc540163cd37945e371509e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.14.0/express-botx-linux-arm64.tar.gz"
      sha256 "935a76a1f3973a6e900908ea498f77833b3a7cfa527dc6d5675a744762162628"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.14.0/express-botx-linux-amd64.tar.gz"
      sha256 "102c1b0f09f510c533073880a21138d1f48271a9c6ccaf736adaf9285d80855a"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

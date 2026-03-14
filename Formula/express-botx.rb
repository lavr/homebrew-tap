class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.21.0/express-botx-darwin-arm64.tar.gz"
      sha256 "afcb5b9559667d9b0ae267f616ca3b4117594ebc3f63a2d15d2c6682c73881b5"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.21.0/express-botx-darwin-amd64.tar.gz"
      sha256 "c8647c0cf8cae1299306fbd9e612dce1a16d15c240a944f59bb08389f3f617f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.21.0/express-botx-linux-arm64.tar.gz"
      sha256 "f29851cf34ec5511ef5764d1bbaf1f8b8d0687982a2a7f809bc56b41aad23c01"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.21.0/express-botx-linux-amd64.tar.gz"
      sha256 "f4b2024fe81d238cb3ca18d4a46c36ee92a368e1e6e7607045d522110acd6ec8"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

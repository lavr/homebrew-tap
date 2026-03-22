class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.31.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.31.1/express-botx-darwin-arm64.tar.gz"
      sha256 "c9d8afc2dab0f29c6f76c58120061d661ba82c51f2b71da891cf60a90852a18d"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.31.1/express-botx-darwin-amd64.tar.gz"
      sha256 "e1924dc7f022c9f0b47f7f4ce5ac26584ed6dadbe49e81da0d9ed6be387a2197"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.31.1/express-botx-linux-arm64.tar.gz"
      sha256 "e741ae61632544bc58239565e00216bf23ebb111011fbaf41ea40dba0fed9e52"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.31.1/express-botx-linux-amd64.tar.gz"
      sha256 "5d1144c2ae0d83a20e90f8496ef50e063461bde4be67f030987c316eddaf7dbb"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

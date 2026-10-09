class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.42.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.42.0/express-botx-darwin-arm64.tar.gz"
      sha256 "bc6a8308bd7d5372b51609e5ac4c1eb4e9cd714b9f3a4312c40e9e71e7ed3ac2"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.42.0/express-botx-darwin-amd64.tar.gz"
      sha256 "bac51521eef409e794545f7582065516555f7f64988346fe04fb414dac78dc26"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.42.0/express-botx-linux-arm64.tar.gz"
      sha256 "ac4c4494a63b504ee9e97950e3c4d0cb96b45e582fc6b4986c19d8031f8b8c14"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.42.0/express-botx-linux-amd64.tar.gz"
      sha256 "1df1d849cbf8a41c460e0d957a7669017347ffbfab72b098de2acf926912a1cc"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

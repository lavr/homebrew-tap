class ExpressBot < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-bot"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/0.6.0/express-bot-darwin-arm64.tar.gz"
      sha256 "bd71dabc689c7de485c84357baec86963773bdc502ea1d895f1a2dd6bb4c1de8"
    else
      url "https://github.com/lavr/express-bot/releases/download/0.6.0/express-bot-darwin-amd64.tar.gz"
      sha256 "2632671581da35346fb609321eb18c44cc1ae38db25d8f465aa343324d7f956e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/0.6.0/express-bot-linux-arm64.tar.gz"
      sha256 "4908de9ea5a566c3f1e2c8281102045d8f91d52124b67f5122fb147f0cdc17fc"
    else
      url "https://github.com/lavr/express-bot/releases/download/0.6.0/express-bot-linux-amd64.tar.gz"
      sha256 "f406bcb5a562dc3454fb598959c5e933cba78623a0b8ada6b65fdb9cbde95fae"
    end
  end

  def install
    bin.install "express-bot"
  end

  test do
    assert_match "express-bot", shell_output("#{bin}/express-bot --help 2>&1", 1)
  end
end

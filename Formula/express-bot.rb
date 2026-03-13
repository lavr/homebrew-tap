class ExpressBot < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-bot"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/v0.3.0/express-bot-darwin-arm64.tar.gz"
      sha256 "b4530f75d679301ff97027e4c28d9fb45e983bafd0aa68014575a4c2ed98d446"
    else
      url "https://github.com/lavr/express-bot/releases/download/v0.3.0/express-bot-darwin-amd64.tar.gz"
      sha256 "b6961270882cfb26f2fdcf61597d0454fd3d00d666f456f427fc50e58d31887f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/v0.3.0/express-bot-linux-arm64.tar.gz"
      sha256 "01fc7a410f362125c8be8e24b6ffa1d9f7cfb4853c41372c1be821f436c3766d"
    else
      url "https://github.com/lavr/express-bot/releases/download/v0.3.0/express-bot-linux-amd64.tar.gz"
      sha256 "4782569ffc90275518b9f02bab98d311f092aa9512c3cdc9827eb88ccb2d593b"
    end
  end

  def install
    bin.install "express-bot"
  end

  test do
    assert_match "express-bot", shell_output("#{bin}/express-bot --help 2>&1", 1)
  end
end

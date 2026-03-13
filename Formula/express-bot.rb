class ExpressBot < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-bot"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/v0.2.1/express-bot-darwin-arm64.tar.gz"
      sha256 "2a3ae8bde4d557ab1423548a780c67559b2efc699e85aeb212e40a3dcbd75e79"
    else
      url "https://github.com/lavr/express-bot/releases/download/v0.2.1/express-bot-darwin-amd64.tar.gz"
      sha256 "439cf09b6c2c172b56951675ea2cbc9a6905730e42a528467a7c4df639319d41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/v0.2.1/express-bot-linux-arm64.tar.gz"
      sha256 "d844c04b5751aa95e3df011d2172166fd4c2ab62daf86e68e207ce76f9eb1781"
    else
      url "https://github.com/lavr/express-bot/releases/download/v0.2.1/express-bot-linux-amd64.tar.gz"
      sha256 "3ef11cf73106fd33324164aafeba2abd7c36f2e82b6f7662e10da5fa6da7bb34"
    end
  end

  def install
    bin.install "express-bot"
  end

  test do
    assert_match "express-bot", shell_output("#{bin}/express-bot --help 2>&1", 1)
  end
end

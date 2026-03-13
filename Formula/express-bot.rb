class ExpressBot < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-bot"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/0.7.0/express-bot-darwin-arm64.tar.gz"
      sha256 "39bacce1e55834273e4a9a213d9868d3631d4a1eb1fa82270d7adad3711424e7"
    else
      url "https://github.com/lavr/express-bot/releases/download/0.7.0/express-bot-darwin-amd64.tar.gz"
      sha256 "e23cba1ed543e3defaf573597c5fe0318df67c6b32c5d8a66aff4dbca6fe9e42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/0.7.0/express-bot-linux-arm64.tar.gz"
      sha256 "3daf6351f95906e20bafdd568743272dce2163bbb5935deb77fe5021c05f2a79"
    else
      url "https://github.com/lavr/express-bot/releases/download/0.7.0/express-bot-linux-amd64.tar.gz"
      sha256 "e353eaf614453f75b3e569a62542b5da736e3d549acf96c074a1bead0ea871ec"
    end
  end

  def install
    bin.install "express-bot"
  end

  test do
    assert_match "express-bot", shell_output("#{bin}/express-bot --help 2>&1", 1)
  end
end

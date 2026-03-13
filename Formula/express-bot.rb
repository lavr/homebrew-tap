class ExpressBot < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-bot"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/0.4.0/express-bot-darwin-arm64.tar.gz"
      sha256 "5761c0d2575fd306b5cf4515f5da3d86de0811de9a517a41f3a81d8c845a3537"
    else
      url "https://github.com/lavr/express-bot/releases/download/0.4.0/express-bot-darwin-amd64.tar.gz"
      sha256 "43e22be7486c971f53000fb3dffbbea97a6646475b61a047d1a3c41d5d367ab0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/0.4.0/express-bot-linux-arm64.tar.gz"
      sha256 "87c9e58b6ff86b3849e909e5ab751cdd66e6b9975a468002f0d0507eb33ebf7e"
    else
      url "https://github.com/lavr/express-bot/releases/download/0.4.0/express-bot-linux-amd64.tar.gz"
      sha256 "c4823da83697e59a81221801c734e2df9659b02166f8947a7926e12c4c0f9e86"
    end
  end

  def install
    bin.install "express-bot"
  end

  test do
    assert_match "express-bot", shell_output("#{bin}/express-bot --help 2>&1", 1)
  end
end

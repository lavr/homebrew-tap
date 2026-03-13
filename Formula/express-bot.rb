class ExpressBot < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-bot"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/v0.1.1/express-bot-darwin-arm64.tar.gz"
      sha256 "37b2ff05885ef3af73f5c7b0e1bc8788d244e0de14d37253dec12400e1f90fed"
    else
      url "https://github.com/lavr/express-bot/releases/download/v0.1.1/express-bot-darwin-amd64.tar.gz"
      sha256 "e73c5e50912f9e1168e65c7a98d101a7aa0ec8ce4c413078f1f62afcdc1ea2d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/v0.1.1/express-bot-linux-arm64.tar.gz"
      sha256 "636f6ffa97b9cd9d4f13c66a4217489eb28a74995cd7a15e89d9cac4f07cf8e6"
    else
      url "https://github.com/lavr/express-bot/releases/download/v0.1.1/express-bot-linux-amd64.tar.gz"
      sha256 "a145a9ee295ae37afe53d2a8bfd6a69bfa6caf9906bb635c2a545a6c236ed9b2"
    end
  end

  def install
    bin.install "express-bot"
  end

  test do
    assert_match "express-bot", shell_output("#{bin}/express-bot --help 2>&1", 1)
  end
end

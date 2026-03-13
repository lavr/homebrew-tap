class ExpressBot < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-bot"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/0.5.0/express-bot-darwin-arm64.tar.gz"
      sha256 "852e4acbdc5b8849eab369d9f6e13e3c3ab946218607825e27351c4ba4ca8e40"
    else
      url "https://github.com/lavr/express-bot/releases/download/0.5.0/express-bot-darwin-amd64.tar.gz"
      sha256 "44339a1638a431f517023e26779b5f3bc67e9d9f0440ebff7df3eafce735ddce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/0.5.0/express-bot-linux-arm64.tar.gz"
      sha256 "753aa5aaa1b3748c51c6b26abada6c7732ea2ac523bc538b6954c76aa2b2d04b"
    else
      url "https://github.com/lavr/express-bot/releases/download/0.5.0/express-bot-linux-amd64.tar.gz"
      sha256 "dedd94dc197f642d23d7d013138c3535c4e3956d406e2fe6c5312c1a8d9a681e"
    end
  end

  def install
    bin.install "express-bot"
  end

  test do
    assert_match "express-bot", shell_output("#{bin}/express-bot --help 2>&1", 1)
  end
end

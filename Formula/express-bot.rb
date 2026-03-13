class ExpressBot < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-bot"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/v0.2.0/express-bot-darwin-arm64.tar.gz"
      sha256 "b5e8bdf9c4858e286db7398e4b28b9f6e401ea70eb836b84bce076f0fcecf00a"
    else
      url "https://github.com/lavr/express-bot/releases/download/v0.2.0/express-bot-darwin-amd64.tar.gz"
      sha256 "2c768da34d49a2f8366ed4e247676fbbca47f48b8014325fada81483476852bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-bot/releases/download/v0.2.0/express-bot-linux-arm64.tar.gz"
      sha256 "bc65d3da58ce1a46ddbe7e4a3981372fbeae7894c0f1f7158ef68fc57a1b36bc"
    else
      url "https://github.com/lavr/express-bot/releases/download/v0.2.0/express-bot-linux-amd64.tar.gz"
      sha256 "b2dedc1bf690371c1aea890be8273b2a1535c982eb3244f77a1df9eb12361042"
    end
  end

  def install
    bin.install "express-bot"
  end

  test do
    assert_match "express-bot", shell_output("#{bin}/express-bot --help 2>&1", 1)
  end
end

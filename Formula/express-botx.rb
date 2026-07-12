class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.34.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.34.0/express-botx-darwin-arm64.tar.gz"
      sha256 "93a2fcbde309d47efef8ac6e91de1e774ecbb50e7f887be4ea8a36bb81afcb83"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.34.0/express-botx-darwin-amd64.tar.gz"
      sha256 "fda696e3eb055b823f358234ebc7bded0b76dfb95924f278b8659d9b86d1a13e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.34.0/express-botx-linux-arm64.tar.gz"
      sha256 "b9e5fb13cf8156811f288cc3e44e4fd398c79eaee3c0d62fcd7a63b03540e724"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.34.0/express-botx-linux-amd64.tar.gz"
      sha256 "6a4abebe58a59386c79d02a409356b65b09764a022d020a4bf0dcea7c85d3095"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

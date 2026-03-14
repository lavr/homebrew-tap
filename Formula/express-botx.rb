class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.15.0/express-botx-darwin-arm64.tar.gz"
      sha256 "a68b48f08d65e5c25fa26e6114d35f61b569a8d841c83c584edc8a0d5f5d1685"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.15.0/express-botx-darwin-amd64.tar.gz"
      sha256 "a082435805099ce49df31b7945f923900d7ff878d8522e30b89f386881cbd2f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.15.0/express-botx-linux-arm64.tar.gz"
      sha256 "fe77127dbdb3767bac4a0ea4c89150a5db017710fb6d0967c0a944629a46fad1"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.15.0/express-botx-linux-amd64.tar.gz"
      sha256 "a0c45f5a93e7513fc7dbd67951bffeb9b444dac422362ded7e149ba9f60455e9"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

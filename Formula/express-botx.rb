class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.18.0/express-botx-darwin-arm64.tar.gz"
      sha256 "e35a3ab52e71ebe03518e1598d0c717246aa5e76ff259a68de665c5b005bbda1"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.18.0/express-botx-darwin-amd64.tar.gz"
      sha256 "d84a6ed6a4a95168bc9ffd1d1f8bbf4ffd8b315c00b7f9e5d55e9eee2dc18baa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.18.0/express-botx-linux-arm64.tar.gz"
      sha256 "727a6f84f40f6e805e5517f299ece5cc17f08c98d8d2999e9127e65554363a5a"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.18.0/express-botx-linux-amd64.tar.gz"
      sha256 "53a87e722671806b9b0cb299402fcfdf0338a0709543ab7cf9d37ede06acb488"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.31.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.31.2/express-botx-darwin-arm64.tar.gz"
      sha256 "254ef64ffe9f7388662ce5bbca1cafefded88132be7183fd6239eecf112cf912"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.31.2/express-botx-darwin-amd64.tar.gz"
      sha256 "82ad4d6582d1ac2e5d6bb3ab9778c37acae2ccd68e981e7932553f39485c5685"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.31.2/express-botx-linux-arm64.tar.gz"
      sha256 "08bf49f8c56a1d21c5ed5c1801223307c64562f9a05d259bf0a25b71e1548ae0"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.31.2/express-botx-linux-amd64.tar.gz"
      sha256 "9135a785470d3283b10808d853781e5fc74840be8b1d8d01507b45a9aea5386f"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

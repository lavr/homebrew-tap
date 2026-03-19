class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.29.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.29.1/express-botx-darwin-arm64.tar.gz"
      sha256 "d9b8df23e5cbc3c8236c051ff764d15a73cd605555d9796869bb866669689475"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.29.1/express-botx-darwin-amd64.tar.gz"
      sha256 "556e711f790225ce09b67c583211d84d6f47eeef755e29045d928c5c386c32f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.29.1/express-botx-linux-arm64.tar.gz"
      sha256 "812451a46a548f719f4494a50bce1c549079b8dd4cf4e290355dc75411f89681"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.29.1/express-botx-linux-amd64.tar.gz"
      sha256 "e9dd9dd65de3d85035760c96ef8e460413846f9f2904c40177b916eb42fb6d7f"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

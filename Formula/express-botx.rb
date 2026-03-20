class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.29.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.29.2/express-botx-darwin-arm64.tar.gz"
      sha256 "8fc403748e487dc19995a8745c33040ab41582cadb7f2b86a558cefbbc5abf26"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.29.2/express-botx-darwin-amd64.tar.gz"
      sha256 "800dacbe654d44288689ab8182046e8a94d0000bcaf0a97b6a67f4a3648788b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.29.2/express-botx-linux-arm64.tar.gz"
      sha256 "70286b14135bdedf1ca18f0d9f974db074a84c2dbd9eb24c82b22098e3c722f7"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.29.2/express-botx-linux-amd64.tar.gz"
      sha256 "92d7d1c46fdc4d10e19c0f5594296c089aa4d3d721d058d621b260316be6fcb4"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

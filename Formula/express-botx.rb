class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.40.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.40.1/express-botx-darwin-arm64.tar.gz"
      sha256 "1485002a3a59021ffc25c7c04bd693f144392619151ec63b0f0cbf3ee9d8956b"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.40.1/express-botx-darwin-amd64.tar.gz"
      sha256 "41f7727129e95dcf1dc2d709290dbb7f2e794840bdd068ffd869724f875e98e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.40.1/express-botx-linux-arm64.tar.gz"
      sha256 "5d5c1491e480663f5a1df5acf0a841e560d95afdb19d38d19218ca8b5350a005"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.40.1/express-botx-linux-amd64.tar.gz"
      sha256 "0c7355b1c21976d801d52ba0e3fdd496a6cde544d967f0e4f4ec8de63147cb4b"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

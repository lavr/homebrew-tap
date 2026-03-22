class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.31.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.31.0/express-botx-darwin-arm64.tar.gz"
      sha256 "61891f7369052a976c8b8cf8907e77de7ba7408606e023cf2053f0bf4c4682de"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.31.0/express-botx-darwin-amd64.tar.gz"
      sha256 "1468837c1c48a3d5817d1b886ec9a4e52939dd4217410dca0fe9817062cc9f3a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.31.0/express-botx-linux-arm64.tar.gz"
      sha256 "b94b9261995afaa64348b8b40cf8dfd64138d49ee0ea04375a0496f9abf3d9f0"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.31.0/express-botx-linux-amd64.tar.gz"
      sha256 "3fbb337b68d5fe26c59e7db70188688e23f8d416ffebe089f7c52392e0892af5"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

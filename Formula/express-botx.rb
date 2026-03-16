class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.26.0/express-botx-darwin-arm64.tar.gz"
      sha256 "cb3da91507045111ac44ec54a215288986e724b90fdee93ec248efb695482df0"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.26.0/express-botx-darwin-amd64.tar.gz"
      sha256 "e6a42822116cf340e2fad055ccb732c692648afcd79ec5b09e348e1ddf378289"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.26.0/express-botx-linux-arm64.tar.gz"
      sha256 "cb8d33ea8ec452e183bf5f44c3d074fe3ecaccf9c69a33e2214d10d8a977e8db"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.26.0/express-botx-linux-amd64.tar.gz"
      sha256 "78320bac94934be174edaa33491d228118a26a24feaac8e2e8ed11611e96e117"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

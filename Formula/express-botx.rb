class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.32.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.32.0/express-botx-darwin-arm64.tar.gz"
      sha256 "05f5e2742ad7e654fec71a4416a947f87c34c1e4754ff5b23cd5dbfb28dcd940"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.32.0/express-botx-darwin-amd64.tar.gz"
      sha256 "0a4111ea2f4bab0e1257952d29588fd008db3508417ab4a0b9e35ffb160006e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.32.0/express-botx-linux-arm64.tar.gz"
      sha256 "7c4de19c8ea72cd03aa74726befd1194205e2ddd4e2ed2a00e7f2f754e6e18b5"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.32.0/express-botx-linux-amd64.tar.gz"
      sha256 "0887d2eaf5770aad1142e537ed38eaa39964e1be9eeb62326eee9275e4c48177"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.39.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.39.0/express-botx-darwin-arm64.tar.gz"
      sha256 "cab16473aa096d0beb0aed5054cb5dcf6221972dc1c74ab9ded9f5c13693f730"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.39.0/express-botx-darwin-amd64.tar.gz"
      sha256 "710a1829f4ef2e8a8b343312aab2d96d0e05bc3203bf4a61d722dc649c1e0bd4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.39.0/express-botx-linux-arm64.tar.gz"
      sha256 "1136ae5b3e0d23974a88011c80b1f0f4e4fb3f40444186deb90263e92d989229"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.39.0/express-botx-linux-amd64.tar.gz"
      sha256 "519966c172a290c76df8d6c20ce22ea7e911260d9fec7f8796381893a1a4a292"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.28.0/express-botx-darwin-arm64.tar.gz"
      sha256 "d734373b8a438876062fb190b41350cf1d3e5d78a80b4c859eda4b7474ff10f5"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.28.0/express-botx-darwin-amd64.tar.gz"
      sha256 "aacb6bd4d7cd09e7d42e1cdee71e8766e979e08d3b7eb39ecf3f3f2fe4854d72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.28.0/express-botx-linux-arm64.tar.gz"
      sha256 "9e868c3ccb9ff848c1012ca487d65d8cbee1220af155bc24afd790e9bce0cfa5"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.28.0/express-botx-linux-amd64.tar.gz"
      sha256 "b40f8193e5accc204a2d1fee4a68bb8234ce5ba1fc47793ea7007ff2d77a0cc0"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.19.0/express-botx-darwin-arm64.tar.gz"
      sha256 "03767bd77c91777b1e2ab414dd41d36b0576c9efe66969b3e12791a786b7eb55"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.19.0/express-botx-darwin-amd64.tar.gz"
      sha256 "1af78426d830932d0aaba6336f27411f8d82a1e2ed0af63c507b571c3db4319f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.19.0/express-botx-linux-arm64.tar.gz"
      sha256 "a76b4e79d98a6fc16daa824b22abb3807a8cd38b7c9bcbd7e6c5b4d3c765bdf1"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.19.0/express-botx-linux-amd64.tar.gz"
      sha256 "ef0ef1522f4a4dcae61ee7ed08353f1e24b5538668375ac6b4c94548369fe0ca"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

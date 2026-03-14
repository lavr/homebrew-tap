class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.20.0/express-botx-darwin-arm64.tar.gz"
      sha256 "43196c5e4b0a7259eccf7ec0f29e216420af84a88993966289066b39ce6a7ae2"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.20.0/express-botx-darwin-amd64.tar.gz"
      sha256 "2f5c88cad34feb90fc390954f092542823a28d2151c6a2a8060715b9381cf77a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.20.0/express-botx-linux-arm64.tar.gz"
      sha256 "41e4e8085e12f907d5e18620d4d51edb345c6f100cb78200f92271e7bc8747da"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.20.0/express-botx-linux-amd64.tar.gz"
      sha256 "999d668128431b3713dcc4de52e739a063fc8f982fffb706e864361ebdf08443"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

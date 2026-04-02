class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.33.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.33.0/express-botx-darwin-arm64.tar.gz"
      sha256 "d59bb6d3d3e3a305a5a00fa6e2059b367d231719ed2d8b9886bcf76cbdacdf0e"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.33.0/express-botx-darwin-amd64.tar.gz"
      sha256 "e802d62acbcb28e2105850758f3eee15aaaeeccc421270f04d98d7d439d65105"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.33.0/express-botx-linux-arm64.tar.gz"
      sha256 "6851071a60a7e96ca5455a118b8289a4dfc9971378f48c53216e59249d9f1500"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.33.0/express-botx-linux-amd64.tar.gz"
      sha256 "ad6de89fd99dbf30f68da965830d6b8ec40bed0430127b8fb97cd4ae8dcfa974"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

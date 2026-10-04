class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.41.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.41.0/express-botx-darwin-arm64.tar.gz"
      sha256 "f81b2a56379fa26beaf18848074194ec708c601cd6f3830e553d8dc5fffee7fe"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.41.0/express-botx-darwin-amd64.tar.gz"
      sha256 "ff2d9d2ce56c4db3102042529faa3fcb45e670bd081671883011c20f4e1f1322"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.41.0/express-botx-linux-arm64.tar.gz"
      sha256 "4d2160be0aa181f68731b4736aa7288638e7ecf34f827d1cc0daba77b3f1d131"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.41.0/express-botx-linux-amd64.tar.gz"
      sha256 "9d4c9d16d1d3be09e28ed3a163138d9ab23a8e93580edc31b42985fe1e822864"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

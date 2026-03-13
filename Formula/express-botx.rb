class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.8.0/express-botx-darwin-arm64.tar.gz"
      sha256 "89a52418231fc5bafd7ee559f33bf1435da19e090555072f33df43ae9a3b2b91"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.8.0/express-botx-darwin-amd64.tar.gz"
      sha256 "a56eb6b04cd48aad5e00b97964d31b85217b20759b03836b5c08b5422700dea8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.8.0/express-botx-linux-arm64.tar.gz"
      sha256 "46890c844fc3b13cce2a746d96c63eb752ad4e092603da84f0da4d1c310eded4"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.8.0/express-botx-linux-amd64.tar.gz"
      sha256 "5292754da8996e92c6ec0e6220902cbdc1fcdd8ef40f3fd64371566de81644d6"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

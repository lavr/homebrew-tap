class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.44.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/v0.44.0/express-botx-darwin-arm64.tar.gz"
      sha256 "3317e56a79d6d619e875cbc27f74cf82f70c01b458301fba7c1cb8c8f27c8e6e"
    else
      url "https://github.com/lavr/express-botx/releases/download/v0.44.0/express-botx-darwin-amd64.tar.gz"
      sha256 "ee95a68a62dad2b3ccdcdedd4ba990d316e2757301330c2a872162204b5c2c36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/v0.44.0/express-botx-linux-arm64.tar.gz"
      sha256 "c761ffe240bc02b80b32c78c3c909a7ee46cc5e9461a8892a9603bded54126b3"
    else
      url "https://github.com/lavr/express-botx/releases/download/v0.44.0/express-botx-linux-amd64.tar.gz"
      sha256 "bfced92486a6d0653fae9c979924058ccc8e019454184033fdac79370c6e38d5"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

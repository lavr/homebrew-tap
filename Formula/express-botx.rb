class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.29.0/express-botx-darwin-arm64.tar.gz"
      sha256 "17cb0e78dad4f1439cb0db922c142ea2c461a75b9b4c239fc8b3b5b5c127f35d"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.29.0/express-botx-darwin-amd64.tar.gz"
      sha256 "c65dfbbad9092dc7da2ac4210bfee5bbbfe8e50aa913fee737e39887983b58f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.29.0/express-botx-linux-arm64.tar.gz"
      sha256 "015cebc22183701db10cf8649e599968640a93b11ac5367a9be81b1956b0e62a"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.29.0/express-botx-linux-amd64.tar.gz"
      sha256 "9404cabb2d9346eec24f704d896f4c1846b3eb1221c790d3d366a7734625248a"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

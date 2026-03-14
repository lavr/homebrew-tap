class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.16.0/express-botx-darwin-arm64.tar.gz"
      sha256 "a9d1cd4cdc0c3ae2540c04010108479c77b13a471cf80ccb60692a4c05eeb3f9"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.16.0/express-botx-darwin-amd64.tar.gz"
      sha256 "e9cd60bc1873637ac24390f94d20cb7d23a4dbbf890413e51845dd97cbaf868e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.16.0/express-botx-linux-arm64.tar.gz"
      sha256 "ca8d97e6cc3e3a9337e04d8836809ee54a272cab4f5a62388a0c6cd96bd93453"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.16.0/express-botx-linux-amd64.tar.gz"
      sha256 "8a97f052c21c04253cb7a447cae1de0fee27c4742148b0797bb11d0f2450f318"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

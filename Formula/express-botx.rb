class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.9.0/express-botx-darwin-arm64.tar.gz"
      sha256 "f0f3472debcad665f9b3848125d45a909297888712b1d82053cd0bc7ee11e3f8"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.9.0/express-botx-darwin-amd64.tar.gz"
      sha256 "7aab015f547c861a1acecb81b5e0dd92c63bccf86cbc39e2d86dddd43e8deb0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.9.0/express-botx-linux-arm64.tar.gz"
      sha256 "fd5a834c1cc28dd616f1c59bcc9059cdb9137e4ac496ac073cfc12fd8aa104e0"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.9.0/express-botx-linux-amd64.tar.gz"
      sha256 "865d18bd7b64907903ecd174d9d97044242cb9f21bb0f69d86c66467c250aeea"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

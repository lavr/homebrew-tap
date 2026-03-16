class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.27.0/express-botx-darwin-arm64.tar.gz"
      sha256 "f562f892047cd1cd3bdc96183a0afdbcd9bcfa3f8e9175f9a72fe3e4ea156264"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.27.0/express-botx-darwin-amd64.tar.gz"
      sha256 "37b7231ba397d7a38aa7aeddbc69a7d475b02c6bafaecb2ab0547c45d671b9ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.27.0/express-botx-linux-arm64.tar.gz"
      sha256 "4f9bf88b27b9db12fe0c82553d40f4a78da0974c60b502145c8003ccc6f92f52"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.27.0/express-botx-linux-amd64.tar.gz"
      sha256 "8d042b207edfe82ec70d87b7c87e393ee7239e5ac1ffb2c1f2a4c036cecaa601"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

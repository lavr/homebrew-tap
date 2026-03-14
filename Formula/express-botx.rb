class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.11.0/express-botx-darwin-arm64.tar.gz"
      sha256 "614b9348b49fd8654e5c3e7d5813aea35928c5f698574b99148a2916c1adbcff"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.11.0/express-botx-darwin-amd64.tar.gz"
      sha256 "0afffd6b4c2d365be7444cd7d71e42023dd323297868d589dc42200e0efd1a53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.11.0/express-botx-linux-arm64.tar.gz"
      sha256 "95a1d73389383d1a3cc4b6bd4307f72cc52f237989b6befe80a6fdf798193078"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.11.0/express-botx-linux-amd64.tar.gz"
      sha256 "a2713d39e42234494a87fc5fabe09b6d726373af637d45c99a6dde0fb1669daf"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.30.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.30.1/express-botx-darwin-arm64.tar.gz"
      sha256 "be650d49617da9a9f6201995522d709cff90defb5ebe3153ce360bcce93bf631"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.30.1/express-botx-darwin-amd64.tar.gz"
      sha256 "5a0c09e6c68ef30be2b316e17c3763c98ffaab11ff08a03e855222be2280b8bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.30.1/express-botx-linux-arm64.tar.gz"
      sha256 "08690795f714db7ccb44869ab20c3aa5a7529e756cdeffe9f5842727f42eaa3f"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.30.1/express-botx-linux-amd64.tar.gz"
      sha256 "17ab27ef92ffc10ed84d6f778f458e75c2f6e483d566f547d3cf8857a0b91e61"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.43.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.43.0/express-botx-darwin-arm64.tar.gz"
      sha256 "f7ed89dad1b8a4c0327f655674e61fcd45b1edfb7a9f6ed04563af3281d658f7"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.43.0/express-botx-darwin-amd64.tar.gz"
      sha256 "96fa3d2ab9aa8f86872c350c9d07135df37b19da98a14fad46cdfc80ab5d8676"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.43.0/express-botx-linux-arm64.tar.gz"
      sha256 "a90489cbde1bae6221eb1bee47cf6adaa8556cf290cc3b77466dddf03d5e8a1e"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.43.0/express-botx-linux-amd64.tar.gz"
      sha256 "5d4b2d1d2c58b3f43512dc23b1064a91a1fe6138d5dbe4b07d3ffcc826fccac2"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

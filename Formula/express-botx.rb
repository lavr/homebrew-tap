class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.31.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.31.4/express-botx-darwin-arm64.tar.gz"
      sha256 "f3fbf176aaa7cf1c976288d2b87c595742f31ac3cccf5e9e1957f6bea5ff4436"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.31.4/express-botx-darwin-amd64.tar.gz"
      sha256 "24ae0a6da575d91fbc0f09bff8054fd13c2fd440fb4fc356ce6f547d2b0ab99a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.31.4/express-botx-linux-arm64.tar.gz"
      sha256 "36f579a2385b6407ab78d77c0c387475c19d4cc4a0bfb4d8e9a5023b67044fa2"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.31.4/express-botx-linux-amd64.tar.gz"
      sha256 "e125d95fe81686596c15f2832591ac51c96d5737a4f9c3f7b85b6893ab58524b"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

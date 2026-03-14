class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.17.0/express-botx-darwin-arm64.tar.gz"
      sha256 "de6563c0429eb18c8cdfc4cb7e7fc06c0bc3bcd21bed169c54a711de9cabddc9"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.17.0/express-botx-darwin-amd64.tar.gz"
      sha256 "e022447f96d34ed3cc966e4d81a5531dd7acd62f8bdc565d9b8e8793e6f3ac90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.17.0/express-botx-linux-arm64.tar.gz"
      sha256 "1692dfc39429ecda06a5810df610798e03962e9efef3f9cb8b5e289a0e9428f5"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.17.0/express-botx-linux-amd64.tar.gz"
      sha256 "8b365c5143cf649a11b33d7927cf18a48c9e853cbb2642d89c9f1c5541fd0ed6"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

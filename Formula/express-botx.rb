class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.12.0/express-botx-darwin-arm64.tar.gz"
      sha256 "2052a43c7e8c5afd8bdfd05c3526934ef6b77b826e3ce4d2527659bc663daf3b"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.12.0/express-botx-darwin-amd64.tar.gz"
      sha256 "14c2e914abb048b69d343dfa3099e0fe098794fff2d7da1223ebd13d008e6f18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.12.0/express-botx-linux-arm64.tar.gz"
      sha256 "d5e138b4aa2ce04046241042e2c34788c5aeb12b5b93009009ebdbb6d04c5943"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.12.0/express-botx-linux-amd64.tar.gz"
      sha256 "12c917ff649e907f4092aec9b65f228b5852d6965415135a80b8d6a648cc6734"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

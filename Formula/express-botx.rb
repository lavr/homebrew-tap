class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.45.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/v0.45.0/express-botx-darwin-arm64.tar.gz"
      sha256 "de5abc82dcbfb1b39a3ffd156999672c0a07d472c3b54512abb0d5cd6619e6e1"
    else
      url "https://github.com/lavr/express-botx/releases/download/v0.45.0/express-botx-darwin-amd64.tar.gz"
      sha256 "380161d24e5658fbf8179ce20c748c335b45d5211414b0de18f047c955e699ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/v0.45.0/express-botx-linux-arm64.tar.gz"
      sha256 "9fa6ae04109650254444e66ddf61a5193946f5eafec06d4a2d58a8d288310f52"
    else
      url "https://github.com/lavr/express-botx/releases/download/v0.45.0/express-botx-linux-amd64.tar.gz"
      sha256 "b17c9e8a3e614b1c15411880a2390665da29410f1e035b71bb09c9ae2c801c12"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

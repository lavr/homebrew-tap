class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.10.0/express-botx-darwin-arm64.tar.gz"
      sha256 "93129e993fe520125cdf2b06858c9678f4cd0376cb66c68c14960d0442c02c7e"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.10.0/express-botx-darwin-amd64.tar.gz"
      sha256 "a9677e4f0285466681f4f2197ab6e025759438e971a2f5369b80c86c1ad091e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.10.0/express-botx-linux-arm64.tar.gz"
      sha256 "becd197c00dc08f76501c8b5c69f2ac43f1069f6987cac9b084d474dfee1baef"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.10.0/express-botx-linux-amd64.tar.gz"
      sha256 "a6c9fdc17477e16afc885c5804684e6ecd663f223e9bfc038878b3eda8049a15"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

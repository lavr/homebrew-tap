class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.35.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.35.0/express-botx-darwin-arm64.tar.gz"
      sha256 "2bb7ae78b80abafd64d59c1e35be9513d199cc876f1b1882ca597a12d7c46805"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.35.0/express-botx-darwin-amd64.tar.gz"
      sha256 "7b0b5b789e8776bcac0aa8fe6549e49f29b1e1d6e425a2addc61ac05ae0e51b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.35.0/express-botx-linux-arm64.tar.gz"
      sha256 "9ae59efd52a8c6ac095a8f30136a95d61212ebd4bf4521b7377c5029ebe7e47d"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.35.0/express-botx-linux-amd64.tar.gz"
      sha256 "b661fc59a3ae2cb0e0e3acae00413875a7f9707f3ff15924df548a526f30090b"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

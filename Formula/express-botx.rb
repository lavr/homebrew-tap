class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.40.0/express-botx-darwin-arm64.tar.gz"
      sha256 "a8a00ea411b39a28a1cf14d4abfe912535be616a30665a7f9e90d787fdaf0662"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.40.0/express-botx-darwin-amd64.tar.gz"
      sha256 "bb80c8f74304219b010b5e05a5563e34bc43a4474bec0cc2f1568b75dac49fed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.40.0/express-botx-linux-arm64.tar.gz"
      sha256 "97c9151305f3d8db6299ce8614b8490c77ad27122f09e2582dc9a75f437cf8c9"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.40.0/express-botx-linux-amd64.tar.gz"
      sha256 "955ca06bbf3adeb3b1a9211a9077465855504dfc92b6ac17a48f25e363e05ca8"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

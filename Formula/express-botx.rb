class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.23.0/express-botx-darwin-arm64.tar.gz"
      sha256 "43e4ffc176cdf274d935104fe48d3709024a7f57e09df999c3bd98382747d0cb"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.23.0/express-botx-darwin-amd64.tar.gz"
      sha256 "87ba16d96694f6fd6359c1638f13fbfdaf7f512762cb2f58ede3ab6bed053dff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.23.0/express-botx-linux-arm64.tar.gz"
      sha256 "98e27ec4a7921d795ee1855d73b673e1679b60e77610dfe25e977041cd8df278"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.23.0/express-botx-linux-amd64.tar.gz"
      sha256 "5619d37f662042f7ccdae6c3a50a24d639a50507882db258363f9065ad851c08"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

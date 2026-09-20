class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.38.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.38.0/express-botx-darwin-arm64.tar.gz"
      sha256 "d421087ecdeb7dae85afd98bb2fb0579bf73fc68afd7852a2afa9dacc72de7eb"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.38.0/express-botx-darwin-amd64.tar.gz"
      sha256 "cfa5466d371b387b9592bddfb8c42f1204d4c3e02e1c19f5061a3d8affc83bb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.38.0/express-botx-linux-arm64.tar.gz"
      sha256 "9ecee7d523fd62eb0157e3cefeac603e39a80d6c6f86aeff29ac90699f4da23f"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.38.0/express-botx-linux-amd64.tar.gz"
      sha256 "f041774e78ab0e66b7ff1a95b03684875f28494f865c35ed5e0b0bc06bf7943c"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

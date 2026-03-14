class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.10.1/express-botx-darwin-arm64.tar.gz"
      sha256 "2e395f99bac8e8cced7824de1d135293a015168c04fe335d458354d6f65e0ea1"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.10.1/express-botx-darwin-amd64.tar.gz"
      sha256 "7340ff96dfcdfc2b1ebab0a6dcba174e9ff137e21561b93317b67c819f806ac2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.10.1/express-botx-linux-arm64.tar.gz"
      sha256 "a476475df25697ae636a64782d49ccbb76ea962a05c096ee884eb89c4bb7a2dd"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.10.1/express-botx-linux-amd64.tar.gz"
      sha256 "cfc676530a92e10a317101bc190d6d2a6ed8a09a89f858ece4db01e6c5f2f960"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

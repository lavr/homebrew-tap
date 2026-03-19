class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.29.0/express-botx-darwin-arm64.tar.gz"
      sha256 "3aa8c39c662f1de6ad97c649343902bbce9ad7b810c6a739a2b1c0f9c260d294"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.29.0/express-botx-darwin-amd64.tar.gz"
      sha256 "65c0274b0226ee2003fbde0bfac81bac1d0c8a544fa82d63ab549d5e43e1ce18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.29.0/express-botx-linux-arm64.tar.gz"
      sha256 "bee95db71fd428a3a7e2877e0a10587641054370d0344fb4d9e6c6a9e78eeb9a"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.29.0/express-botx-linux-amd64.tar.gz"
      sha256 "064cf841165c6d54ab599ae860eaa6580ec7f2bd504465093f57b388e13401fe"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

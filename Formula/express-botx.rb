class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.22.0/express-botx-darwin-arm64.tar.gz"
      sha256 "7d8a02ec614d31fda71b4fc0f173c0018965bf87b4d52ff6b8af9d7382f69f13"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.22.0/express-botx-darwin-amd64.tar.gz"
      sha256 "81bb3bc8ae6dbd600db73364a2499851946b5be729ac054eac431d7aeb9e6c83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.22.0/express-botx-linux-arm64.tar.gz"
      sha256 "9b3a9d0b10ab376bfea9e3e4190b8017112ce955cb8e80600b719a7e9646b2fb"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.22.0/express-botx-linux-amd64.tar.gz"
      sha256 "45accae7efb8c87a9d356e396d361e3d4d505ffead85bd0efd37a89054caab55"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

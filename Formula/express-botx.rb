class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.13.0/express-botx-darwin-arm64.tar.gz"
      sha256 "c1a858b49b24186cb24d9e6c450441fb27ae11ebf6f0d05faf2bf2cb61444a48"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.13.0/express-botx-darwin-amd64.tar.gz"
      sha256 "c69e6fdafb071f9b143c0cf91fb1681344abd44b1fdc5202e99f60996468dd01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.13.0/express-botx-linux-arm64.tar.gz"
      sha256 "b2e81dc5046a05810530578b9a52156ebee830701de4575c862610690177ec92"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.13.0/express-botx-linux-amd64.tar.gz"
      sha256 "eb7b70a952f39d72e240c735a46307dd0f820fc200ea1d31468b0edea1bd37cc"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

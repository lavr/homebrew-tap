class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.24.0/express-botx-darwin-arm64.tar.gz"
      sha256 "675ba0025dd3485c7c318e3065b59b09f23d15d992fe9e81566e210920ca3212"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.24.0/express-botx-darwin-amd64.tar.gz"
      sha256 "7a518a7410642b65cb3a8e0ca15ff8486e2d5c2bd59ca8ffc17869264e9b10df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.24.0/express-botx-linux-arm64.tar.gz"
      sha256 "b8e8af35a268751fb80abe0def4438758f3fd35753894e23b4ae2dfbb1bff917"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.24.0/express-botx-linux-amd64.tar.gz"
      sha256 "4dc388aca1ec869eed8252696160f63e0ed9d97e32d25bd69149e955bd071db7"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

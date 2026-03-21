class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.30.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.30.0/express-botx-darwin-arm64.tar.gz"
      sha256 "b1340a2fdab0019ced1e06ad58f955988f1552bf12da874e7adbc0557421da9b"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.30.0/express-botx-darwin-amd64.tar.gz"
      sha256 "087aaa065978cb9f690f8194cb254f3c77ffbb505a44bc08212171ac5eee510c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.30.0/express-botx-linux-arm64.tar.gz"
      sha256 "5070e61183a586c37c346154f965fe159f41c9e5b49b0f89e269f58783366cfa"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.30.0/express-botx-linux-amd64.tar.gz"
      sha256 "73e94165d7207275fd6b4604d46cab7f1ca87ed3bc60865f0c3f07e62173de83"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

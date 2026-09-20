class ExpressBotx < Formula
  desc "CLI and HTTP server for sending messages to eXpress"
  homepage "https://github.com/lavr/express-botx"
  version "0.37.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.37.0/express-botx-darwin-arm64.tar.gz"
      sha256 "9643a4b63fc45017e7020785c5279ce813be4548f76de3adc672961428dec159"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.37.0/express-botx-darwin-amd64.tar.gz"
      sha256 "460163477d180dc8863535dc5173853d43986c2b9722bd1c635ca061c82dccec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/express-botx/releases/download/0.37.0/express-botx-linux-arm64.tar.gz"
      sha256 "f153678ad865a3cf3a131ced516aad98d9dde10a0ba6a39bbce8de8dff5663eb"
    else
      url "https://github.com/lavr/express-botx/releases/download/0.37.0/express-botx-linux-amd64.tar.gz"
      sha256 "98aebf3443bd2573e1dba865451fa8fabf6f619fb7836e17731381c2810383ad"
    end
  end

  def install
    bin.install "express-botx"
  end

  test do
    assert_match "express-botx", shell_output("#{bin}/express-botx --help 2>&1", 1)
  end
end

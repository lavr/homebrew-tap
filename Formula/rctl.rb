class Rctl < Formula
  desc "Run commands in client+domain context"
  homepage "https://github.com/lavr/rctl"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/rctl/releases/download/v0.1.1/rctl-darwin-arm64.tar.gz"
      sha256 "3dd1eb64772fee0983f7cd22ec15a3ca3e22db9d19ed6272542cc0cf04ba1eb4"
    else
      url "https://github.com/lavr/rctl/releases/download/v0.1.1/rctl-darwin-amd64.tar.gz"
      sha256 "c991c7eba55c423ed1ceb108f04b61ed9556f6a54a29ccd55743a65327809d68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/rctl/releases/download/v0.1.1/rctl-linux-arm64.tar.gz"
      sha256 "f08c357c3aedad140c7a9e0fb7db88dda4784bb683676580234f0845e8ac466f"
    else
      url "https://github.com/lavr/rctl/releases/download/v0.1.1/rctl-linux-amd64.tar.gz"
      sha256 "01f95ef4f6a43093964118d1fecd2dc573630aa7f2fc06db2e0d6275596766dc"
    end
  end

  def install
    bin.install "rctl"
    generate_completions_from_executable(bin/"rctl", "completion")
  end

  test do
    assert_match "rctl version", shell_output("#{bin}/rctl version")
  end
end

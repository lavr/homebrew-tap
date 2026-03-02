class Rctl < Formula
  desc "Run commands in client+domain context"
  homepage "https://github.com/lavr/rctl"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lavr/rctl/releases/download/v0.1.0/rctl-darwin-arm64.tar.gz"
      sha256 "8b28862d589508b010ed0609e9a3438a4f2e60e0481b67af7be6037cf47ef951"
    else
      url "https://github.com/lavr/rctl/releases/download/v0.1.0/rctl-darwin-amd64.tar.gz"
      sha256 "c6704a36db2e362579b822add43dad57f6a6ed3249a2eb0f208747277ed48155"
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

class Panimg < Formula
  desc "Next-generation image processing CLI"
  homepage "https://github.com/tzengyuxio/panimg"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5291f57129269ac063ceaa554cf479f37c535d18e4e119e89dd0ab6c0fe92cbd"
    end
    on_intel do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "030ada2a107399744f265123111dd87d0a75ece814b610ed3fe0c7ecc38fbc2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "299dff4cc504e18dc19c616073927fa5a2a8fd13836c3bb628a4c4a3eded1ebf"
    end
    on_intel do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0bfc660a188c4b03c88c6bdca055065cd02811fd4854dc6dbdf780e615fb0c1f"
    end
  end

  def install
    bin.install "panimg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/panimg --version")
  end
end

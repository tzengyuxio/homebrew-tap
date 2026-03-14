class Panaud < Formula
  desc "Next-generation audio processing CLI — built for humans and AI agents"
  homepage "https://github.com/tzengyuxio/panaud"
  url "https://github.com/tzengyuxio/panaud/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "cec35cfe5db42a02de66246b106e330a65ee625e07d8bce8aa25a05de5d8e2c6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "crates/panaud-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/panaud --version")
  end
end

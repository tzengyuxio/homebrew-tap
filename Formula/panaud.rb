class Panaud < Formula
  desc "Next-generation audio processing CLI — built for humans and AI agents"
  homepage "https://github.com/tzengyuxio/panaud"
  url "https://github.com/tzengyuxio/panaud/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e07218c4bf640f1cbe68c85e8c0e084a93bfb97a42e3c16b884e5a03f7d93d2e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "crates/panaud-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/panaud --version")
  end
end

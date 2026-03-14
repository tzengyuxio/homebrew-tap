class Panaud < Formula
  desc "The Swiss Army knife of audio processing — built for humans and AI agents alike"
  homepage "https://github.com/tzengyuxio/panaud"
  url "https://github.com/tzengyuxio/panaud/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "c42d55f4d776537dbf1df4711c71d18d7a3cee43e24836e962987e63d72c471a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "crates/panaud-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/panaud --version")
  end
end

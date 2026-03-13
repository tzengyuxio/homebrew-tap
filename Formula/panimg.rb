class Panimg < Formula
  desc "Next-generation image processing CLI"
  homepage "https://github.com/tzengyuxio/panimg"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "93bfaadc4d36389fd57b1d8ea075914e80fd2146f31b3ff8557b1888f3224fe7"
    end
    on_intel do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "68ae15db8dca43d4201cfa899e9a11342f2f65e4f656ea3c589ff2fe8b4ec898"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aed41fc61f9e848f0b05ad2214c1f31f1b20d3c5341dbc471eb4cafe680b899e"
    end
    on_intel do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9e6df4f7c4dda563b5b8891b2ebc0d70c9c820a374eeb1da4ab606a914733be"
    end
  end

  def install
    bin.install "panimg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/panimg --version")
  end
end

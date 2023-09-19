class Ya < Formula
  desc "Yet another command runner for folks that don't want to learn make"
  homepage "https://github.com/yhakbar/ya"
  url "https://github.com/yhakbar/ya/archive/refs/tags/0.9.0.tar.gz"
  version "0.9.0"
  sha256 "fca50b0111b1e80ef7198af2152dd92f5909d3cec50d16ec67cddc83c49354d6"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--features", "yadayada", "--bin", "ya", "--bin", "yadayada"
    bin.install "target/release/ya"
    bin.install "target/release/yadayada"
  end

  test do
    system "#{bin}/ya", "--version"
    system "#{bin}/yadayada", "--version"
  end
end

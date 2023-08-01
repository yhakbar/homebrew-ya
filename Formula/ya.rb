class Ya < Formula
  desc "A very simple automation tool for lazy folks that don't want to learn make"
  homepage "https://github.com/yhakbar/ya"
  url "https://github.com/yhakbar/ya/archive/refs/tags/0.5.0.tar.gz"
  version "0.5.0"
  sha256 "9195d70be2c937b54854f4464b69bab57bc5553a61931b32ab147959e278f4e2"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "ya"
    bin.install "target/release/ya"
  end

  test do
    system "#{bin}/ya", "--version"
  end
end

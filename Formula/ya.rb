class Ya < Formula
  desc "A very simple automation tool for lazy folks that don't want to learn make"
  homepage "https://github.com/yhakbar/ya"
  url "https://github.com/yhakbar/ya/archive/refs/tags/0.2.2.tar.gz"
  version "0.2.2"
  sha256 "08a3947e36978d8f203f1942821062a15177531ab382af61dc9e098e7aae7f41"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "ya"
    bin.install "target/release/ya"
  end

  test do
    system "#{bin}/ya", "--version"
  end
end

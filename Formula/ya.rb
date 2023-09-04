class Ya < Formula
  desc "Yet another command runner for folks that don't want to learn make"
  homepage "https://github.com/yhakbar/ya"
  url "https://github.com/yhakbar/ya/archive/refs/tags/0.8.0.tar.gz"
  version "0.8.0"
  sha256 "9be134eb22443a4475de0ee6bf07d4de7b861eabb10d7e7686f6ff8f0858ebfb"

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

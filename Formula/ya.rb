class Ya < Formula
  desc "A very simple automation tool for lazy folks that don't want to learn make"
  homepage "https://github.com/yhakbar/ya"
  url "https://github.com/yhakbar/ya/archive/refs/tags/0.4.0.tar.gz"
  version "0.4.0"
  sha256 "5962115edbecb3dca64fb39fb19448952b75f1f651b51b0676a52e55c4b64c0d"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "ya"
    bin.install "target/release/ya"
  end

  test do
    system "#{bin}/ya", "--version"
  end
end

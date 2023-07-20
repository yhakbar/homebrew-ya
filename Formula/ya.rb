class Ya < Formula
  desc "A very simple automation tool for lazy folks that don't want to learn make"
  homepage "https://github.com/yhakbar/ya"
  url "https://github.com/yhakbar/ya/archive/refs/tags/0.3.0.tar.gz"
  version "0.3.0"
  sha256 "b786ba8c4f67ff85b70ada82bb04823bb068d206a3d047065688c8c78bc52e15"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "ya"
    bin.install "target/release/ya"
  end

  test do
    system "#{bin}/ya", "--version"
  end
end

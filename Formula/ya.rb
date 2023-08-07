class Ya < Formula
  desc "A very simple automation tool for lazy folks that don't want to learn make"
  homepage "https://github.com/yhakbar/ya"
  url "https://github.com/yhakbar/ya/archive/refs/tags/0.6.0.tar.gz"
  version "0.6.0"
  sha256 "20a7a96c4a5e946ff99c9b2322666634b6eeb26b900f299454b55311f7ac9a48"

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

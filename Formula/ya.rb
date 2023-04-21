class Ya < Formula
  desc "A very simple automation tool for lazy folks that don't want to learn make"
  homepage "https://github.com/yhakbar/ya"
  url "https://github.com/yhakbar/ya/archive/refs/tags/0.2.0.tar.gz"
  version "0.2.0"
  sha256 "558922000cbc1240bb56361724bee9f9f1014e417466b4494dd6d248b085e3a4"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "ya"
    bin.install "target/release/ya"
  end

  test do
    system "#{bin}/ya", "--version"
  end
end

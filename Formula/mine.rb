class Mine < Formula
  desc "CLI for color-coding project windows, enhancing workspace organization"
  homepage "https://github.com/joelzanden/mine"
  url "https://github.com/joelzanden/mine/archive/refs/tags/v0.1.24.tar.gz"
  sha256 "52590d4f2395f134c463862f3bfc57cea310c41d3082d17964f9df16b8d27230"
  license "MIT"

  bottle do
    root_url "https://github.com/joelzanden/mine/releases/download/v0.1.23"
    sha256 monterey:     "f9dffeb28fa3ff121674f33a9356679d9c2616334833370ffb453252bee2a198"
    sha256 x86_64_linux: "8b1c2c0e278cb726bf51c119c74b8ba1b436520a190baeb8f1de72398b9fb2ef"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.1.23", shell_output("#{bin}/mine --version")
  end
end

class Mine < Formula
  desc "CLI for color-coding project windows, enhancing workspace organization"
  homepage "https://github.com/joelzanden/mine"
  url "https://github.com/joelzanden/mine/archive/refs/tags/v0.1.19.tar.gz"
  sha256 "da488069d39339868cc00428b517cb96fb8c7d339b26522d5859e33373134d42"
  license "MIT"

  bottle do
    root_url "https://github.com/joelzanden/mine/releases/download/v0.1.19"
    sha256 catalina:      "97b6e3f205f17c788b870bd30849ede9de67fb3eb68f7529e33f884a30049359"
    sha256 x86_64_linux:  "f2e26d2f9372db01c6f022c69799f9ea05fcafa72c96d26f82e7ae975c770e50"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.1.19", shell_output("#{bin}/mine --version")
  end
end

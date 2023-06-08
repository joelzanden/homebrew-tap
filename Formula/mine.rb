class Mine < Formula
  desc "CLI for color-coding project windows, enhancing workspace organization"
  homepage "https://github.com/joelzanden/mine"
  url "https://github.com/joelzanden/mine/archive/refs/tags/v0.1.23.tar.gz"
  sha256 "18a4d647f3db93aa61035a94ca52669fe65354f015d1e8419f2068112fbb19b9"
  license "MIT"

  bottle do
    root_url "https://github.com/joelzanden/mine/releases/download/v0.1.23"
    sha256 x86_64_monterey: "6ad612bd660302c079b680c97a329a41e88e31640eb0772890040463bea73966"
    sha256 x86_64_linux:    "65dd7a42bb4ac98e602e4f86c57cad78be57802e42204e344e2345ccebb44863"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.1.23", shell_output("#{bin}/mine --version")
  end
end

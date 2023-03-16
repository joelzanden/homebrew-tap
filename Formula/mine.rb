class Mine < Formula
  desc "CLI for color-coding project windows, enhancing workspace organization"
  homepage "https://github.com/joelzanden/mine"
  url "https://github.com/joelzanden/mine/archive/refs/tags/v0.1.17.tar.gz"
  sha256 "918dc80546019e9c1573c6d133388eee806c0a034afce3d496a165c6279cf597"
  license "MIT"

  bottle do
    root_url "https://github.com/joelzanden/mine/releases/download/v0.1.17"
    sha256 catalina:      "1b25ab24287076f7f19909374aa7d7808887dcb09771250d5d666da6154592fd"
    sha256 big_sur:       "dd6d24a75b2b2819f06a622b8620836ae57a142d889dda33501d4632c2e032e3"
    sha256 monterey:      "2575096dfdac6c3c30d6fb1153e0f3aa9ffe89e8b3cf576329cbc089e0f8d325"
    sha256 x86_64_linux:  "2b43c1abde40a05c8738de0f46ace477dfa0666717af1c91af39ef61d2933f98"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.1.17", shell_output("#{bin}/mine --version")
  end
end

class Mine < Formula
  desc "CLI for color-coding project windows, enhancing workspace organization"
  homepage "https://github.com/joelzanden/mine"
  url "https://github.com/joelzanden/mine/archive/refs/tags/0.1.25.tar.gz"
  sha256 "07ef6ba2aaf48ac2ff369b34a624caef62448e9d03b839d8a575c50180304bca"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.1.25", shell_output("#{bin}/mine --version")
  end
end

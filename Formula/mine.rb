class Mine < Formula
  desc "CLI for color-coding project windows, enhancing workspace organization"
  homepage "https://github.com/joelzanden/mine"
  url "https://github.com/joelzanden/mine/archive/refs/tags/0.1.25.tar.gz"
  sha256 "07ef6ba2aaf48ac2ff369b34a624caef62448e9d03b839d8a575c50180304bca"
  license "MIT"

  bottle do
    root_url "https://github.com/joelzanden/mine/releases/download/0.1.25"
    sha256 monterey:     "2d6373074b57cb6fe5cce086251226af5d185613dd311c83598e13b01ad35b3a"
    sha256 x86_64_linux: "a28a1c42a7fe520882125e0dc56bbc5475f7902f34f3100382b515b1fec35b54"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.1.25", shell_output("#{bin}/mine --version")
  end
end

class Rebun < Formula
  desc "Like bun run but with delayed restart after crash or completion"
  version "0.1.0"
  homepage "https://github.com/joelzanden/rebun"
  url "https://github.com/joelzanden/rebun/releases/download/v0.1.0/rebun-0.1.0.tar.gz"
  sha256 "2667afd3aa47f4ff61cf7b2620e5a16153b23ed0f9466dc6b479c1a9dabf6326"
  license "MIT"

  depends_on "bun"

  def install
    bin.install "rebun"
  end

  test do
    assert_match "Usage: rebun <delay-seconds> <script-name>", shell_output("#{bin}/rebun", 1)
  end
end

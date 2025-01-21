class Rebun < Formula
  desc "Like bun run but with delayed restart after crash"
  version "0.4.0"
  homepage "https://github.com/joelzanden/rebun"
  url "https://github.com/joelzanden/rebun/releases/download/v0.4.0/rebun-0.4.0.tar.gz"
  sha256 "13f61468931f95d51f0e9ded161a0ea3523f05b30e98346edac22e627544e030"
  license "MIT"

  depends_on "bun"

  def install
    bin.install "rebun"
  end

  test do
    assert_match "Usage: rebun <delay-seconds> <script-name>", shell_output("#{bin}/rebun", 1)
  end
end

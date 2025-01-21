class Send < Formula
  desc "Upload files to dropdrop.download"
  homepage "https://github.com/joelzanden/send"
  url "https://github.com/joelzanden/send/releases/download/v0.0.6/send-0.0.6.tar.gz"
  sha256 "7ebe3b5b2667b4df78f20aad919a40b93234bf860ff9c2eec42541ca0e693048"
  license "MIT"

  def install
    bin.install "send"
  end

  test do
    assert_match "Usage: send <file>", shell_output("#{bin}/send", 1)
  end
end

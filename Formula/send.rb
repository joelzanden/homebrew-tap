class Send < Formula
  desc "A script to upload files to dropdrop.download"
  homepage "https://github.com/joelzanden/send"
  url "https://github.com/joelzanden/send/releases/download/v0.0.2/send-0.0.2.tar.gz"
  sha256 "02ec7543df39ceec964ba78b3b91b8e25b0abad2046370c5cb06621ca542d339"
  license "MIT"

  def install
    bin.install "send"
  end

  test do
    assert_match "Usage: send <file>", shell_output("#{bin}/send", 1)
  end
end

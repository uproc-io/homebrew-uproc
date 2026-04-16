class Uproc < Formula
  desc "Uproc CLI"
  homepage "https://github.com/uproc-io/uproc.cli"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc_#{version}_darwin_arm64.tar.gz"
    sha256 "REPLACE_WITH_SHA256"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc_#{version}_darwin_amd64.tar.gz"
    sha256 "REPLACE_WITH_SHA256"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc_#{version}_linux_amd64.tar.gz"
    sha256 "REPLACE_WITH_SHA256"
  end

  def install
    bin.install "uproc"
  end

  test do
    system "#{bin}/uproc", "--help"
  end
end


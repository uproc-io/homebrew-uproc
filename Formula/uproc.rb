class Uproc < Formula
  desc "Uproc CLI"
  homepage "https://github.com/uproc-io/uproc.cli"
  version "0.1.7"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_darwin_arm64.tar.gz"
    sha256 "e4f2c2e5a104c87c173c8badf953355ef33521e221f1a9d9a919b1f3a8c1c65a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_darwin_amd64.tar.gz"
    sha256 "900015072a415ac9bcd5d9c1bba5349f3d5973cf74be9a039b26173e655c0d05"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_linux_amd64.tar.gz"
    sha256 "a4814779539b5f15226f2f6e69f48531be71d21d437177016d8de7e40e99a2af"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_linux_arm64.tar.gz"
    sha256 "d8433fa627dd8d26a92e757f1f162cf2b89a572019c7ca258eff1fde303cc2b2"
  end

  def install
    bin.install "uproc"
  end

  test do
    system "#{bin}/uproc", "--help"
  end
end

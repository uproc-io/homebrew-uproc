class Uproc < Formula
  desc "Uproc CLI"
  homepage "https://github.com/uproc-io/uproc.cli"
  version "0.1.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_darwin_arm64.tar.gz"
    sha256 "d80d4b72d2f4c4a1141b29a71a47f0fc2f607251de8a205f130928cabaadaab0"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_darwin_amd64.tar.gz"
    sha256 "1b231868992ad556848115e9f1e410dcb2df07226fed92c732d5e2de8826e968"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_linux_amd64.tar.gz"
    sha256 "2fc7441b77f36f49c7f7e8e2052c1dcecc692a5d9aa552046ccbbe1a38b25167"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_linux_arm64.tar.gz"
    sha256 "a94cdab3054bbf5ca35eebcdeac52d9bbc8396f94b0eb76bf818bae30943a112"
  end

  def install
    bin.install "uproc"
  end

  test do
    system "#{bin}/uproc", "--help"
  end
end

class Uproc < Formula
  desc "Uproc CLI"
  homepage "https://github.com/uproc-io/uproc.cli"
  version "0.2.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_darwin_arm64.tar.gz"
    sha256 "2bf7fa52d6115f588ea8dd0a7d39a143b8e97eb69b0ad13ea4c4ccb8c92233c0"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_darwin_amd64.tar.gz"
    sha256 "b8e6082d9c163dddfb7bf17907ae86a87f2e3fd8890c22f59d5b0beb569a9460"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_linux_amd64.tar.gz"
    sha256 "0843a90264c42740133b6e758d3585f7cde99da108dee734d8abb2be04d10446"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_linux_arm64.tar.gz"
    sha256 "2a3a1c0020bfb33c8d5eb531ed3a9d7de912c78139209ec777e8d4bdf6e615d4"
  end

  def install
    bin.install "uproc"
  end

  test do
    system "#{bin}/uproc", "--help"
  end
end

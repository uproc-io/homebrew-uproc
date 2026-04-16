class Uproc < Formula
  desc "Uproc CLI"
  homepage "https://github.com/uproc-io/uproc.cli"
  version "0.1.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_darwin_arm64.tar.gz"
    sha256 "75bfc0771ff5f1aa67163ddc82b5fae8035bebc3f4cb42182024477671f0a130"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_darwin_amd64.tar.gz"
    sha256 "75eef9639947eca14eb1de8d0b25d68f4629381fc970c4d0f24d79d4f4b78c5b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_linux_amd64.tar.gz"
    sha256 "da881eb94cd1c96a2ee54f762589c331d402cd3296f4e18a4f6a29a6302b7526"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/uproc-io/uproc.cli/releases/download/v#{version}/uproc.cli_#{version}_linux_arm64.tar.gz"
    sha256 "b0c7d3d4c98808ba0b6c5f2f80f9d476756b531e9b7b12cefb962165266f0dd8"
  end

  def install
    bin.install "uproc"
  end

  test do
    system "#{bin}/uproc", "--help"
  end
end

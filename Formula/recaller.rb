class Recaller < Formula
  desc "Fast, private command history search with instant documentation"
  homepage "https://github.com/cybrota/recaller"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    arch arm: "arm64", intel: "x86_64"

    url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Darwin_#{arch}.zip"
    sha256 arm: "ce8e591cfa7775fff6f0235627e36b23ff039dd32526662198f0cb5184e58f0a",
           intel: "f77a0caf67e4523eef1b326390416e9e80951e2e518cd781089fab560ca14f71"
  end

  on_linux do
    arch arm: "arm64", intel: "x86_64"

    url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Linux_#{arch}.zip"
    sha256 arm: "e8b030fc81be31d9831453962aa2f408909b647f736ebed308bfc8d9a774a22b",
           intel: "09ef2feeea1a86d967f2434114fc06a78999e39e9d4a939213789eb6af1b9c68"
  end

  def install
    bin.install "recaller"
  end

  test do
    system bin/"recaller", "--version"
  end
end

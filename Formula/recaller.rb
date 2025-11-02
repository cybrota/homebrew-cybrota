class Recaller < Formula
  desc "Fast, private command history search with instant documentation"
  homepage "https://github.com/cybrota/recaller"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Darwin_x86_64.zip"
      sha256 "f77a0caf67e4523eef1b326390416e9e80951e2e518cd781089fab560ca14f71"
    end

    on_arm do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Darwin_arm64.zip"
      sha256 "ce8e591cfa7775fff6f0235627e36b23ff039dd32526662198f0cb5184e58f0a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Linux_x86_64.zip"
      sha256 "09ef2feeea1a86d967f2434114fc06a78999e39e9d4a939213789eb6af1b9c68"
    end

    on_arm do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Linux_arm64.zip"
      sha256 "e8b030fc81be31d9831453962aa2f408909b647f736ebed308bfc8d9a774a22b"
    end
  end

  def install
    bin.install "recaller"
  end

  test do
    system bin/"recaller", "--version"
  end
end

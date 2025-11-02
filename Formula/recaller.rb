class Recaller < Formula
  desc "Fast, private command history search with instant documentation"
  homepage "https://github.com/cybrota/recaller"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Darwin_x86_64.zip"
      sha256 "df100e9510b860f4bd7cac4845402f87bd1308aae372f22e80b3db787aef4fe3"
    end

    on_arm do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Darwin_arm64.zip"
      sha256 "122fedf695b7039490fcfe28dbfff584f532c32d100e1b54f4ea40a4cfd60a6e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Linux_x86_64.zip"
      sha256 "894c96a7fefb45d0c3bf458f2c34287a163d393e266a926c3ca0f238a86db586"
    end

    on_arm do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Linux_arm64.zip"
      sha256 "3f0a0f0c49e71becf8bae151cd09dce17d3c2c7b8b2ef2feda170c66bed2502f"
    end
  end

  def install
    bin.install "recaller"
  end

  test do
    system bin/"recaller", "--version"
  end
end

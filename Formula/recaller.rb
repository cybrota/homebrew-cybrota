class Recaller < Formula
  desc "Fast, private command history search with instant documentation"
  homepage "https://github.com/cybrota/recaller"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Darwin_x86_64.zip",
          using: CurlDownloadStrategy
      sha256 "f26a78e3085ea229a193d56cd92f12fee85cfbdb34bc7a3aa95b39994d53b171"
  
      def install
        bin.install "recaller"
      end
    end

    on_arm do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Darwin_arm64.zip",
          using: CurlDownloadStrategy
      sha256 "8b93abb3dc5ce64888d90e8c7bfe8b649fa252177c8a7729a5f76cdf7da5286f"
  
      def install
        bin.install "recaller"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Linux_x86_64.zip",
          using: CurlDownloadStrategy
      sha256 "d06e8fde4b9b23f112e385e169b1d652140e39947ad6eca3e7ca84c1b466e871"

      def install
        bin.install "recaller"
      end
    end

    on_arm do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Linux_arm64.zip",
          using: CurlDownloadStrategy
      sha256 "e8b8fdbfef004c5eeee034410ef1dc66bf0b7eaba62c292563afdce636a0baca"

      def install
        bin.install "recaller"
      end
    end
  end

  test do
    system "#{bin}/recaller", "--version"
  end
end
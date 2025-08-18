class Recaller < Formula
  desc "Fast, private command history search with instant documentation"
  homepage "https://github.com/cybrota/recaller"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Darwin_x86_64.zip",
          using: CurlDownloadStrategy
      sha256 ""
  
      def install
        bin.install "recaller"
      end
    end

    on_arm do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Darwin_arm64.zip",
          using: CurlDownloadStrategy
      sha256 ""
  
      def install
        bin.install "recaller"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Linux_x86_64.zip",
          using: CurlDownloadStrategy
      sha256 ""

      def install
        bin.install "recaller"
      end
    end

    on_arm do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Linux_arm64.zip",
          using: CurlDownloadStrategy
      sha256 ""

      def install
        bin.install "recaller"
      end
    end
  end

  test do
    system "#{bin}/recaller", "--version"
  end
end
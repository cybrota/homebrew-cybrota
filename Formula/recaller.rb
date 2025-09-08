class Recaller < Formula
  desc "Fast, private command history search with instant documentation"
  homepage "https://github.com/cybrota/recaller"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Darwin_x86_64.zip",
          using: CurlDownloadStrategy
      sha256 "ce82992fb13fd7016f69f7ead35cd1e5e60532a447e3abe6660fe0568a230c21"

      def install
        bin.install "recaller"
      end
    end

    on_arm do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Darwin_arm64.zip",
          using: CurlDownloadStrategy
      sha256 "ebe60f05e0df2b6e830958638ada3b81130467bb1a70cf4550fcecd933c2325d"

      def install
        bin.install "recaller"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Linux_x86_64.zip",
          using: CurlDownloadStrategy
      sha256 "06db2162524153e9f5898095c2846f8c21cd41cac44131bafa622ca9f0d15328"

      def install
        bin.install "recaller"
      end
    end

    on_arm do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Linux_arm64.zip",
          using: CurlDownloadStrategy
      sha256 "caa85519cdf44b3de90e3235994817feaea2fc41d53704b84c657a8af8fe3033"

      def install
        bin.install "recaller"
      end
    end
  end

  test do
    system "#{bin}/recaller", "--version"
  end
end

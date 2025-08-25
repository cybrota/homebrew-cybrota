class Recaller < Formula
  desc "Fast, private command history search with instant documentation"
  homepage "https://github.com/cybrota/recaller"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Darwin_x86_64.zip",
          using: CurlDownloadStrategy
      sha256 "2070ac6de802eddb41d5bb6408cb30b4f99c40018681a8eaad05a4ceb482e30d"
  
      def install
        bin.install "recaller"
      end
    end

    on_arm do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Darwin_arm64.zip",
          using: CurlDownloadStrategy
      sha256 "bf12613ca9ebaebd02042e9f03de7b34e2b535ddee3a072619f322c0f8693b94"
  
      def install
        bin.install "recaller"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Linux_x86_64.zip",
          using: CurlDownloadStrategy
      sha256 "7b0d954119652e8be0b3d485a4dc3ec572bd312d875edf983a5ad17738552e19"

      def install
        bin.install "recaller"
      end
    end

    on_arm do
      url "https://github.com/cybrota/recaller/releases/download/v#{version}/recaller_Linux_arm64.zip",
          using: CurlDownloadStrategy
      sha256 "3e67283e0c54576896b3c48e90ff513ecf70ca9de65049bd7168863403866f80"

      def install
        bin.install "recaller"
      end
    end
  end

  test do
    system "#{bin}/recaller", "--version"
  end
end
# Release archives: https://github.com/cybrota/scharf/releases/tag/v1.4.2
# Signed build provenance: https://github.com/cybrota/scharf/attestations/54129867
class Scharf < Formula
  desc "Prevent supply-chain attacks from your third-party GitHub actions"
  homepage "https://github.com/cybrota/scharf"
  version "1.4.2"
  license "Apache-2.0"
  version_scheme 1

  on_macos do
    on_intel do
      url "https://github.com/cybrota/scharf/releases/download/v#{version}/scharf_Darwin_x86_64.zip",
          using: CurlDownloadStrategy
      sha256 "232c936ce40627dfaa5790333dcf9ec558a68dbe9f9ad80b1fde7141eabbe8df"
  
      def install
        bin.install "scharf"
      end
    end

    on_arm do
      url "https://github.com/cybrota/scharf/releases/download/v#{version}/scharf_Darwin_arm64.zip",
          using: CurlDownloadStrategy
      sha256 "dd54f303e9e8f7c3de9161e92f88fd77a07ec3479373a19153ef241fa166d70d"
  
      def install
        bin.install "scharf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cybrota/scharf/releases/download/v#{version}/scharf_Linux_x86_64.zip",
          using: CurlDownloadStrategy
      sha256 "616b6978e0ab39a344868c01623da1f9c4ba1aac653caa3c2fec4f12cbb99083"

      def install
        bin.install "scharf"
      end
    end

    on_arm do
      url "https://github.com/cybrota/scharf/releases/download/v#{version}/scharf_Linux_arm64.zip",
          using: CurlDownloadStrategy
      sha256 "1352d3421ba8bc90c5f92c5a2d7a06a9d1268281abef1c23c7de77a94784225c"

      def install
        bin.install "scharf"
      end
    end
  end
end

class Network < Formula
  desc "A lightweight command-line interface tool that provides access to various free APIs for IP information, jokes, and more - all without authentication requirements."
  homepage "https://github.com/mithun1st/network"
  version "1.0.0"
  license "MIT"

  # Base download URL
  BASE_URL = "https://github.com/mithun1st/network/releases/download/v#{version}/network"

  # Mac downloads
  on_macos do
    on_arm do
      url "#{BASE_URL}-mac-silicon"
      sha256 "sha256:d538f090c577ad75bd7fe44bbe48c4b00c3ed3b82bf20f5e50eb9a75670fc2fc"
    end

    on_intel do
      url "#{BASE_URL}-mac-intel"
      sha256 "2607d794f19c28c3cf853f4aee75ea3899b3a716f4cbb9b37400e129460c0cae"
    end
  end

  # Linux download
  on_linux do
    on_arm do
      url "#{BASE_URL}-linux-arm64"
      sha256 "a5d513b3f68440956a6b2a98ec4fe185602bab348626de4eccfdb8b7067c2a2b"
    end

    on_intel do
      url "#{BASE_URL}-linux-amd64"
      sha256 "8caf57328af69dc096713384cd97b84393b6a91a9ce360eb477ff32059d7ee94"
    end
  end

  def install
    bin.install Dir["*"].first => "network"
  end

  test do
    system "#{bin}/network", "--version"
  end
end
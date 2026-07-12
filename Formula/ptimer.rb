class Ptimer < Formula
  desc "A command-line interface (CLI) pomodoro timer application built in Go that helps you boost productivity with customizable focus sessions."
  homepage "https://github.com/mithun1st/ptimer"
  version "1.0.1"
  license "MIT"

  # Base download URL
  BASE_URL = "https://github.com/mithun1st/ptimer/releases/download/v#{version}/ptimer"

  # Mac downloads
  on_macos do
    on_arm do
      url "#{BASE_URL}-mac-silicon"
      sha256 "1778e9837f7539882f303226e56a3b976717323478086b0bfc8269c617713f63"
    end

    on_intel do
      url "#{BASE_URL}-mac-intel"
      sha256 "960bbf31ca6f15d720a507e85fe5f4e0e77390e5640db450794b4677d70bf0b7"
    end
  end

  # Linux download
  on_linux do
    on_arm do
      url "#{BASE_URL}-linux-arm64"
      sha256 "a2d24f779d2359135b83c281521ed26692e25a9433959e3745999dd15c62a744"
    end

    on_intel do
      url "#{BASE_URL}-linux-amd64"
      sha256 "12d0abf7bd0ed1105715d99345d50ec9af8b8199da8ed272d3cb5aa96c1adbea"
    end
  end

  def install
    bin.install Dir["*"].first => "ptimer"
  end

  test do
    system "#{bin}/ptimer", "--version"
  end
end
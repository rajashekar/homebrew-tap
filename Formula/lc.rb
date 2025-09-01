class Lc < Formula
  desc "Fast Rust-based LLM CLI tool with provider management and chat sessions"
  homepage "https://lc.viwq.dev"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rajashekar/lc/releases/download/v0.1.3/lc-macos-x86_64.tar.gz"
      sha256 "2f1070baf05b0ca2cecb2c647e19109ca7c0ae6778f87aaad9f5ca410862a1f5"
    elsif Hardware::CPU.arm?
      url "https://github.com/rajashekar/lc/releases/download/v0.1.3/lc-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_ARM64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rajashekar/lc/releases/download/v0.1.3/lc-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_X86_64"
    elsif Hardware::CPU.arm?
      url "https://github.com/rajashekar/lc/releases/download/v0.1.3/lc-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    end
  end

  def install
    bin.install "lc"
  end

  test do
    system "#{bin}/lc", "--version"
  end
end

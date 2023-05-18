# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.yor.io"
  version "0.1.176"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.176/yor_0.1.176_darwin_amd64.tar.gz"
      sha256 "77f89387f35547a3e6a90dd0f347c9a0e7afec4850eaf51a009872b572b6e9b8"

      def install
        bin.install "yor"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.176/yor_0.1.176_darwin_arm64.tar.gz"
      sha256 "b2f7f69e6f9640d7fe7a763aa7b91beb6d7f8407cc693abf4503d7953f930974"

      def install
        bin.install "yor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.176/yor_0.1.176_linux_arm64.tar.gz"
      sha256 "d1f7139793e8acd44922f1c411d4026f36ec44626272d67232db6cf8a45fc2e9"

      def install
        bin.install "yor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.176/yor_0.1.176_linux_amd64.tar.gz"
      sha256 "41757d9baf4803dda2e28a949524b529e995c0e5a9106d3b70e9dd0a65e98dd1"

      def install
        bin.install "yor"
      end
    end
  end

  test do
    system "#{bin}/yor", "--help"
  end
end

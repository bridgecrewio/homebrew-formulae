# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.yor.io"
  version "0.1.178"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.178/yor_0.1.178_darwin_arm64.tar.gz"
      sha256 "2bcd779deb00d812860e7e7f518c41c8b8e0cbede64f50fe53150daf75410eda"

      def install
        bin.install "yor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.178/yor_0.1.178_darwin_amd64.tar.gz"
      sha256 "f4437b86045a65b92f6015fce112f68872513b3fc9fd3e290dd803d785e37fa0"

      def install
        bin.install "yor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.178/yor_0.1.178_linux_arm64.tar.gz"
      sha256 "25f035b94b7206c262b51dff19aeb3e6a8e26134ddc2a0cb281cc5b252838768"

      def install
        bin.install "yor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.178/yor_0.1.178_linux_amd64.tar.gz"
      sha256 "1d2bcf5f7f3701bea960f298375c0ffdff90ecc2287d1deda042b48574b82533"

      def install
        bin.install "yor"
      end
    end
  end

  test do
    system "#{bin}/yor", "--help"
  end
end

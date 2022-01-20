# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.yor.io"
  version "0.1.133"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.133/yor_0.1.133_darwin_arm64.tar.gz"
      sha256 "9516d03b880f4e9428507ac6e470dca5199ef335400d4a9e414e1fef0e080b06"

      def install
        bin.install "yor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.133/yor_0.1.133_darwin_amd64.tar.gz"
      sha256 "3adb481df8c5c555ade55c0128d2bb257d4b03f9f8ccacc085de6891359e6276"

      def install
        bin.install "yor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.133/yor_0.1.133_linux_arm64.tar.gz"
      sha256 "84d444b577266416973b098935641823603155d287f0409891de021e19967513"

      def install
        bin.install "yor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.133/yor_0.1.133_linux_amd64.tar.gz"
      sha256 "1798389c39ac901601b06ba7aad9154af9bea4aa11009fb5deadaeddd0ebb873"

      def install
        bin.install "yor"
      end
    end
  end

  test do
    system "#{bin}/yor", "--help"
  end
end

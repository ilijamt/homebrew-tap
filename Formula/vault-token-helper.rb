# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VaultTokenHelper < Formula
  desc "A token helper is an external program that Vault calls to save, retrieve or erase a saved token."
  homepage "https://github.com/ilijamt/vault-token-helper"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ilijamt/vault-token-helper/releases/download/v0.1.4/vault-token-helper_0.1.4_darwin_amd64.tar.gz"
      sha256 "09843f6907930a332d617fb23f5d207a0121b9cc2d68a42657bfaf450a753d93"

      def install
        bin.install "vault-token-helper"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ilijamt/vault-token-helper/releases/download/v0.1.4/vault-token-helper_0.1.4_darwin_arm64.tar.gz"
      sha256 "c03b076580952991ab992bd9c16b4cea1bbe4a924cfb7112551a13b0a02c05e5"

      def install
        bin.install "vault-token-helper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ilijamt/vault-token-helper/releases/download/v0.1.4/vault-token-helper_0.1.4_linux_armv6.tar.gz"
      sha256 "3f942490e1ca96525824a49d280a99bff17b11add67429bec533ab1960ead0ff"

      def install
        bin.install "vault-token-helper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ilijamt/vault-token-helper/releases/download/v0.1.4/vault-token-helper_0.1.4_linux_arm64.tar.gz"
      sha256 "963580e535d99e9f83b0130c0b92bcf5ef72509d35915f05b95699b1441af8c0"

      def install
        bin.install "vault-token-helper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ilijamt/vault-token-helper/releases/download/v0.1.4/vault-token-helper_0.1.4_linux_amd64.tar.gz"
      sha256 "f1cb1f137c3bb49223272c321e8e1f7053966142811c1767b00e7adb646e8e22"

      def install
        bin.install "vault-token-helper"
      end
    end
  end

  test do
    system "#{bin}/vault-token-helper version"
  end
end

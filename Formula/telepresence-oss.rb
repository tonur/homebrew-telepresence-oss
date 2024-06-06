# This script is generated automatically by the release automation code in the
# Telepresence repository:
class TelepresenceOss < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  version "v2.18.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://app.getambassador.io/download/tel2oss/releases/download/v2.18.0/telepresence-darwin-amd64"
    sha256 "d7305cdd30cca776d50206b0e56052398421ffd2e16bb3ef249fa3933a15334e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://app.getambassador.io/download/tel2oss/releases/download/v2.18.0/telepresence-darwin-arm64"
    sha256 "adcdbd2f3733d0126a7c7a3741019c7de39b56331d39b3b36d338c7c8e997256"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://app.getambassador.io/download/tel2oss/releases/download/v2.18.0/telepresence-linux-amd64"
    sha256 "b34ec6977a4636acf5f6047fcc4b7d04e73c60332f73af957218a6a5d942c4bc"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://app.getambassador.io/download/tel2oss/releases/download/v2.18.0/telepresence-linux-arm64"
    sha256 "e62d1d0e0f9014a63523cf862be3773db8a0b8c47574c1669ce1f4623bbd5af9"
  end

  conflicts_with "telepresence"

  def install
    bin.install Dir["*telepresence-*"].first => "telepresence"
  end

  test do
    system "#{bin}/telepresence", "--help"
  end
end

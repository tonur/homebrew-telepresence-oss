# Would be nice to automate this as part of the github actions at https://github.com/telepresenceio/telepresence/blob/release/v2/.github/workflows/release.yaml
class TelepresenceOss < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  version "v2.18.0"

  BASE_URL = "https://app.getambassador.io/download/tel2oss/releases/download/#{version}/"
  ARCH = Hardware::CPU.arm? ? "arm64" : "amd64"
  OPERATING_SYSTEM = OS.mac? ? "darwin" : "linux"

  url "#{BASE_URL}telepresence-#{OPERATING_SYSTEM}-#{ARCH}"

  sha256 "d7305cdd30cca776d50206b0e56052398421ffd2e16bb3ef249fa3933a15334e" if OS.mac? && Hardware::CPU.intel?
  sha256 "adcdbd2f3733d0126a7c7a3741019c7de39b56331d39b3b36d338c7c8e997256" if OS.mac? && Hardware::CPU.arm?
  sha256 "b34ec6977a4636acf5f6047fcc4b7d04e73c60332f73af957218a6a5d942c4bc" if OS.linux? && Hardware::CPU.intel?
  sha256 "e62d1d0e0f9014a63523cf862be3773db8a0b8c47574c1669ce1f4623bbd5af9" if OS.linux? && Hardware::CPU.arm?

  conflicts_with "telepresence"

  def install
      bin.install "telepresence-#{OPERATING_SYSTEM}-#{ARCH}" => "telepresence"
  end

  test do
      system "#{bin}/telepresence", "--help"
  end
end

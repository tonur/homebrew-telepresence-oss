# This script is generated automatically by the release automation code in the
# Telepresence repository:
class TelepresenceArm64 < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://app.getambassador.io/download/tel2/darwin/arm64/2.9.2/telepresence"
  sha256 "dde21d4451b482d0bc19b002a910826a0913eb440a362147331bf6c374060e30"

  # macfuse is a cask and formula can't depend on casks, so we can't actually
  # do this. This is probably fine since you don't _need_ macfuse to run
  # the cli, just to do mounts 
  #depends_on "macfuse"

  def install
    bin.install "telepresence"
  end

  test do
    system "#{bin}/telepresence", "--help"
  end
end

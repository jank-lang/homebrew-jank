class Jank < Formula
  desc "The native Clojure dialect hosted on LLVM with seamless C++ interop."
  homepage "https://jank-lang.org"
  url "https://cache.jank-lang.org/jank_0.1-1_aarch64.tar.gz"
  version "0.1"
  license "MPL-2.0"

  depends_on "bdw-gc"
  depends_on "boost"
  depends_on "libzip"
  depends_on "openssl"

  def install
    (buildpath/"usr/local").cd do
      cp_r Dir["*"], prefix
    end
  end

  test do
    jank = bin/"jank"

    assert_predicate jank, :exist?, "jank must exist"
    assert_predicate jank, :executable?, "jank must be executable"

    health_check = pipe_output("#{jank} check-health")
    assert_match "jank can aot compile working binaries", health_check
  end
end

class Teletube < Formula
  desc 'Command line interface for interacting with the SWITCHtube web service'
  homepage 'https://github.com/Fingertips/teletube'
  url 'https://github.com/Fingertips/teletube/archive/refs/tags/v0.0.7.tar.gz'
  version '0.0.7'
  sha256 'cab9323e70da980efb9afb33edf216a68a8a167e4d4686c6252a27f43445741b'
  head 'https://github.com/Fingertips/teletube.git'

  depends_on 'crystal-lang' => :build
  depends_on 'libevent'
  depends_on 'libyaml'
  depends_on 'pcre'

  def install
    system 'make'
    bin.install 'teletube'
  end
end

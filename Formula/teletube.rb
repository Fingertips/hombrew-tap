class Teletube < Formula
  desc 'Command line interface for interacting with the SWITCHtube web service'
  homepage 'https://github.com/Fingertips/teletube'
  url 'https://github.com/Fingertips/teletube/archive/refs/tags/v0.0.8.tar.gz'
  version '0.0.8'
  sha256 '0efcf4474b7d36eb99e7e6fbf687c6d2ceab8f5e55d7bb2e6de93c779465df0f'
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

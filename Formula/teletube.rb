class Teletube < Formula
  desc 'Command line interface for interacting with the SWITCHtube web service'
  homepage 'https://github.com/Fingertips/teletube'
  url 'https://github.com/Fingertips/teletube/archive/v0.0.2.tar.gz'
  version '0.0.2'
  sha256 'c561cc2047aa12e6809c456a7566624c46017ffa7e448ea0056a9397f32f4bd2'
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

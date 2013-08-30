require 'formula'

class Trigger < Formula
  homepage 'https://github.com/september28/trigger'
  url 'https://github.com/september28/trigger/archive/trigger-1.0.0.tar.gz'
  sha1 '0d7d3a33e0334dd78dac932ac5fa01360d4bfe8c'

  def install
        bin.install "osx/trigger"
        bin.install "osx/fsevent_watch"
        prefix.install "LICENSE"
        prefix.install "README.markdown"
  end
end

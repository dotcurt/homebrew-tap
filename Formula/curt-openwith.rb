class CurtOpenwith < Formula
  desc "Offline .curt conversation viewer — double-click a .curt file to render it locally in your browser"
  homepage "https://github.com/dotcurt/curt-openwith"
  url "https://github.com/dotcurt/curt-openwith/releases/download/v1.0.1/curt-openwith-v1.0.1.zip"
  sha256 "fe7865bf6ccc2c594afee2d1518865c16c8c5945269db03e6a7883def47345de"
  license "MIT"

  def install
    # The release zip is a portable folder (viewer assets, handler scripts,
    # per-platform installers) — install it whole; the handler registration
    # scripts expect this layout.
    libexec.install Dir["*"]
  end

  def caveats
    <<~EOS
      This formula installs the curt-openwith package folder to:
        #{libexec}

      It does NOT register the .curt file handler. To register it
      (current user only, no sudo):

        bash #{libexec}/mac/install.sh

      It builds Curt Viewer.app into ~/Applications, registers it with
      LaunchServices, and — if `duti` is installed — sets it as the
      default handler for .curt. Without duti, pick it once by hand
      (Finder: Get Info -> Open with -> Curt Viewer -> Change All...).

      On Linux use `bash #{libexec}/linux/install.sh` instead, or install
      directly from the release zip. On Windows use Scoop:

        scoop bucket add dotcurt https://github.com/dotcurt/bucket
        scoop install curt-openwith
    EOS
  end

  test do
    assert_pathname libexec/"mac/install.sh"
    assert_pathname libexec/"viewer"
    assert_pathname libexec/"shared/curtopen-generator.py"
  end
end

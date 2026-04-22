cask "calmread" do
  version "1.0.2"
  sha256 "617022dc2137abed648a02030c46e17e216a2b383d76af86115ff64c6efbbbad"

  url "https://github.com/calmread-app/CalmRead/releases/download/v#{version}/CalmRead-darwin-arm64-#{version}.zip",
      verified: "github.com/calmread-app/CalmRead/"

  name "CalmRead"
  desc "Calm, focused document reader for TXT, Markdown, EPUB, DOCX, CSV, and HTML"
  homepage "https://calmread.app"

  depends_on macos: ">= :monterey"

  app "CalmRead.app"

  preflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{staged_path}/CalmRead.app"]
  end

  zap trash: [
    "~/Library/Application Support/CalmRead",
    "~/Library/Preferences/com.calmread.app.plist",
    "~/Library/Caches/com.calmread.app",
  ]
end

class Phosphor < Formula
  desc "Terminal-styled personal life dashboard with a local AI agent (macOS)"
  homepage "https://github.com/pablosaraiva/homebrew-tap"
  version "0.2.0"
  sha256 "caaf5850e8e31911de0d546b48d711f39e2cd44e1fdf217753a810f68987a4d1"
  url "https://github.com/pablosaraiva/homebrew-tap/releases/download/v0.2.0/phosphor-0.2.0.tar.gz"

  depends_on "openjdk@25"
  depends_on "ollama"

  def install
    libexec.install "libexec/phosphor.jar"
    bin.install "bin/phosphor"
    doc.install "share/doc/phosphor/README.md"
  end

  def caveats
    <<~EOS
      First run:
        phosphor start
      then open http://localhost:8080 — the setup wizard asks for the AI
      lane (required: a local or remote Ollama, or ollama.com cloud models
      through a signed-in Ollama) and the optional integrations (Apple
      Calendar credentials, Reminders lists, an Obsidian vault, a
      Beancount ledger, weather, web search, voice, Messages).

      Optional extras:
        brew install whisper-cpp   # voice input, transcribes on this Mac
        brew install stockfish     # the agent's chess analysis

      Start from your terminal, not brew services: the Apple
      integrations ride osascript grants that bind to the parent
      process — see share/doc/phosphor/README.md for the full guide.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/phosphor version")
  end
end

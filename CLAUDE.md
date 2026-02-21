# CLAUDE.md

This file provides guidance to Claude Code when working with this repository.
Detailed docs are in `.claude/docs/` — read them on-demand using the Navigation Index below.

## Project Identity

**Skill Seekers** — Universal documentation preprocessor for AI systems.
Transforms docs websites, GitHub repos, and PDFs into production-ready formats for **16+ platforms**.

| Key | Value |
|-----|-------|
| Version | v3.0.0 |
| Python | 3.10+ required |
| Status | Production-ready, published on PyPI |
| Website | https://skillseekersweb.com/ |
| Platforms | RAG (LangChain, LlamaIndex, Haystack), Vector DBs (Chroma, FAISS, Weaviate, Qdrant), AI IDEs (Cursor, Windsurf, Cline, Continue.dev), LLMs (Claude, Gemini, OpenAI) |
| Tests | 1,765+ passing |

## Quick Setup

```bash
pip install -e .  # REQUIRED before running tests or CLI (src/ layout)
python -c "import skill_seekers; print(skill_seekers.__version__)"  # Verify: 3.0.0
```

## Quick Commands

```bash
# Create skills (unified command, auto-detects source type)
skill-seekers create https://docs.react.dev/ -p quick
skill-seekers create facebook/react -p standard
skill-seekers create ./my-project -p comprehensive
skill-seekers create tutorial.pdf

# Legacy commands (still supported)
skill-seekers scrape --config configs/react.json
skill-seekers github --repo facebook/react
skill-seekers analyze --directory . --comprehensive

# Package for platforms
skill-seekers package output/react/ --target claude    # LLM platforms (--target)
skill-seekers package output/react/ --format langchain # RAG/vector DBs (--format)

# Tests (NEVER skip)
pytest tests/ -v                                       # All tests
pytest tests/test_scraper_features.py -v               # Single file
pytest tests/ --cov=src/skill_seekers --cov-report=html

# Code quality (matches CI)
ruff check src/ tests/
ruff format src/ tests/
mypy src/skill_seekers
```

## Critical Rules

1. **Always `pip install -e .` first** — src/ layout requires package installation before tests or imports
2. **Never skip tests** — All 1,765+ tests must pass before commits: `pytest tests/ -v`
3. **Git workflow** — Branch from `development`, PR to `development` (not `main`)
   - Branch naming: `feature/{task-id}-{description}` or `feature/{category}`
4. **Platform adaptors** — Never hardcode platform-specific logic; use the Strategy Pattern in `adaptors/`
5. **Export format clarity** — Use `--target` for LLM platforms, `--format` for RAG/vector DBs
6. **Backward compatibility** — Legacy commands (scrape, github, analyze) must keep working
7. **Dependencies are optional** — Platform-specific deps installed via extras (e.g., `.[gemini]`)
8. **Test all platforms** — Changes must work for all 16 platforms

## Navigation Index

Read these files **on-demand** when the task matches the keywords.

### `.claude/docs/architecture.md`
**Read when:** modifying adaptors, understanding data flow, adding platforms, exploring codebase design
**Contains:** Platform adaptor pattern, data flow (5 phases), file structure tree, three-stream GitHub architecture, design rationale (why src/ layout, why adaptors, why Git-style CLI), best practices

### `.claude/docs/development.md`
**Read when:** building, testing, publishing, CI/CD, package structure, test markers
**Contains:** Setup commands, test commands with markers, building & publishing, CLI command testing, CI/CD pipeline details, entry points, optional dependencies, branch protection rules

### `.claude/docs/implementation-details.md`
**Read when:** modifying CLI commands, create command, C3.x features, enhancement modes, understanding algorithms
**Contains:** CLI architecture, unified create command internals, platform adaptor usage, C3.1-C3.10 feature details, smart categorization algorithm, language detection, config file structure, AI enhancement modes, key code locations for ALL modules

### `.claude/docs/integrations.md`
**Read when:** MCP server, RAG pipelines, vector databases, AI coding assistants, cloud storage
**Contains:** 26 MCP tools list, RAG framework examples (LangChain, LlamaIndex, Haystack), vector DB setup (Chroma, FAISS, Weaviate, Qdrant), AI IDE integration (Cursor, Windsurf, Cline, Continue.dev), cloud storage (S3, GCS, Azure)

### `.claude/docs/contributing.md`
**Read when:** adding features, new platforms, new CLI commands, new MCP tools, project history
**Contains:** Step-by-step workflows for adding platforms/features/commands/configs/MCP tools, key files quick reference table, core scraping files by feature, helper scripts, performance characteristics, version history

### `.claude/docs/debugging.md`
**Read when:** errors, test failures, troubleshooting, profiling
**Contains:** 8 common pitfalls with solutions, verbose logging, pytest debugging flags, error message lookup table, scraping issue diagnosis, performance profiling, additional documentation links

## Environment Variables

```bash
# Claude AI (required for AI enhancement)
export ANTHROPIC_API_KEY=sk-ant-...
export ANTHROPIC_BASE_URL=...          # Optional: Claude-compatible endpoint (e.g., GLM-4.7)

# Optional platform keys
export GOOGLE_API_KEY=AIza...          # Gemini
export OPENAI_API_KEY=sk-...           # OpenAI
export GITHUB_TOKEN=ghp_...            # GitHub (higher rate limits)
```

## Key Files Quick Reference

| Task | Primary File(s) |
|------|-----------------|
| CLI dispatcher | `src/skill_seekers/cli/main.py` |
| Doc scraping | `src/skill_seekers/cli/doc_scraper.py` |
| GitHub scraping | `src/skill_seekers/cli/github_scraper.py` |
| Codebase analysis | `src/skill_seekers/cli/codebase_scraper.py` |
| Platform adaptors | `src/skill_seekers/cli/adaptors/` (factory in `__init__.py`) |
| Create command args | `src/skill_seekers/cli/arguments/create.py` |
| Create command parser | `src/skill_seekers/cli/parsers/create_parser.py` |
| MCP server | `src/skill_seekers/mcp/server_fastmcp.py` |
| Tests | `tests/test_{feature}.py` |
| Config presets | `configs/{framework}.json` |
| CI workflow | `.github/workflows/tests.yml` |

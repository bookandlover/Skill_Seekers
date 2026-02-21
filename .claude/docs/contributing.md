# Contributing Reference

> Layer 2 doc - Read when adding features, platforms, CLI commands, MCP tools, or reviewing project history.

## Common Workflows

### Adding a New Platform

1. Create adaptor in `src/skill_seekers/cli/adaptors/{platform}_adaptor.py`
2. Inherit from `BaseAdaptor`
3. Implement `package()`, `upload()`, `enhance()` methods
4. Add to factory in `adaptors/__init__.py`
5. Add optional dependency to `pyproject.toml`
6. Add tests in `tests/test_install_multiplatform.py`

### Adding a New Feature

1. Implement in appropriate CLI module
2. Add entry point to `pyproject.toml` if needed
3. Add tests in `tests/test_{feature}.py`
4. Run full test suite: `pytest tests/ -v`
5. Update CHANGELOG.md
6. Commit only when all tests pass

## Where to Make Changes

### Adding a New CLI Command

1. **Create command file:** `src/skill_seekers/cli/my_command.py` with `main()` function
2. **Add entry point:** `pyproject.toml` `[project.scripts]`
3. **Update unified CLI:** `src/skill_seekers/cli/main.py` - add subcommand handler
4. **Add tests:** `tests/test_my_command.py`
5. **Update docs:** `CHANGELOG.md` + `README.md` (if user-facing)

### Adding a New Platform Adaptor

1. **Create adaptor:** `src/skill_seekers/cli/adaptors/my_platform_adaptor.py`
   ```python
   from .base import BaseAdaptor

   class MyPlatformAdaptor(BaseAdaptor):
       def package(self, skill_dir, output_path, **kwargs):
           pass
       def upload(self, package_path, api_key=None, **kwargs):
           pass
       def export(self, skill_dir, format, **kwargs):
           pass
   ```

2. **Register in factory:** `src/skill_seekers/cli/adaptors/__init__.py`
   ```python
   def get_adaptor(target=None, format=None):
       target_adaptors = {
           'claude': ClaudeAdaptor,
           'myplatform': MyPlatformAdaptor,  # ADD THIS
       }
       format_adaptors = {
           'langchain': LangChainAdaptor,
       }
   ```

3. **Add optional dependency:** `pyproject.toml`
4. **Add tests:** `tests/test_adaptors/test_my_platform_adaptor.py`
5. **Update docs:** README.md, docs/integrations/MY_PLATFORM.md, examples/

### Adding a New Config Preset

1. **Create config:** `configs/my_framework.json`
2. **Test:** `skill-seekers estimate configs/my_framework.json` then `--max-pages 50`
3. **Add to README:** Update presets table
4. **Submit to website:** (Optional) SkillSeekersWeb.com

### Modifying Core Scraping Logic

| Feature | File | Size |
|---------|------|------|
| Doc scraping | `src/skill_seekers/cli/doc_scraper.py` | ~90KB |
| GitHub scraping | `src/skill_seekers/cli/github_scraper.py` | ~56KB |
| GitHub API | `src/skill_seekers/cli/github_fetcher.py` | ~17KB |
| PDF extraction | `src/skill_seekers/cli/pdf_scraper.py` | Medium |
| Code analysis | `src/skill_seekers/cli/code_analyzer.py` | ~65KB |
| Pattern detection | `src/skill_seekers/cli/pattern_recognizer.py` | Medium |
| Test extraction | `src/skill_seekers/cli/test_example_extractor.py` | Medium |
| Guide generation | `src/skill_seekers/cli/how_to_guide_builder.py` | ~45KB |
| Config extraction | `src/skill_seekers/cli/config_extractor.py` | ~32KB |
| Router generation | `src/skill_seekers/cli/generate_router.py` | ~43KB |
| Signal flow | `src/skill_seekers/cli/signal_flow_analyzer.py` | Medium |

### Adding MCP Tools

1. **Add tool function:** `src/skill_seekers/mcp/tools/{category}_tools.py`
2. **Register tool:** `src/skill_seekers/mcp/server.py` with `@mcp.tool()`
3. **Add tests:** `tests/test_mcp_fastmcp.py`
4. **Update count:** README.md

## Key Files Quick Reference

| Task | File(s) | What to Modify |
|------|---------|----------------|
| Add new CLI command | `cli/my_cmd.py` + `pyproject.toml` | Create `main()` + entry point |
| Add platform adaptor | `adaptors/my_platform.py` + `adaptors/__init__.py` | `BaseAdaptor` + factory |
| Fix scraping logic | `cli/doc_scraper.py` | `scrape_all()`, `extract_content()` |
| Add MCP tool | `mcp/server_fastmcp.py` | `@mcp.tool()` function |
| Fix tests | `tests/test_{feature}.py` | Add/modify test functions |
| Add config preset | `configs/{framework}.json` | Create JSON config |
| Update CI | `.github/workflows/tests.yml` | Modify workflow steps |

## Helper Scripts

```bash
# Bootstrap skill generation - self-hosting skill-seekers as a Claude skill
./scripts/bootstrap_skill.sh

# Start MCP server for HTTP transport
./scripts/start_mcp_server.sh
```

## Performance Characteristics

| Operation | Time | Notes |
|-----------|------|-------|
| Scraping (sync) | 15-45 min | First time, thread-based |
| Scraping (async) | 5-15 min | 2-3x faster with `--async` |
| Building | 1-3 min | Fast rebuild from cache |
| Re-building | <1 min | With `--skip-scrape` |
| Enhancement (LOCAL) | 30-60 sec | Uses Claude Code Max |
| Enhancement (API) | 20-40 sec | Requires API key |
| Packaging | 5-10 sec | Final .zip creation |

## Recent Achievements

**v3.1.0 (In Development):** Unified `create` command, progressive disclosure help, `-p` shortcut, `--enhance-level` consolidation, 1,765 tests passing.

**v3.0.0 (February 10, 2026):** 16 platform adaptors, 26 MCP tools, 1,852 tests, cloud storage (S3/GCS/Azure), AI coding assistants (Cursor/Windsurf/Cline/Continue.dev), quality metrics, multilingual support, streaming ingest, benchmarking, setup wizard, 12 example projects, 18 integration guides.

**v2.9.0:** C3.10 Signal Flow Analysis for Godot projects.

**v2.8.0:** C3.9 Project Documentation Extraction, `--enhance-level` (0-3).

**v2.7.1:** Critical bug fix for config download 404 errors.

**v2.7.0:** Smart rate limit management, interactive config wizard, intelligent rate limit handler, resume capability, CI/CD support, bootstrap skill.

**v2.6.0:** C3.x codebase analysis suite complete (C3.1-C3.8), 4-platform adaptor architecture, 18 MCP tools, 700+ tests.

**C3.x Series (Complete):**
- C3.1: Design pattern detection (10 GoF, 9 languages, 87% precision)
- C3.2: Test example extraction (5 categories, AST-based)
- C3.3: How-to guide generation with AI enhancement
- C3.4: Configuration pattern extraction
- C3.5: Architectural overview & router skill generation
- C3.6: AI enhancement for patterns/test examples
- C3.7: Architectural pattern detection (8 patterns)
- C3.8: Standalone codebase scraper
- C3.9: Project documentation extraction
- C3.10: Signal flow analysis (Godot)

**Earlier:** v2.5.2 (opt-out flags), v2.5.0 (multi-platform), v2.1.0 (unified scraping), v1.0.0 (initial release).

# Architecture Reference

> Layer 2 doc - Read when modifying adaptors, understanding data flow, adding platforms, or exploring codebase design.

## Core Design Pattern: Platform Adaptors

The codebase uses the **Strategy Pattern** with a factory method to support **16 platforms** across 4 categories:

```
src/skill_seekers/cli/adaptors/
├── __init__.py          # Factory: get_adaptor(target/format)
├── base.py              # Abstract base class
# LLM Platforms (3)
├── claude.py            # Claude AI (ZIP + YAML)
├── gemini.py            # Google Gemini (tar.gz)
├── openai.py            # OpenAI ChatGPT (ZIP + Vector Store)
# RAG Frameworks (3)
├── langchain.py         # LangChain Documents
├── llama_index.py       # LlamaIndex TextNodes
├── haystack.py          # Haystack Documents
# Vector Databases (5)
├── chroma.py            # ChromaDB
├── faiss_helpers.py     # FAISS
├── qdrant.py            # Qdrant
├── weaviate.py          # Weaviate
# AI Coding Assistants (4 - via Claude format + config files)
# - Cursor, Windsurf, Cline, Continue.dev
# Generic (1)
├── markdown.py          # Generic Markdown (ZIP)
└── streaming_adaptor.py # Streaming data ingest
```

**Key Methods:**
- `package(skill_dir, output_path)` - Platform-specific packaging
- `upload(package_path, api_key)` - Platform-specific upload (where applicable)
- `enhance(skill_dir, mode)` - AI enhancement with platform-specific models
- `export(skill_dir, format)` - Export to RAG/vector DB formats

## Data Flow (5 Phases)

1. **Scrape Phase** (`doc_scraper.py:scrape_all()`)
   - BFS traversal from base_url
   - Output: `output/{name}_data/pages/*.json`

2. **Build Phase** (`doc_scraper.py:build_skill()`)
   - Load pages → Categorize → Extract patterns
   - Output: `output/{name}/SKILL.md` + `references/*.md`

3. **Enhancement Phase** (optional, `enhance_skill_local.py`)
   - LLM analyzes references → Rewrites SKILL.md
   - Platform-specific models (Sonnet 4, Gemini 2.0, GPT-4o)

4. **Package Phase** (`package_skill.py` → adaptor)
   - Platform adaptor packages in appropriate format
   - Output: `.zip` or `.tar.gz`

5. **Upload Phase** (optional, `upload_skill.py` → adaptor)
   - Upload via platform API

## File Structure (src/ layout) - Key Files Only

```
src/skill_seekers/
├── cli/                              # All CLI commands
│   ├── main.py                       # Git-style CLI dispatcher
│   ├── doc_scraper.py                # Main scraper (~790 lines)
│   │   ├── scrape_all()              # BFS traversal engine
│   │   ├── smart_categorize()        # Category detection
│   │   └── build_skill()             # SKILL.md generation
│   ├── github_scraper.py             # GitHub repo analysis
│   ├── codebase_scraper.py           # Local analysis (C2.x+C3.x)
│   ├── package_skill.py              # Platform packaging
│   ├── unified_scraper.py            # Multi-source scraping
│   ├── unified_codebase_analyzer.py  # Three-stream GitHub+local analyzer
│   ├── enhance_skill_local.py        # AI enhancement (LOCAL mode)
│   ├── enhance_status.py             # Enhancement status monitoring
│   ├── upload_skill.py               # Upload to platforms
│   ├── install_skill.py              # Complete workflow automation
│   ├── install_agent.py              # Install to AI agent directories
│   ├── pattern_recognizer.py         # C3.1 Design pattern detection
│   ├── test_example_extractor.py     # C3.2 Test example extraction
│   ├── how_to_guide_builder.py       # C3.3 How-to guide generation
│   ├── config_extractor.py           # C3.4 Configuration extraction
│   ├── generate_router.py            # C3.5 Router skill generation
│   ├── code_analyzer.py              # Multi-language code analysis
│   ├── api_reference_builder.py      # API documentation builder
│   ├── dependency_analyzer.py        # Dependency graph analysis
│   ├── signal_flow_analyzer.py       # C3.10 Signal flow analysis (Godot)
│   ├── pdf_scraper.py                # PDF extraction
│   └── adaptors/                     # Platform adaptor pattern
│       ├── __init__.py               # Factory: get_adaptor()
│       ├── base_adaptor.py           # Abstract base
│       ├── claude_adaptor.py         # Claude AI
│       ├── gemini_adaptor.py         # Google Gemini
│       ├── openai_adaptor.py         # OpenAI ChatGPT
│       ├── markdown_adaptor.py       # Generic Markdown
│       ├── langchain.py              # LangChain RAG
│       ├── llama_index.py            # LlamaIndex RAG
│       ├── haystack.py               # Haystack RAG
│       ├── chroma.py                 # ChromaDB
│       ├── faiss_helpers.py          # FAISS
│       ├── qdrant.py                 # Qdrant
│       ├── weaviate.py               # Weaviate
│       └── streaming_adaptor.py      # Streaming data ingest
└── mcp/                              # MCP server (26 tools)
    ├── server_fastmcp.py             # FastMCP server
    └── tools/                        # Tool implementations
```

**Most Modified Files (when contributing):**
- Platform adaptors: `src/skill_seekers/cli/adaptors/{platform}.py`
- Tests: `tests/test_{feature}.py`
- Configs: `configs/{framework}.json`

## Why src/ Layout?

Modern Python best practice (PEP 517/518):
- Prevents accidental imports from repo root
- Forces proper package installation
- Better isolation between package and tests
- Required: `pip install -e .` before running tests

## Why Platform Adaptors?

Strategy pattern benefits:
- Single codebase supports 16 platforms
- Platform-specific optimizations (format, APIs, models)
- Easy to add new platforms (implement BaseAdaptor)
- Clean separation of concerns
- Testable in isolation

## Why Git-style CLI?

User experience benefits:
- Familiar to developers (like `git`)
- Single entry point: `skill-seekers`
- Backward compatible: individual tools still work
- Cleaner than multiple separate commands

## Three-Stream GitHub Architecture

The `unified_codebase_analyzer.py` splits GitHub repositories into three independent streams:

**Stream 1: Code Analysis** (C3.x features)
- Deep AST parsing (9 languages)
- Design pattern detection (C3.1)
- Test example extraction (C3.2)
- How-to guide generation (C3.3)
- Configuration extraction (C3.4)
- Architectural overview (C3.5)
- API reference + dependency graphs

**Stream 2: Documentation**
- README, CONTRIBUTING, LICENSE
- docs/ directory markdown files
- Wiki pages (if available)
- CHANGELOG and version history

**Stream 3: Community Insights**
- GitHub metadata (stars, forks, watchers)
- Issue analysis (top problems and solutions)
- PR trends and contributor stats
- Release history
- Label-based topic detection

**Key Benefits:**
- Unified interface for GitHub URLs and local paths
- Analysis depth control: 'basic' (1-2 min) or 'c3x' (20-60 min)
- Enhanced router generation with GitHub context
- Smart keyword extraction weighted by GitHub labels (2x weight)

## Project-Specific Best Practices

1. **Prefer the unified `create` command** - Use `skill-seekers create <source>` over legacy commands
2. **Always use platform adaptors** - Never hardcode platform-specific logic
3. **Test all platforms** - Changes must work for all 16 platforms
4. **Maintain backward compatibility** - Legacy commands (scrape, github, analyze) must still work
5. **Document API changes** - Update CHANGELOG.md for every release
6. **Keep dependencies optional** - Platform-specific deps are optional (RAG, cloud, etc.)
7. **Use src/ layout** - Proper package structure with `pip install -e .`
8. **Run tests before commits** - Never skip tests (1,765+ tests must pass)
9. **RAG-first mindset** - v3.0.0 is the universal preprocessor for AI systems
10. **Export format clarity** - Use `--format` for RAG/vector DBs, `--target` for LLM platforms
11. **Test with real integrations** - Verify exports work with actual LangChain, ChromaDB, etc.
12. **Progressive disclosure** - When adding flags, categorize as universal/source-specific/advanced

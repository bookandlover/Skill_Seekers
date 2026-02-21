# Implementation Details Reference

> Layer 2 doc - Read when modifying CLI, create command, adaptors, enhancement, or C3.x features.

## CLI Architecture (Git-style)

**Entry point:** `src/skill_seekers/cli/main.py`

The unified CLI modifies `sys.argv` and calls existing `main()` functions to maintain backward compatibility:

```python
# Example: skill-seekers scrape --config react.json
# Transforms to: doc_scraper.main() with modified sys.argv
```

**Subcommands:** create, scrape, github, pdf, unified, codebase, enhance, enhance-status, package, upload, estimate, install, install-agent, patterns, how-to-guides

## Unified `create` Command

**The recommended way to create skills** - Auto-detects source type and provides progressive help disclosure:

```bash
# Auto-detection examples
skill-seekers create https://docs.react.dev/         # Web scraping
skill-seekers create facebook/react                  # GitHub analysis
skill-seekers create ./my-project                    # Local codebase
skill-seekers create tutorial.pdf                    # PDF extraction
skill-seekers create configs/react.json              # Multi-source

# Progressive help system
skill-seekers create --help           # Shows universal args only (13 flags)
skill-seekers create --help-web       # Shows web-specific options
skill-seekers create --help-github    # Shows GitHub-specific options
skill-seekers create --help-local     # Shows local analysis options
skill-seekers create --help-pdf       # Shows PDF extraction options
skill-seekers create --help-advanced  # Shows advanced/rare options
skill-seekers create --help-all       # Shows all 120+ flags

# Universal flags work for ALL sources
skill-seekers create <source> -p quick                    # Preset (-p shortcut)
skill-seekers create <source> --enhance-level 2           # AI enhancement (0-3)
skill-seekers create <source> --chunk-for-rag             # RAG chunking
skill-seekers create <source> --dry-run                   # Preview
```

**Create Command Files:**
1. **Parser:** `src/skill_seekers/cli/parsers/create_parser.py`
   - Defines help text and formatter
   - Registers help mode flags (`--help-web`, `--help-github`, etc.)
   - Uses custom `NoWrapFormatter` for better help display

2. **Arguments:** `src/skill_seekers/cli/arguments/create.py`
   - Three tiers of arguments:
     - `UNIVERSAL_ARGUMENTS` (13 flags) - Work for all sources
     - Source-specific dicts (`WEB_ARGUMENTS`, `GITHUB_ARGUMENTS`, etc.)
     - `ADVANCED_ARGUMENTS` - Rare/advanced options
   - `add_create_arguments(parser, mode)` - Multi-mode argument addition

3. **Source Detection:** `src/skill_seekers/cli/source_detector.py` (if implemented)
4. **Main Logic:** `src/skill_seekers/cli/create_command.py` (if implemented)

**Adding a new universal flag example:**
```python
# In arguments/create.py
UNIVERSAL_ARGUMENTS = {
    "my_flag": {
        "flags": ("--my-flag", "-m"),
        "kwargs": {
            "action": "store_true",
            "help": "Description of my flag",
        },
    },
}
```

## Platform Adaptor Usage

```python
from skill_seekers.cli.adaptors import get_adaptor

# Get platform-specific adaptor
adaptor = get_adaptor('gemini')  # or 'claude', 'openai', 'markdown'

# Package skill
adaptor.package(skill_dir='output/react/', output_path='output/')

# Upload to platform
adaptor.upload(
    package_path='output/react-gemini.tar.gz',
    api_key=os.getenv('GOOGLE_API_KEY')
)

# AI enhancement
adaptor.enhance(skill_dir='output/react/', mode='api')
```

## C3.x Codebase Analysis Features

**C3.1 Design Pattern Detection** (`pattern_recognizer.py`):
- Detects 10 common patterns: Singleton, Factory, Observer, Strategy, Decorator, Builder, Adapter, Command, Template Method, Chain of Responsibility
- Supports 9 languages: Python, JavaScript, TypeScript, C++, C, C#, Go, Rust, Java
- Three detection levels: surface (fast), deep (balanced), full (thorough)
- 87% precision, 80% recall on real-world projects

**C3.2 Test Example Extraction** (`test_example_extractor.py`):
- Extracts real usage examples from test files
- Categories: instantiation, method_call, config, setup, workflow
- AST-based for Python, regex-based for 8 other languages

**C3.3 How-To Guide Generation** (`how_to_guide_builder.py`):
- Transforms test workflows into educational guides
- 5 AI enhancements: step descriptions, troubleshooting, prerequisites, next steps, use cases
- Dual-mode AI: API (fast) or LOCAL (free with Claude Code Max)
- 4 grouping strategies: AI tutorial group, file path, test name, complexity

**C3.4 Configuration Pattern Extraction** (`config_extractor.py`):
- Extracts configuration patterns from codebases
- Identifies config files, env vars, CLI arguments

**C3.5 Architectural Overview** (`generate_router.py`):
- Generates comprehensive ARCHITECTURE.md files
- Router skill generation for large documentation
- Quality improvements: 6.5/10 → 8.5/10 (+31%)

**C3.6 AI Enhancement** (Claude API integration):
- Enhances C3.1-C3.5 with AI-powered insights

**C3.7 Architectural Pattern Detection** (`architectural_pattern_detector.py`):
- Detects 8 architectural patterns (MVC, MVVM, MVP, Repository, etc.)
- Framework detection (Django, Flask, Spring, React, Angular, etc.)

**C3.8 Standalone Codebase Scraper** (`codebase_scraper.py`):
```bash
skill-seekers analyze --directory /path/to/repo --quick      # 1-2 min
skill-seekers analyze --directory . --comprehensive           # 20-60 min
skill-seekers analyze --directory . --enhance-level 1         # SKILL.md only
skill-seekers analyze --directory . --enhance-level 2         # + Architecture + Config + Docs
skill-seekers analyze --directory . --enhance-level 3         # Full enhancement
skill-seekers analyze --directory . --skip-patterns --skip-how-to-guides
```

**C3.9 Project Documentation Extraction** (`codebase_scraper.py`):
- Extracts and categorizes all markdown files from the project
- Controlled by depth: surface=raw copy, deep=parse+summarize, full=AI-enhanced
- Default ON, use `--skip-docs` to disable

**C3.10 Signal Flow Analysis for Godot Projects** (`signal_flow_analyzer.py`):
- Complete signal flow analysis for event-driven Godot architectures
- Signal declaration, connection mapping, emission tracking
- Signal pattern detection: EventBus (0.90), Observer (0.85), Event Chains (0.80)
- Outputs: `signal_flow.json`, `signal_flow.mmd`, `signal_reference.md`, `signal_how_to_guides.md`
- Comprehensive Godot 4.x support (GDScript, .tscn, .tres, .gdshader)

**Key Architecture Decision (BREAKING in v2.5.2):**
- Changed from opt-in (`--build-*`) to opt-out (`--skip-*`) flags
- All analysis features now ON by default for maximum value

## Smart Categorization Algorithm

Located in `doc_scraper.py:smart_categorize()`:
- Scores pages against category keywords
- 3 points for URL match, 2 for title, 1 for content
- Threshold of 2+ for categorization
- Auto-infers categories from URL segments if none provided
- Falls back to "other" category

## Language Detection

Located in `doc_scraper.py:detect_language()`:
1. CSS class attributes (`language-*`, `lang-*`)
2. Heuristics (keywords like `def`, `const`, `func`)

## Configuration File Structure

Configs (`configs/*.json`) define scraping behavior:

```json
{
  "name": "framework-name",
  "description": "When to use this skill",
  "base_url": "https://docs.example.com/",
  "selectors": {
    "main_content": "article",
    "title": "h1",
    "code_blocks": "pre code"
  },
  "url_patterns": {
    "include": ["/docs"],
    "exclude": ["/blog"]
  },
  "categories": {
    "getting_started": ["intro", "quickstart"],
    "api": ["api", "reference"]
  },
  "rate_limit": 0.5,
  "max_pages": 500
}
```

## AI Enhancement Modes

AI enhancement transforms basic skills (2-3/10) into production-ready skills (8-9/10). Two modes:

**API Mode** (default if ANTHROPIC_API_KEY is set):
- Direct Claude API calls (fast, efficient)
- Cost: ~$0.15-$0.30 per skill
- Perfect for CI/CD automation

**LOCAL Mode** (fallback if no API key):
- Uses Claude Code CLI (your existing Max plan)
- Free! No API charges
- 4 execution modes: Headless, Background, Daemon, Terminal
- Status monitoring: `skill-seekers enhance-status output/react/ --watch`

### Enhancement Flag Consolidation

**`--enhance-level LEVEL`** - Granular AI enhancement control (0-3, default: 2):
- `0` - Disabled
- `1` - SKILL.md only
- `2` - + Architecture + Config + Docs (default)
- `3` - Full enhancement

**Auto-detection:** If `ANTHROPIC_API_KEY` is set → API mode, otherwise → LOCAL mode.

Old flags (`--enhance`, `--enhance-local`, `--api-key`) still work with deprecation warnings, removed in v4.0.0.

See `docs/ENHANCEMENT_MODES.md` for detailed documentation.

## Key Code Locations

**Documentation Scraper** (`src/skill_seekers/cli/doc_scraper.py`):
- `is_valid_url()`, `extract_content()`, `detect_language()`, `extract_patterns()`
- `smart_categorize()`, `infer_categories()`, `generate_quick_reference()`
- `create_enhanced_skill_md()`, `scrape_all()`, `main()`

**Codebase Analysis** (`src/skill_seekers/cli/`):
- `codebase_scraper.py` - Main CLI for local codebase analysis
- `code_analyzer.py` - Multi-language AST parsing (9 languages)
- `api_reference_builder.py` - API documentation generation
- `dependency_analyzer.py` - NetworkX-based dependency graphs
- `pattern_recognizer.py` - C3.1 design pattern detection
- `test_example_extractor.py` - C3.2 test example extraction
- `how_to_guide_builder.py` - C3.3 guide generation
- `config_extractor.py` - C3.4 configuration extraction
- `generate_router.py` - C3.5 router skill generation
- `signal_flow_analyzer.py` - C3.10 signal flow analysis
- `unified_codebase_analyzer.py` - Three-stream analyzer

**AI Enhancement** (`src/skill_seekers/cli/`):
- `enhance_skill_local.py` - LOCAL mode (4 execution modes)
- `enhance_skill.py` - API mode
- `enhance_status.py` - Status monitoring
- `ai_enhancer.py` - Shared AI logic
- `guide_enhancer.py` - C3.3 guide AI enhancement
- `config_enhancer.py` - C3.4 config AI enhancement

**Platform Adaptors** (`src/skill_seekers/cli/adaptors/`):
- `__init__.py` - Factory function
- `base_adaptor.py` - Abstract base class
- `claude_adaptor.py`, `gemini_adaptor.py`, `openai_adaptor.py`, `markdown_adaptor.py`

**MCP Server** (`src/skill_seekers/mcp/`):
- `server.py` - FastMCP-based server
- `tools/` - Tool implementations

**Configuration & Rate Limit Management** (`src/skill_seekers/cli/`):
- `config_manager.py` - Multi-token configuration system (~490 lines)
  - `ConfigManager` class - Singleton, profile management, progress save/load
- `config_command.py` - Interactive configuration wizard (~400 lines)
- `rate_limit_handler.py` - Smart rate limit detection and handling (~450 lines)
  - `RateLimitHandler` class - Strategy pattern (prompt/wait/switch/fail)
- `resume_command.py` - Resume interrupted scraping jobs (~150 lines)

**GitHub Integration** (`src/skill_seekers/cli/`):
- `github_fetcher.py` - Rate limit handler integrated, `interactive`/`profile_name` params
- `github_scraper.py` - `--non-interactive`, `--profile` flags

**RAG & Vector Database Adaptors** (`src/skill_seekers/cli/adaptors/`):
- `langchain.py` (~250 lines) - LangChain Documents export
- `llama_index.py` (~280 lines) - LlamaIndex TextNodes export
- `haystack.py` (~230 lines) - Haystack Documents export
- `chroma.py` (~350 lines) - ChromaDB integration
- `weaviate.py` (~320 lines) - Weaviate vector search
- `faiss_helpers.py` (~280 lines) - FAISS index generation
- `qdrant.py` (~300 lines) - Qdrant vector database
- `streaming_adaptor.py` (~200 lines) - Streaming data ingest

**Cloud Storage & Infrastructure** (`src/skill_seekers/cli/`):
- `cloud_storage_cli.py` - S3/GCS/Azure (~450 lines)
- `embedding_pipeline.py` - Embedding generation (~320 lines)
- `sync_cli.py` - Continuous sync & monitoring (~380 lines)
- `incremental_updater.py` - Smart incremental updates (~350 lines)
- `streaming_ingest.py` - Real-time data streaming (~290 lines)
- `benchmark_cli.py` - Performance benchmarking (~280 lines)
- `quality_metrics.py` - Quality analysis & reporting (~340 lines)
- `multilang_support.py` - Internationalization support (~260 lines)
- `setup_wizard.py` - Interactive setup wizard (~220 lines)

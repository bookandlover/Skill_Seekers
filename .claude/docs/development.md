# Development Reference

> Layer 2 doc - Read when building, testing, publishing, or working with CI/CD.

## Setup

```bash
# Install in editable mode (required before tests due to src/ layout)
pip install -e .

# Install with all platform dependencies
pip install -e ".[all-llms]"

# Install specific platforms
pip install -e ".[gemini]"   # Google Gemini
pip install -e ".[openai]"   # OpenAI ChatGPT
```

## Running Tests

**CRITICAL: Never skip tests** - User requires all tests to pass before commits.

```bash
# All tests (must run pip install -e . first!)
pytest tests/ -v

# Specific test file
pytest tests/test_scraper_features.py -v

# Multi-platform tests
pytest tests/test_install_multiplatform.py -v

# With coverage
pytest tests/ --cov=src/skill_seekers --cov-report=term --cov-report=html

# Single test
pytest tests/test_scraper_features.py::test_detect_language -v

# MCP server tests
pytest tests/test_mcp_fastmcp.py -v
```

**Test Architecture:**
- 46 test files covering all features
- CI Matrix: Ubuntu + macOS, Python 3.10-3.13
- **1,765 tests passing** (current), up from 700+ in v2.x, growing to 1,852+ in v3.1.0
- Must run `pip install -e .` before tests (src/ layout requirement)

## Building & Publishing

```bash
# Build package (using uv - recommended)
uv build

# Or using build
python -m build

# Publish to PyPI
uv publish

# Or using twine
python -m twine upload dist/*
```

## Testing CLI Commands

```bash
# Configuration wizard
skill-seekers config --show
skill-seekers config --github
skill-seekers config --test

# Resume functionality
skill-seekers resume --list
skill-seekers resume --clean

# GitHub scraping with profiles
skill-seekers github --repo facebook/react --profile personal
skill-seekers github --repo owner/repo --non-interactive

# Scraping (dry run)
skill-seekers scrape --config configs/react.json --dry-run

# Codebase analysis
skill-seekers analyze --directory . --output output/codebase/

# Pattern detection (C3.1)
skill-seekers patterns --file src/skill_seekers/cli/code_analyzer.py

# How-to guide generation (C3.3)
skill-seekers how-to-guides output/test_examples.json --output output/guides/

# Enhancement status monitoring
skill-seekers enhance-status output/react/ --watch

# Multi-platform packaging
skill-seekers package output/react/ --target gemini --dry-run

# MCP server (stdio mode)
python -m skill_seekers.mcp.server_fastmcp

# MCP server (HTTP mode)
python -m skill_seekers.mcp.server_fastmcp --transport http --port 8765
```

## v3.0.0 CLI Commands

```bash
# Setup wizard
skill-seekers-setup

# Cloud storage
skill-seekers cloud upload --provider s3 --bucket my-bucket output/react.zip
skill-seekers cloud download --provider gcs --bucket my-bucket react.zip
skill-seekers cloud list --provider azure --container my-container

# Embedding server
skill-seekers embed --port 8080 --model sentence-transformers

# Sync & incremental updates
skill-seekers sync --source https://docs.react.dev/ --target output/react/
skill-seekers update --skill output/react/ --check-changes

# Quality metrics & benchmarking
skill-seekers quality --skill output/react/ --report
skill-seekers benchmark --config configs/react.json --compare-versions

# Multilingual support
skill-seekers multilang --detect output/react/
skill-seekers multilang --translate output/react/ --target zh-CN

# Streaming data ingest
skill-seekers stream --source docs/ --target output/streaming/
```

## Test Markers (from pytest.ini_options)

```bash
# Run only fast unit tests (default)
pytest tests/ -v

# Include slow tests (>5 seconds)
pytest tests/ -v -m slow

# Run integration tests (requires external services)
pytest tests/ -v -m integration

# Run end-to-end tests (resource-intensive, creates files)
pytest tests/ -v -m e2e

# Run tests requiring virtual environment setup
pytest tests/ -v -m venv

# Run bootstrap feature tests
pytest tests/ -v -m bootstrap

# Skip slow and integration tests (fastest)
pytest tests/ -v -m "not slow and not integration"
```

**When to use which:**
- **Local development:** Default (fast tests only) - `pytest tests/ -v`
- **Pre-commit:** Fast tests - `pytest tests/ -v`
- **Before PR:** Include slow + integration - `pytest tests/ -v -m "not e2e"`
- **CI validation:** All tests run automatically

## Key Test Files

- `test_scraper_features.py` - Core scraping functionality
- `test_mcp_server.py` - MCP integration (18 tools)
- `test_mcp_fastmcp.py` - FastMCP framework
- `test_unified.py` - Multi-source scraping
- `test_github_scraper.py` - GitHub analysis
- `test_pdf_scraper.py` - PDF extraction
- `test_install_multiplatform.py` - Multi-platform packaging
- `test_integration.py` - End-to-end workflows
- `test_install_skill.py` - One-command install
- `test_install_agent.py` - AI agent installation
- `conftest.py` - Test configuration (checks package installation)

## Package Structure (pyproject.toml)

### Entry Points

```toml
[project.scripts]
# Main unified CLI
skill-seekers = "skill_seekers.cli.main:main"

# Individual tool entry points (Core)
skill-seekers-config = "skill_seekers.cli.config_command:main"
skill-seekers-resume = "skill_seekers.cli.resume_command:main"
skill-seekers-scrape = "skill_seekers.cli.doc_scraper:main"
skill-seekers-github = "skill_seekers.cli.github_scraper:main"
skill-seekers-pdf = "skill_seekers.cli.pdf_scraper:main"
skill-seekers-unified = "skill_seekers.cli.unified_scraper:main"
skill-seekers-codebase = "skill_seekers.cli.codebase_scraper:main"
skill-seekers-enhance = "skill_seekers.cli.enhance_skill_local:main"
skill-seekers-enhance-status = "skill_seekers.cli.enhance_status:main"
skill-seekers-package = "skill_seekers.cli.package_skill:main"
skill-seekers-upload = "skill_seekers.cli.upload_skill:main"
skill-seekers-estimate = "skill_seekers.cli.estimate_pages:main"
skill-seekers-install = "skill_seekers.cli.install_skill:main"
skill-seekers-install-agent = "skill_seekers.cli.install_agent:main"
skill-seekers-patterns = "skill_seekers.cli.pattern_recognizer:main"
skill-seekers-how-to-guides = "skill_seekers.cli.how_to_guide_builder:main"

# v3.0.0 Entry Points
skill-seekers-setup = "skill_seekers.cli.setup_wizard:main"
skill-seekers-cloud = "skill_seekers.cli.cloud_storage_cli:main"
skill-seekers-embed = "skill_seekers.embedding.server:main"
skill-seekers-sync = "skill_seekers.cli.sync_cli:main"
skill-seekers-benchmark = "skill_seekers.cli.benchmark_cli:main"
skill-seekers-stream = "skill_seekers.cli.streaming_ingest:main"
skill-seekers-update = "skill_seekers.cli.incremental_updater:main"
skill-seekers-multilang = "skill_seekers.cli.multilang_support:main"
skill-seekers-quality = "skill_seekers.cli.quality_metrics:main"
```

### Optional Dependencies

**Project uses PEP 735 `[dependency-groups]` (Python 3.13+)**:

```toml
[project.optional-dependencies]
gemini = ["google-generativeai>=0.8.0"]
openai = ["openai>=1.0.0"]
all-llms = ["google-generativeai>=0.8.0", "openai>=1.0.0"]

[dependency-groups]  # PEP 735 (replaces tool.uv.dev-dependencies)
dev = [
    "pytest>=8.4.2",
    "pytest-asyncio>=0.24.0",
    "pytest-cov>=7.0.0",
    "coverage>=7.11.0",
]
```

### Platform-Specific Dependencies

```bash
pip install -e ".[gemini]"         # Google Gemini
pip install -e ".[openai]"         # OpenAI ChatGPT
pip install -e ".[chroma]"         # ChromaDB
pip install -e ".[weaviate]"       # Weaviate
pip install -e ".[s3]"             # AWS S3
pip install -e ".[gcs]"            # Google Cloud Storage
pip install -e ".[azure]"          # Azure Blob Storage
pip install -e ".[mcp]"            # MCP integration
pip install -e ".[all]"            # Everything (16 platforms + cloud + embedding)
```

## CI/CD Pipeline

The project has GitHub Actions workflows in `.github/workflows/`:

**tests.yml** - Runs on every push and PR to `main` or `development`:

1. **Lint Job** (Python 3.12, Ubuntu):
   - `ruff check src/ tests/` - Code linting with GitHub annotations
   - `ruff format --check src/ tests/` - Format validation
   - `mypy src/skill_seekers` - Type checking (continue-on-error)

2. **Test Job** (Matrix):
   - **OS:** Ubuntu + macOS
   - **Python:** 3.10, 3.11, 3.12
   - **Exclusions:** macOS + Python 3.10 (speed optimization)
   - **Steps:**
     - Install dependencies + `pip install -e .`
     - Run CLI tests (scraper, config, integration)
     - Run MCP server tests
     - Generate coverage report → Upload to Codecov

3. **Summary Job** - Single status check for branch protection

**release.yml** - Triggers on version tags (e.g., `v2.9.0`):
- Builds package with `uv build`
- Publishes to PyPI with `uv publish`
- Creates GitHub release

**Local Pre-Commit Validation:**

```bash
# 1. Code quality (matches lint job)
ruff check src/ tests/
ruff format --check src/ tests/
mypy src/skill_seekers

# 2. Tests (matches test job)
pip install -e .
pytest tests/ -v --cov=src/skill_seekers --cov-report=term

# 3. If all pass, you're good to push!
git push origin feature/my-feature
```

**Branch Protection Rules:**
- **main:** Requires tests + 1 review, only maintainers merge
- **development:** Requires tests to pass, default target for PRs

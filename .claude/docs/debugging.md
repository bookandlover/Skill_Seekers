# Debugging Reference

> Layer 2 doc - Read when encountering errors, test failures, or troubleshooting issues.

## Common Pitfalls & Solutions

### 1. Import Errors
**Problem:** `ModuleNotFoundError: No module named 'skill_seekers'`
**Solution:** `pip install -e .`
**Why:** The src/ layout prevents imports from repo root. Package must be installed.

### 2. Tests Fail with "No module named..."
**Solution:** CI runs `pip install -e .` before tests - do the same locally.

### 3. Platform-Specific Dependencies Not Found
**Problem:** `ModuleNotFoundError: No module named 'google.generativeai'`
**Solution:**
```bash
pip install -e ".[gemini]"   # For Gemini
pip install -e ".[openai]"   # For OpenAI
pip install -e ".[all-llms]" # For all platforms
```

### 4. Git Branch Confusion
**Problem:** PR targets `main` instead of `development`
**Solution:**
```bash
git checkout development
git pull upstream development
git checkout -b feature/my-feature
# Create PR: feature/my-feature → development
```

### 5. Tests Pass Locally But Fail in CI
**Solution:** Test with multiple Python versions (CI: 3.10, 3.11, 3.12 on Ubuntu + macOS)

### 6. Enhancement Not Working
```bash
echo $ANTHROPIC_API_KEY                                    # Check API key
skill-seekers enhance output/react/ --mode LOCAL           # Try LOCAL mode
skill-seekers enhance-status output/react/ --watch         # Monitor status
```

### 7. Rate Limit Errors from GitHub
**Problem:** `403 Forbidden` from GitHub API
```bash
curl -H "Authorization: token $GITHUB_TOKEN" https://api.github.com/rate_limit
skill-seekers config --github                              # Configure profiles
skill-seekers github --repo owner/repo --profile work      # Use specific profile
skill-seekers config --test                                # Test all tokens
```

### 8. Confused About Command Options
```bash
skill-seekers create --help           # Universal options (13 flags)
skill-seekers create --help-web       # Web scraping options
skill-seekers create --help-github    # GitHub-specific flags
skill-seekers create --help-all       # ALL options (120+ flags)
skill-seekers create <source> -p quick  # Quick preset shortcut
```

## Debugging Tips

### Enable Verbose Logging
```bash
export SKILL_SEEKERS_DEBUG=1
skill-seekers scrape --config configs/react.json
```

### Test Single Function/Module
```bash
python -m skill_seekers.cli.doc_scraper --help
python -m skill_seekers.cli.github_scraper --repo facebook/react --dry-run
python -m skill_seekers.cli.package_skill --help
python -m skill_seekers.mcp.server_fastmcp
```

### Use pytest with Debugging
```bash
pytest tests/test_scraper_features.py --pdb          # Drop into debugger on failure
pytest tests/test_scraper_features.py -s             # Show print statements
pytest tests/test_scraper_features.py -vv            # Verbose output
pytest tests/ --lf                                   # Run only failed tests from last run
pytest tests/ -x                                     # Stop on first failure
pytest tests/ -l                                     # Show local variables on failure
```

### Debug Specific Test
```bash
pytest tests/test_scraper_features.py::test_detect_language -vv -s
pytest tests/test_scraper_features.py::test_detect_language --pdb
```

### Check Package Installation
```bash
pip list | grep skill-seekers
pip show skill-seekers
python -c "import skill_seekers; print(skill_seekers.__version__)"
which skill-seekers
skill-seekers --version
```

### Common Error Messages & Solutions

| Error | Solution |
|-------|----------|
| `ModuleNotFoundError: No module named 'skill_seekers'` | `pip install -e .` |
| `403 Forbidden` from GitHub API | Set `GITHUB_TOKEN` or `skill-seekers config --github` |
| `SKILL.md enhancement failed` | Check `ANTHROPIC_API_KEY` or use `--mode LOCAL` |
| `No such file or directory: 'configs/myconfig.json'` | Config path resolution: exact → `./configs/` → `~/.config/skill-seekers/configs/` → API |
| `pytest: command not found` | `pip install pytest pytest-asyncio pytest-cov coverage` |
| `ruff: command not found` | `pip install ruff` or `uvx ruff check src/` |

### Debugging Scraping Issues

**No content extracted?**
```python
from bs4 import BeautifulSoup
import requests

url = "https://docs.example.com/page"
soup = BeautifulSoup(requests.get(url).content, 'html.parser')

# Try different selectors
print(soup.select_one('article'))
print(soup.select_one('main'))
print(soup.select_one('div[role="main"]'))
print(soup.select_one('.documentation-content'))
```

**Categories not working?**
- Check `categories` in config has correct keywords
- Run with `--dry-run` to see categorization without scraping
- Enable debug mode: `export SKILL_SEEKERS_DEBUG=1`

### Profiling Performance
```bash
python -m cProfile -o profile.stats -m skill_seekers.cli.doc_scraper --config configs/react.json --max-pages 10
python -m pstats profile.stats
# > sort cumtime
# > stats 20
```

### Test Debugging Cheat Sheet
```bash
pytest tests/test_file.py::test_name -vv             # Verbose specific test
pytest tests/test_file.py -s                          # Show print output
pytest tests/test_file.py --cov=src/skill_seekers --cov-report=term-missing  # Coverage
pytest tests/ -v -m "not slow and not integration"    # Fast tests only
```

### Config Debugging
```bash
skill-seekers-validate configs/myconfig.json          # Validate structure
skill-seekers config --show                           # Show current config
skill-seekers estimate configs/myconfig.json          # Estimate pages
```

## Additional Documentation

**Official Website:**
- [SkillSeekersWeb.com](https://skillseekersweb.com/) - Browse 24+ preset configs

**For Users:**
- [README.md](README.md) - Complete user documentation
- [BULLETPROOF_QUICKSTART.md](BULLETPROOF_QUICKSTART.md) - Beginner guide
- [TROUBLESHOOTING.md](TROUBLESHOOTING.md) - Common issues

**For Developers:**
- [CHANGELOG.md](CHANGELOG.md) - Release history
- [ROADMAP.md](ROADMAP.md) - 136 tasks across 10 categories
- [docs/UNIFIED_SCRAPING.md](docs/UNIFIED_SCRAPING.md) - Multi-source scraping
- [docs/MCP_SETUP.md](docs/MCP_SETUP.md) - MCP server setup
- [docs/ENHANCEMENT_MODES.md](docs/ENHANCEMENT_MODES.md) - AI enhancement modes
- [docs/PATTERN_DETECTION.md](docs/PATTERN_DETECTION.md) - C3.1 pattern detection
- [docs/THREE_STREAM_STATUS_REPORT.md](docs/THREE_STREAM_STATUS_REPORT.md) - Three-stream architecture
- [docs/MULTI_LLM_SUPPORT.md](docs/MULTI_LLM_SUPPORT.md) - Multi-platform support

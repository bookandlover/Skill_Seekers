# Integrations Reference

> Layer 2 doc - Read when working with MCP, RAG pipelines, vector databases, AI coding assistants, or cloud storage.

## MCP Integration (26 Tools)

**Transport modes:**
- stdio: Claude Code, VS Code + Cline
- HTTP: Cursor, Windsurf, IntelliJ IDEA

**Core Tools (9):**
1. `list_configs` - List preset configurations
2. `generate_config` - Generate config from docs URL
3. `validate_config` - Validate config structure
4. `estimate_pages` - Estimate page count
5. `scrape_docs` - Scrape documentation
6. `package_skill` - Package to format (supports `--format` and `--target`)
7. `upload_skill` - Upload to platform (supports `--target`)
8. `enhance_skill` - AI enhancement with platform support
9. `install_skill` - Complete workflow automation

**Extended Tools (10):**
10. `scrape_github` - GitHub repository analysis
11. `scrape_pdf` - PDF extraction
12. `unified_scrape` - Multi-source scraping
13. `merge_sources` - Merge docs + code
14. `detect_conflicts` - Find discrepancies
15. `add_config_source` - Register git repos
16. `fetch_config` - Fetch configs from git
17. `list_config_sources` - List registered sources
18. `remove_config_source` - Remove config source
19. `split_config` - Split large configs

**Vector DB Tools (4):**
20. `export_to_chroma` - Export to ChromaDB
21. `export_to_weaviate` - Export to Weaviate
22. `export_to_faiss` - Export to FAISS
23. `export_to_qdrant` - Export to Qdrant

**Cloud Tools (3):**
24. `cloud_upload` - Upload to S3/GCS/Azure
25. `cloud_download` - Download from cloud storage
26. `cloud_list` - List files in cloud storage

### Starting MCP Server

```bash
# stdio mode (Claude Code, VS Code + Cline)
python -m skill_seekers.mcp.server_fastmcp

# HTTP mode (Cursor, Windsurf, IntelliJ)
python -m skill_seekers.mcp.server_fastmcp --transport http --port 8765
```

## RAG Framework & Vector Database Integrations

### RAG Frameworks

**LangChain Documents:**
```bash
skill-seekers package output/django --format langchain
# Output: output/django-langchain.json
# Format: Array of LangChain Document objects (page_content + metadata)
```

```python
from langchain.document_loaders import JSONLoader
loader = JSONLoader("output/django-langchain.json")
documents = loader.load()
```

**LlamaIndex TextNodes:**
```bash
skill-seekers package output/django --format llama-index
# Output: output/django-llama-index.json
# Format: Array of LlamaIndex TextNode objects (text + id_ + metadata + relationships)
```

**Haystack Documents:**
```bash
skill-seekers package output/django --format haystack
# Output: output/django-haystack.json
```

### Vector Databases

**ChromaDB:**
```bash
skill-seekers package output/django --format chroma
skill-seekers package output/django --format chroma --upload  # Direct upload
# env: CHROMA_HOST, CHROMA_PORT
```

**FAISS:**
```bash
skill-seekers package output/django --format faiss
# Output: django-faiss.index + django-faiss-metadata.json
```

**Weaviate:**
```bash
skill-seekers package output/django --format weaviate --upload
# env: WEAVIATE_URL, WEAVIATE_API_KEY
```

**Qdrant:**
```bash
skill-seekers package output/django --format qdrant --upload
# env: QDRANT_URL, QDRANT_API_KEY
```

**Pinecone (via Markdown):**
```bash
skill-seekers package output/django --target markdown
# Then use Pinecone's Python client for upsert
```

### Complete RAG Pipeline Example

```bash
# 1. Scrape documentation
skill-seekers scrape --config configs/django.json

# 2. Export to your RAG stack
skill-seekers package output/django --format langchain
skill-seekers package output/django --format chroma --upload

# 3. Use in your application (see examples/)
```

**Integration Hub:** [docs/integrations/RAG_PIPELINES.md](docs/integrations/RAG_PIPELINES.md)

## AI Coding Assistant Integrations

### Cursor IDE
```bash
skill-seekers package output/react/ --target claude
cp output/react-claude/SKILL.md .cursorrules
# Restart Cursor - AI now has framework expertise!
```
**Guide:** [docs/integrations/CURSOR.md](docs/integrations/CURSOR.md)

### Windsurf
```bash
skill-seekers package output/django/ --target claude
mkdir -p .windsurf/rules
cp output/django-claude/SKILL.md .windsurf/rules/django.md
```
**Guide:** [docs/integrations/WINDSURF.md](docs/integrations/WINDSURF.md)

### Cline (VS Code Extension)
```bash
skill-seekers package output/fastapi/ --target claude
cp output/fastapi-claude/SKILL.md .clinerules
```
**Guide:** [docs/integrations/CLINE.md](docs/integrations/CLINE.md)

### Continue.dev (Universal IDE)
```bash
cd examples/continue-dev-universal/
python context_server.py --port 8765
# Configure in ~/.continue/config.json with HTTP context provider
# Works in ALL IDEs: VS Code, JetBrains, Vim, Emacs
```
**Guide:** [docs/integrations/CONTINUE_DEV.md](docs/integrations/CONTINUE_DEV.md)

### Multi-IDE Team Setup
```bash
# Use Continue.dev as universal context provider
python context_server.py --host 0.0.0.0 --port 8765
# ALL team members configure Continue.dev for identical AI suggestions
```

**Integration Hub:** [docs/integrations/INTEGRATIONS.md](docs/integrations/INTEGRATIONS.md)

## Cloud Storage Integration

### AWS S3
```bash
skill-seekers cloud upload --provider s3 --bucket my-skills output/react.zip
skill-seekers cloud download --provider s3 --bucket my-skills react.zip
skill-seekers cloud list --provider s3 --bucket my-skills
# env: AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_REGION
```

### Google Cloud Storage
```bash
skill-seekers cloud upload --provider gcs --bucket my-skills output/react.zip
skill-seekers cloud download --provider gcs --bucket my-skills react.zip
skill-seekers cloud list --provider gcs --bucket my-skills
# env: GOOGLE_APPLICATION_CREDENTIALS
```

### Azure Blob Storage
```bash
skill-seekers cloud upload --provider azure --container my-skills output/react.zip
skill-seekers cloud download --provider azure --container my-skills react.zip
skill-seekers cloud list --provider azure --container my-skills
# env: AZURE_STORAGE_CONNECTION_STRING
```

### CI/CD Integration
```yaml
# GitHub Actions example
- name: Upload skill to S3
  run: |
    skill-seekers scrape --config configs/react.json
    skill-seekers package output/react/
    skill-seekers cloud upload --provider s3 --bucket ci-skills output/react.zip
  env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```

**Guide:** [docs/integrations/CLOUD_STORAGE.md](docs/integrations/CLOUD_STORAGE.md)

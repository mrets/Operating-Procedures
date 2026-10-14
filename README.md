# M-RETS Operating Procedures

[Live Site](https://mrets.github.io/Operating-Procedures/)

This repository will be the source of truth for all the Overview tabs in the /docs section.
https://app-staging.mrets.org/docs/
https://app.mrets.org/docs/

Markdown Cheatsheet:
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

Markdown WYSIWYG editor:
https://macdown.uranusjr.com/ (Desktop app)

# Development Setup

## Docker

```bash
docker compose up --build
```

Open http://localhost:4000. The first build can take several minutes while gems install.

On Linux, if file watching fails, override the command to add `--force_polling`.

## Local Ruby

* ```bundle install```
* ```jekyll serve```

<p align="center">
  <img src="https://raw.githubusercontent.com/HugoGit39/sia.project.1.wi.data/refs/heads/main/www/siawd_relational_pipeline.png" alt="SIA Pipeline">
</p>

# sia.project.1.wi.data

Data-wrangling pipeline to build **Shiny-ready** and **OSF-ready** datasets for the SiA Wearable Database Shiny App.  
The workflow follows best practices from _[Reproducible Science in Ecology & Evolution](https://ecorepsci.github.io/reproducible-science/)_ — emphasising tidy data, version control, scripted processing, and reproducible environments.

---

## Why this repo?

- Provides a **reproducible data pipeline** from raw Excel files to Shiny/OSF-ready datasets.  
- Ensures **tidy, relational** structures with `device_id` as the primary key.  
- Guarantees transparency, traceability, and consistency between analyses and published data.

---

## Repository structure

```bash
sia.project.1.ws.data/
├─ data/
│  ├─ processed/           
│  ├─ raw/                 
├─ output/                
│  ├─ data/                
│  ├─ plots/               
│  └─ reporting/           
├─ src/
│  ├─ application/         
│  ├─ function/            
│  ├─ reporting/           
├─ temp/
├─ www/               
├─ .gitignore
├─ sia.project.1.wi.data.Rproj
└─ README.md
```

## Inputs (expected in `data/raw/`)

| File | Description |
|------|--------------|
| **devices.xlsx** | Core device metadata (manufacturer, model, website, release date, market status, main use, etc.) |
| **signals.xlsx** | Long format: includes `sampling_rate_min/max`, `additional_info`, and `recording_location` |
| **technical_specs.xlsx** | Device specifications (battery life, connectivity, etc.) |
| **data_access.xlsx** | Data storage type, raw data access, SDK/API availability |
| **rvu_synthesis.xlsx** | Validity, reliability, and usability summaries |
| **rvu_synthesis_detailed.xlsx** | RVU studies details |
| **expert_scores.xlsx** | Expert-based scoring (e.g., short-term, long-term) |

---

## Outputs (written to `data/output/data/`)

| File | Description |
|------|--------------|
| **df_wide_sia_wd.rds** | Dataframe in wide format 
| **df_shiny_sia_wd_filter.rds** | Dataframe for filters Shiny
| **df_shiny_sia_wd)info.rds** | Dataframe for additional char info Shiny
| **df_osf_sia_wd.rds / df_osf_sia_wd.xlsx** | Dataframe for OSF
| **ui_constants.rds** | Variables for Shiny UI
| **glos.rds** | Glossary for Shiny sidebar
| **df_codebook.rds** | Codebook for Filter outputs
| **updates.rds** | Update section for SHiny homepage







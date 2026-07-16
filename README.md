# DJIA Collaborative Git/GitHub Workshop Repo

This repository is a teaching project for collaborative Git and GitHub workflows using R Markdown.

## What This Repo Is

This repo contains a deliberately messy, modular analytics workflow that simulates a real multi-person data project.

- 1 parent file: `index.Rmd`
- 21 child files: `01_setup_libs.Rmd` through `21_summary_report.Rmd` (plus one child saved as `.md` by design)
- Topic: 10-year stock and dividend analysis for Dow Jones-related companies

The code style and logic are intentionally imperfect so students can practice:

- branching and pull requests
- merge conflict resolution
- debugging and code review
- collaborative refactoring

## Live Leaderboard

<!-- LEADERBOARD:START -->
### Workshop Leaderboard

Auto-updated from pull requests and reviews.

Last updated: 2026-07-16T19:55:45.024Z

| Rank | User | Total | Commits | PRs Opened | PRs Merged | Scoped Bonus | Reviews | First Merge Bonus |
|---:|---|---:|---:|---:|---:|---:|---:|---:|
| 1 | @MVesuviusC | 363 | 15 (75) | 8 (80) | 8 (160) | 6 (30) | 1 (8) | 1 (10) |
| 2 | @YogiBud | 168 | 5 (25) | 4 (40) | 4 (80) | 1 (5) | 1 (8) | 1 (10) |
| 3 | @maheshworpaudel5001 | 70 | 5 (25) | 1 (10) | 1 (20) | 1 (5) | 0 (0) | 1 (10) |
| 4 | @efranz7 | 65 | 4 (20) | 1 (10) | 1 (20) | 1 (5) | 0 (0) | 1 (10) |
| 5 | @kkatieshort | 63 | 2 (10) | 1 (10) | 1 (20) | 1 (5) | 1 (8) | 1 (10) |

## Scoring Rules

- Per commit: 5
- Opened PR: 10
- Merged PR: 20
- Scoped PR bonus (10 to 400 lines churn): 5
- Submitted review: 8
- First merged PR bonus: 10
- Max review points per person: 80

Each table cell shows `count (points)` for that scoring bucket.
<!-- LEADERBOARD:END -->

## Project Goal

The workflow is meant to:

1. ingest stock and dividend data,
2. clean and merge data,
3. compute 1-year, 5-year, and 10-year metrics,
4. rank company performance,
5. generate tables and plots for a final summary report.

## Important Workshop Design Choice

Each student is assigned exactly one child file to edit first. This reduces early merge conflicts while still allowing everyone to contribute to the same repository.

## File Organization

### Parent Orchestration

- `index.Rmd`: Knits all child files in sequence

### Stage 1: Environment and Data Ingestion

- `01_setup_libs.Rmd`
- `02_get_data_tech.Rmd`
- `03_get_data_finance.Rmd`
- `04_get_data_retail_consumer.md`
- `05_get_data_health.Rmd`
- `06_get_data_industrials.Rmd`

### Stage 2: Data Integration and Cleaning

- `07_merge_data.Rmd`
- `08_clean_prices.Rmd`
- `09_clean_dividends.Rmd`

### Stage 3: Stock Performance Calculations

- `10_calc_1yr_stock.Rmd`
- `11_calc_5yr_stock.Rmd`
- `12_calc_10yr_stock.Rmd`

### Stage 4: Dividend Performance Calculations

- `13_calc_1yr_div.Rmd`
- `14_calc_5yr_div.Rmd`
- `15_calc_10yr_div.Rmd`

### Stage 5: Ranking and Aggregation

- `16_rank_stock_perf.Rmd`
- `17_rank_div_perf.Rmd`
- `18_merge_rankings.Rmd`

### Stage 6: Visualization and Summary Output

- `19_plot_top_stocks.Rmd`
- `20_plot_top_divs.Rmd`
- `21_summary_report.Rmd`

## Notes for Students

- The code is intentionally sloppy and includes fixable bugs.
- Not every file will knit cleanly at first.
- Your job is to improve your assigned file and collaborate through GitHub.

## Suggested Student Workflow

1. Create a branch for your assigned file.
2. Make targeted fixes and improvements.
3. Commit with clear messages.
4. Open a pull request.
5. Review classmates' PRs and resolve conflicts as needed.

## Instructor Notes

Use this repository to demonstrate:

- modular project structure
- safe parallel development
- commit hygiene and PR review practices
- integration pain points and conflict resolution strategies


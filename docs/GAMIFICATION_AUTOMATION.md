# Automated Workshop Gamification

This repo includes an automated leaderboard powered by GitHub Actions.

## What Is Automated

The workflow in .github/workflows/workshop_leaderboard.yml recalculates points from repository activity and updates:

- LEADERBOARD.md
- docs/leaderboard_data.json

It runs when:

- a pull request is opened, updated, reopened, or closed
- a pull request review is submitted
- the workflow is triggered manually
- every 30 minutes on a schedule

## Current Scoring Rules

- Per commit: 5 points
- Opened PR: 10 points
- Merged PR: 20 points
- Scoped PR bonus (10 to 400 lines of code churn): 5 points
- Submitted review on someone else PR: 8 points
- First merged PR bonus: 10 points
- Review-point cap per person: 80 points

## How To Adjust Scoring

Open .github/workflows/workshop_leaderboard.yml and edit the cfg object in the Compute leaderboard step.

## Recommended Classroom Flow

1. Students create PRs from their own branches.
2. Students review at least two classmates PRs.
3. Instructor merges PRs in waves.
4. Leaderboard updates automatically and keeps motivation visible.

## Tips

- Keep points mostly on quality signals (merged PRs and reviews), not just speed.
- Consider adding one bonus round by temporarily changing the scoring config.
- If you need team scoring, duplicate the script logic and map usernames to teams.

connection: "snowflake"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"


explore: cost_and_usage {}
  persist_for: "24 hours"

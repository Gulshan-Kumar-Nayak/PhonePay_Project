# PhonePe-Pulse-Data-Visualization
PhonePay Project - SQL+Python

---

### 📂 Data Hierarchy & Schema Formation

The core challenge of this project was converting PhonePe's multi-layered JSON structure into a clean, relational database.

#### **1. The Source Hierarchy (JSON Structure)**
The raw data is nested deep within the repository across thousands of files following this pattern:
```text
data/
└── aggregated/ / map/ / top/
    └── transactions/ / users/
        └── country/
            └── india/
                └── state/
                    └── [state_name]/
                        └── [year]/
                            └── [quarter].json  <-- Target Data

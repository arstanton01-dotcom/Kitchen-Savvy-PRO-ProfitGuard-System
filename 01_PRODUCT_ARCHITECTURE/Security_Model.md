# Security Model

## Roles & Permissions
| Role       | Access Level                      |
|------------|----------------------------------|
| Owner      | Full access to all tabs & scripts |
| Manager    | Input + review, cannot alter scripts |
| Staff      | Input only, read-only for dashboards |

## Field Protections
- Calculated columns protected (Unit Price, Variance %, Recovery $)
- Input columns allowed for edits only (highlighted light gray)
- Audit trail records all changes (who, when, what)

## Data Validation
- Vendor Name + Item Name required before row can be pushed to tracker
- Formula enforcement prevents manual override
- Restricted access to sensitive dashboards

## System Integrity
- Daily backups
- Enforced HTTPS connections
- Multi-level approval for critical recovery actions

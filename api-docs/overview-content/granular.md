## Overview

> **Note:** Granular and Combined Granular certificate functionality is not yet publicly available. These features are currently in testing and must be enabled for an organization before the related endpoints can be used. Most organizations do not have this functionality enabled at this time. The endpoints and documentation below may change before general release.

The M-RETS Granular Certificates API lets organizations retrieve, move, retire and reserve hourly certificates programmatically.

## Use Case

This document covers the main operations for certificates with particular focus on the addition of granular and combined granular certificate types. As with standard certificates, granular and combined granular certificates may have the following operations performed:

- An **internal transfer** to another account within the same organization (completes immediately)
- An **external transfer** to another organization, denoting a sale or change in ownership (requires acceptance by the receiving organization)
- A **retirement** to permanently remove certificates from circulation and substantiate a compliance or voluntary claim
- A **reserve**, where certificates deposited into a Reserve Account will be settled and claimed outside of M-RETS. M-RETS administrators cannot verify an environmental claim for certificates deposited into Reserve Accounts.

Each operation supports three certificate types: Standard, Granular (hourly), and Combined Granular (monthly rollup).

Each operation follows the same three steps: draft a `user_transaction`, add the certificates to it via `transaction_details`, then enqueue the transaction for processing.

- **User transaction.** The container for one operation. It records the type (transfer, retirement, reserve or un-reserve), its status and dates, who started and completed it, and any notes.
- **Transaction details.** One or more lines inside the transaction. Each names the certificates, the source account and the destination account or organization. A single transaction can hold many lines.

A transaction that fails its checks returns to draft for correction; one that passes completes, unless it is an external transfer awaiting the receiver.

## Granular-specific API capabilities

New granular-specific API endpoints have been created to support granular functionality. These endpoints will be published at a later date.

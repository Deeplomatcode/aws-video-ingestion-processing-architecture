# Secure Video Ingestion & Processing Pipeline on AWS

## Overview

This repository documents a secure, scalable AWS architecture for ingesting video uploads, processing content via serverless workflows, enriching metadata, and notifying stakeholders upon completion.

The design emphasizes:
- Event-driven processing
- Least-privilege IAM
- Private subnet isolation
- Production-oriented AWS architecture patterns

---

## Architecture Diagram

![Video Ingestion Architecture](diagrams/video-streaming-architecture.png)

---

## Problem Statement

Content producers upload video files that must be validated, processed, and indexed before being delivered to viewers. The system must:

- Handle large file uploads
- Scale automatically
- Keep data services private
- Provide operational notifications
- Maintain strong security boundaries

---

## High-Level Flow

1. Producers upload videos to an **Amazon S3 ingestion bucket**
2. An S3 event triggers a serverless workflow
3. A workflow/state machine coordinates **AWS Lambda functions** for:
   - File validation
   - Metadata extraction
   - Processing logic
4. Processed content is stored in output S3 buckets
5. Metadata is written to **Amazon Aurora (private subnet)**
6. **Amazon SNS** notifies administrators when processing completes

---

## Core AWS Services

- Amazon S3
- AWS Lambda
- Workflow Orchestration (State Machine Pattern)
- Amazon Aurora (RDS)
- Amazon SNS
- IAM (least-privilege role design)
- VPC (private subnet isolation)

---

## Architectural Characteristics

### Security
- Least-privilege IAM policies
- Private subnet database isolation
- Separation of ingestion and processing roles

### Scalability
- Event-driven compute
- Stateless Lambda execution
- Automatic horizontal scaling

### Reliability
- Retry-capable orchestration
- Decoupled service design
- Notification-based operational awareness

---

## Use Cases

- Media platforms
- Internal training portals
- SaaS video features
- Content ingestion pipelines

---

## Author

Mohammed Bakare  
Solutions Architect | AWS  
https://www.linkedin.com/in/mohammed-bakare-94a655288

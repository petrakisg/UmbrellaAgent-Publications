# UmbrellaAgent Publications

This repository contains the academic publications (Bachelor's Thesis and IEEE conference paper) surrounding **UmbrellaAgent**, an independently developed Order Management System. While the software itself is an independent creation by George Petrakis, the academic research and documentation contained in this repository were conducted and published in collaboration with the Department of Informatics and Telecommunications at the University of Ioannina.

UmbrellaAgent investigates the viability of a **Local-First, Event-Driven Order Management System** using WebSockets and the MERN stack for temporary, connectivity-constrained event environments.

> **Note:** This repository is dedicated to the dissemination of our research findings. It does **not** contain the proprietary application source code. It includes the LaTeX source codes, compiled documents, high-resolution figures, and related presentations.

## Repository Structure

- **`paper_ieee_seeda/`**
  Contains the source LaTeX files and the compiled PDF for the conference paper submitted to IEEE SEEDA.
  - **Title:** *A Local-First Event-Driven Order Management System for Temporary Events*
  - **Focus:** Evaluates a server-authoritative LAN-local architecture substituting traditional HTTP requests with bidirectional WebSockets to mitigate burst transactional loads under unreliable external network conditions.
  - **File:** `main.tex`, `IEEE-conference-template-062824.pdf`

- **`thesis/`**
  Contains the comprehensive LaTeX source and compiled PDF of the Bachelor's Thesis upon which the IEEE paper is based.
  - **Focus:** Extensive architectural breakdown (7-layer model), Zero Trust Architecture (ZTA), Role-Based Access Control (RBAC), Eclipse UI design system, state management, and field study analysis.
  - **File:** `Final_Thesis.pdf`, `Final_Thesis.tex`

- **`presentation/`**
  Contains the presentation slides prepared for the thesis defense and academic dissemination. Includes all supplementary visuals, architectural diagrams (BPMN, Sequence, Topology), and testing telemetry.

## Key Research Highlights
- **Performance:** Replaces HTTP polling with WebSocket duplex streams, enabling real-time UI synchronization via a React+Zustand front-end.
- **Resilience:** Demonstrates operational continuity independent of cloud availability (offline-first local-LAN methodology).
- **Validation:** Supported by rigorous Apache JMeter synthetic stress tests (sustaining >1.58M requests), Chaos Engineering (verifying an RTO < 5s), and a multi-day live field study.

## Authors
- **George Petrakis** (petrakisgeorge@icloud.com) - *Dept. of Informatics and Telecommunications, University of Ioannina, Greece*
- **Spiridoula Margariti** (smargar@uoi.gr) - *Dept. of Informatics and Telecommunications, University of Ioannina, Greece*
- **Christos Gogos** (cgogos@uoi.gr) - *Dept. of Informatics and Telecommunications, University of Ioannina, Greece*

## License
All documents, LaTeX templates, and figures are provided for academic reference and review.

---
*University of Ioannina - Department of Informatics and Telecommunications (Arta, Greece)*

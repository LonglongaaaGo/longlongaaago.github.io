# Resume and Full CV

- `Wanglong_Lu_Resume.tex`: two-page English baseline for Applied Scientist, ML Engineer and research-oriented industry applications. Research contributions and publication metadata share six selected entries to avoid repeating the same paper in separate project and publication lists; engineering prototypes are separate. Tailor the emphasis to the job rather than listing three target titles in the headline.
- `Wanglong_Lu_CV.tex`: complete English CV, with publications, preprints, patents, teaching and service.
- Original uploaded archive is unchanged. These standalone sources replace the template's nested document environments.

## Update

1. Edit experience, projects, contact details and selected publications in the LaTeX sources. The two-page resume is curated, not an automatic paper list.
2. Update publication metadata in `_publications/`. `update_publications.rb` refreshes the full CV's generated publication section, excluding duplicate Chinese/English records and separating preprints and the dissertation.
3. Open the sources in Codex's LaTeX editor and check the PDF preview.
4. To export for the website, run from the repository root:

```sh
ruby _cv/build.rb
```

This requires an existing TeX distribution (`pdflatex` with Latin Modern) and Poppler (`pdfinfo`, `pdftoppm`). It compiles twice, checks for layout overflow and a two-page resume, and refreshes the PDFs, page previews and `_data/cv_documents.yml`. No TeX or PDF service is needed by website visitors.

The dedicated page is `/cv-pdf/`; PDF files have stable URLs under `/files/cv/`. Website previews are images rendered from those same PDFs, so they work on mobile and without browser PDF plugins. The open/download controls provide the original PDFs, including selectable text and clickable links.

## Before Publishing

- Target emphasis: Applied Scientist highlights algorithms, evaluation and practical impact; ML Engineer highlights deployment, persistence and platform integration; Research Scientist highlights research contributions, experiments and representative publications.
- The user confirmed the public contact choice: `lwlxhl@gmail.com`, without a phone number.
- The user confirmed that 77.2%, CFML and the provided internal-project descriptions may appear publicly. Customer information and unverified business metrics remain omitted.
- The internal ML training platform is a cross-team initiative in development. The user's contribution is deployment and workspace integration of an existing UI/backend prototype, networking and IAM configuration, PostgreSQL user-state persistence, and FastAPI deployment on Lambda with Mangum. Do not describe the user as the sole platform creator or claim a completed production release. Distributed training and the auditable registry describe platform scope, not personally implemented components. No project start month, adoption counts or release date have been established.
- Keep contribution labels accurate: first author, co-first author, co-author and PEFT method integration are not interchangeable.
- The confirmed local code-editor project is an exploratory internal side project at Nasdaq, with a working local prototype but no project approval. It uses an agentic loop to select code writing, code review or shell tools, with language-model API calls and local execution for generation and debugging. Its framework, public repository and performance metrics have not been confirmed. Label it as an internal exploratory prototype, not an approved product, company-wide platform or production release. Confirm the permitted public disclosure scope before publishing this new project; do not expose internal code, endpoints or credentials.
- The uploaded ZIP's `sections/projects.tex` contains a separate `AI Agent: Cloud-Native GenAI Platform` entry with resume retrieval, web reading, Terraform, Lambda, API Gateway and CloudFront. The user questioned that experience, so it is excluded from the current PDFs until reconfirmed. Do not transfer those claims to the local editor. The original archive remains untouched.
- The user subsequently confirmed a separate AI headshot-generation deployment involving model invocation and application deployment. This does not confirm the old assistant's resume-retrieval or web-reading functionality. The headshot project's model, hosting stack, dates and personal/company context are still pending confirmation; do not conflate it with the Nasdaq code-editor prototype or claim original model training.
- The current publication status follows the website metadata. Correct that metadata if a preprint is later accepted, then rebuild.
- Review both PDFs, then commit and push the generated PDFs and previews with the source changes. GitHub Pages does not compile the LaTeX automatically.

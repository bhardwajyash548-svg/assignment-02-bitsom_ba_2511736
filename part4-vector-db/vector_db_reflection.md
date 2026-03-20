## Vector DB Use Case

A traditional keyword-based search is not sufficient for searching large legal documents. Keyword search depends on exact word matching and may miss relevant results if different wording is used.

For example, a search for "termination clauses" may not return sections that use alternative phrasing such as "contract ending conditions".

A vector database solves this problem by converting text into embeddings that capture semantic meaning. This allows the system to understand the intent behind a query rather than just matching keywords.

In this system, long contracts can be split into smaller chunks, and each chunk can be converted into a vector embedding. When a user asks a question, the query is also converted into an embedding and compared with stored vectors using similarity measures.

This enables accurate and context-aware search, making vector databases highly effective for legal document analysis.


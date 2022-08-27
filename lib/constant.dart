const githubSearchPath = "https://api.github.com/search/repositories";
const githubHeader = <String, String>{"Accept": "application/vnd.github+json"};
const githubSearchQuery = "q";

const githubResponseZero = {
  "total_count": 0,
  "incomplete_results": false,
  "items": [],
};

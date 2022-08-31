const githubSearchPath = "https://api.github.com/search/repositories";
const githubHeader = <String, String>{
  "Accept": "application/vnd.github+json",
  "Authorization": "Bearer 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",
  "User-Agent": "Github Search App", // need to avoid 403 error
};
const githubSearchQuery = "q";
const githubSearchPerPageKey = "per_page";
const githubSearchPerPageValue = 20;

const githubResponseZero = {
  "total_count": 0,
  "incomplete_results": false,
  "items": [],
};

const lenMinKeywordSearch = 3;

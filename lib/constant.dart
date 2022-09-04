const githubSearchPath = "https://api.github.com/search/repositories";
const githubSearchQuery = "q";
const githubSearchPerPageKey = "per_page";
const githubSearchPerPageValue = 20;

const githubResponseZero = {
  "total_count": 0,
  "incomplete_results": false,
  "items": [],
};

const lenMinKeywordSearch = 3;

const animationDurationMS = 500;

const debounceDurationMS = 1000;

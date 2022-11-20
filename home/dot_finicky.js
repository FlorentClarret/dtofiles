// ~/.finicky.js

module.exports = {
  defaultBrowser: "Google Chrome",
  rewrite: [
    {
      // Redirect all urls to use https
      match: ({ url }) => url.protocol === "http",
      url: { protocol: "https" }
    }
  ],
  handlers: [
     {
        match: [
            "zoom.us/*",
            finicky.matchDomains(/.*\zoom.us/),
            /zoom.us\/j\//,
        ],
        browser: "us.zoom.xos"
    }
  ]
};

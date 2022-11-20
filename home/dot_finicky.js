// ~/.finicky.js

module.exports = {
  defaultBrowser: {
        name: "Google Chrome",
        profile: "Profile 1",
  },
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
    },
    {
      match: finicky.matchHostnames([
        "youtube.com",
        "www.youtube.com",
        "youtu.be",
        "discord.com",
      ]),
      browser: {
        name: "Google Chrome",
        profile: "Personal",
      }
    }
  ]
};

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
      url: { protocol: "https" },
    },
    {
      match: () => true, // Execute rewrite on all incoming urls to make this example easier to understand
      url: ({ url }) => {
        const removeKeysStartingWith = ["utm_", "uta_"]; // Remove all query parameters beginning with these strings
        const removeKeys = ["fbclid", "gclid"]; // Remove all query parameters matching these keys

        const search = url.search
          .split("&")
          .map((parameter) => parameter.split("="))
          .filter(
            ([key]) =>
              !removeKeysStartingWith.some((startingWith) =>
                key.startsWith(startingWith),
              ),
          )
          .filter(
            ([key]) => !removeKeys.some((removeKey) => key === removeKey),
          );

        return {
          ...url,
          search: search.map((parameter) => parameter.join("=")).join("&"),
        };
      },
    },
  ],
  handlers: [
    {
      match: ["zoom.us/*", finicky.matchDomains(/.*\zoom.us/), /zoom.us\/j\//],
      browser: "us.zoom.xos",
    },
    {
      match: finicky.matchDomains("open.spotify.com"),
      browser: "Spotify",
    },
    {
      match: finicky.matchHostnames([
        "youtube.com",
        "www.youtube.com",
        "youtu.be",
        "discord.com",
      ]),
      browser: "Firefox",
    },
  ],
};

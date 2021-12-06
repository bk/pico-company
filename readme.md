# Pico-Company – a wmk corporate theme

## Setup and configuration

Pico-Company is a theme for the [wmk](https://github.com/bk/wmk) static site
generator. It is suitable for the website of a company, open source project,
club, or similar. It can also be used for a personal blog but is not specially
designed for that. The theme is based on the
[Company](https://picocss.com/examples/company/) example for the [Pico
CSS framework](https://picocss.com/).

Add Pico-Company to your site by cloning it into `themes` as
`pico-company` or adding it as a git submodule. Note that you also need to run
`git submodule update --init` inside the newly cloned repo so as to to fetch
the Pico CSS framework.  Then add the line `theme: pico-company` to your
`wmk_config.yaml` and rebuild the site.

A demo of the theme can be found [here](https://pico-company.baldr.net/).


## Site variables

-   `site.title`, `site.description`, `site.keywords` and `site.lang`
    set basic metadata.
-   `site.base_url` should be set to a hostname with a http/https prefix
    and no slash at the end. `site.leading_path` is usually an empty
    string but can be set to a path relative to a web root if the wmk
    site put into a subdirectory. Again, the path should not have a
    trailing slash.
-   `site.google_font` is an optional name of a font on Google Fonts,
    e.g. \"Gentium Book Basic\". It is also possible to specify a
    separate font for headings and a few other things with
    `site.google_font_headings`.
-   `site.topnav_brand` is the brand name/image to be shown in the top
    left corner, while `site.topnav_links` are links for the top
    navigation at the top left. Each item in the list of links should
    have the attributes `url` and `title`.
-   `site.hero_title` and `site.hero_tagline` indicate the contents of
    the text atop the hero header; `site.hero_call_to_action` is the
    hero button and should have the attributes `url` and `title`.

## The sidebar

The sidebar is normally populated with Markdown content which has
`sidebar: true` in the frontmatter. The order can be affected with
`sidebar_order`. Each item should have an image, a title and a subtitle
or summary. If you wish to link to something which is not on the site,
set `sidebar_item_url` and add `do_not_render: true` to the frontmatter.
By default, 4 items are shown.

## The hero block

By default, the hero component is only shown on the frontpage. You can
turn it on in markdown content by setting `with_hero` to true in the
frontmatter. You can also control the content of the block by setting
the variables `hero_title`, `hero_tagline` and `hero_call_to_action`,
similarly to the corresponding site variables. The call to action button
can be turned off by setting `hero_no_call_to_action` to true.

The easiest way to change the background image in the topnav header and
hero area is to put a new image into `static/img/hero.jpg`. The image
should be quite dark and around 3000×1000 pixels in size.

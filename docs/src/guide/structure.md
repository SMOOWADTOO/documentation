# Page Structure

We have designed this page with a modular principle. In other words, if you want to reuse code in different pages, let's just put them in a separate file and import when needed. It's important to read this guide to understand how to develop.

The following is the directory for Casafair's frontend built with Nuxt.js:

```
casafair
|-- assets
|   |-- images
|-- components
|   |-- items
|   |-- layouts
|   |-- templates
|-- layouts
|   |-- default.vue     // don't touch this, unless you want to add css styling here. Can explore Sass soon.
|-- pages
|-- plugins
|-- static
|-- store
```

The contents were redacted for brevity's sake. In pages, the structure works as if each folder hosts an `index.html` file. For example, if I have a folder in pages called **faq**, then my relative URL is `http://example.com/faq`, and the page will display the contents in the `index.vue` file.

## Assets

This is where you store all the static assets like images, videos and what have you. Only store images that's used for static content, ie. for user's profile images, product images, do not store here. We will store it in an AWS S3 bucket. 

Create folders to compartmentalise different objects (images or videos).

## Components

This is where components are stored. Notice the three folders:

- **items**: This is used for modular items, such as cards, that you can reuse at every page
- **layouts**: This is where you store modularised layouts, such as a Carousel of images, that you can reuse at every page
- **templates**: Here, you can find sample templates for each page that you can copy paste to reuse in other pages. **Do not import them into your pages.**

Refer to our [components guide](/guide/components) for documentation.

## Layout

This is the root layout of our site. You can add global styling and scripting in the `default.vue` file.

## Pages

This is where you store the pages and parts of the page. Refer to the [pages guide](/guide/pages) for more information.

## Plugins

This is where you store `.js` files for global variables declaration or creating Vue functions that you want to use globally. This helps to not reuse the same codes all over the page. Refer to the [plugins guide](/guide/plugins) for more information.

## Static

This is where you can store the `.ico` files for our website icon. Other than that, this page is actually rather useless.

## Store

This page is necessary for dynamically storing **Vuex** variables. We don't have to touch it but we have to ensure that there is always an `index.js` in the folder. **In other words, do not delete or add anything here**. 
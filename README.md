# Chartjs - Component template for Magnolia CMS

Add a chart to your website. Simple implementation of the full-featured https://chartjs.org library.

## Features
Choose a chart type from: bar, line, radar and polarArea.

Provide the data in the dialog in chartjs JSON format.

![Rendered Output](_dev/README-chartjs.png)

![Component Dialog](_dev/README-chartjs-dialog.png)

This component supports only a small subset of chartjs features.

## Usage
For a ready-to-use light module, grab the package from npm. For the source files, refer to the github repo.

Make the component available to authors, and include the files in `webresources` on your pages using standard magnolia techniques.
(To make this component available on the mtk basic page, you could use the decoration included in `_dev/decorations`.)


### Building the Github source files
* `npm install` to retrieve the dependencies.
* `npm run build` to build the webresources.
The files in webresources must be included on the page.

## Demo
To see an sample page demonstrating this component, open the Pages app in Magnolia AdminCentral and import the file in `_dev/demos`. (Must be imported directly at the root for the js to be loaded.)


## Information on Magnolia CMS
This directory is a 'light module'.

https://docs.magnolia-cms.com

Search the docs for `sharing light modules` for details on how to share and use light modules on npm and github.


## Contribute to the Magnolia component ecosystem
It's easy to create components for Magnolia and share them on github and npm. I invite you to do so and join the community. Let's stop wasting time by developing the same thing again and again, rather let's help each other out by sharing our work and create a rich library of components.

Just add `magnolia-light-module` as keywords to the package.json to make them easy to find and use.

## License

MIT

## Contributors

Magnolia, https://magnolia-cms.com

Christopher Zimmermann, @topherzee

window.MathJax = {
  tex: {
    inlineMath: [["\\(", "\\)"]],
    displayMath: [["\\[", "\\]"]],
    processEscapes: true,
    processEnvironments: true,
    // Add your desired LaTeX packages here
    packages: {'[+]':['ams', 'mhchem', 'physics', 'cancel', 'color', 'bbox']}
  },
  loader: {
    // Load the extensions corresponding to those packages
    load:[
      '[tex]/ams',
      '[tex]/mhchem',
      '[tex]/physics',
      '[tex]/cancel',
      '[tex]/color',
      '[tex]/bbox'
    ]
  },
  options: {
    ignoreHtmlClass: ".*|",
    processHtmlClass: "arithmatex"
  }
};
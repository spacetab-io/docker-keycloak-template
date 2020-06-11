var sass = require('node-sass');
const fs = require('fs');
const autoprefixer = require('autoprefixer')
const postcss = require('postcss')


var result = sass.renderSync({
    file: 'keycloak.scss',
    //outputStyle: 'compressed',
    outFile: 'theme/spacetab/output.css',
});

postcss([ autoprefixer ]).process(result.css).then(result => {
    fs.writeFileSync('theme/spacetab/output.css', result.css);
    console.log(result);
});





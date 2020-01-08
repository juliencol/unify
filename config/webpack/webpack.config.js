module.exports = {
  entry: '../javascript/packs/application.js',
  module: {
    rules: [{
        test: /\.(scss)$/,
        use: [{
          loader: 'style-loader', // inject CSS to page
        }, {
          loader: 'css-loader', // translates CSS into CommonJS modules
        }, {
          loader: 'postcss-loader', // Run postcss actions
          options: {
            plugins: function () { // postcss plugins, can be exported to postcss.config.js
              return [
                require('autoprefixer')
              ];
            }
          }
        }, {
          loader: 'sass-loader' // compiles Sass to CSS
        }]
      },
      {
        test: /font-awesome\.config\.js/,
        use: [{
            loader: 'style-loader'
          },
          {
            loader: 'font-awesome-loader'
          }
        ]
      },
      {
        test: /\.js$/,
        include: [
          path.join(__dirname, 'node_modules', 'sticky-kit')
        ],
        use: [{
          loader: 'imports-loader?jQuery=jquery,$=jquery,window=>global&window.jQuery=jquery,this=>window,define=>false'
        }]
      }
    ]
  }
};
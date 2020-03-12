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
                test: /\.js$/,
                exclude: [/@babel(?:\/|\\{1,2})runtime/, /.*mapbox-gl.*/],
                loader: require.resolve('babel-loader'),
                options: {
                    babelrc: false,
                    configFile: false,
                    compact: false,
                    presets: [
                        [require.resolve('babel-preset-react-app/dependencies'), {
                            helpers: true
                        }]
                    ],
                    cacheDirectory: true,
                    // Don't waste time on Gzipping the cache
                    cacheCompression: false,

                    // If an error happens in a package, it's possible to be
                    // because it was compiled. Thus, we don't want the browser
                    // debugger to show the original code. Instead, the code
                    // being evaluated would be much more helpful.
                    sourceMaps: false
                }
            },
            {
                test: /\.(png|jpg|jpeg|gif|ico|svg)$/,
                use: [{
                    loader: 'file-loader'
                }]
            },
        ]
    },
};
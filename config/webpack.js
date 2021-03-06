const appRootDir = require('app-root-dir').get();
const { resolve } = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const HtmlWebpackTagsPlugin = require('html-webpack-tags-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const OptimizeCSSAssetsPlugin = require('optimize-css-assets-webpack-plugin');
// eslint-disable-next-line import/no-extraneous-dependencies
const cssnano = require('cssnano');
const CleanWebpackPlugin = require('clean-webpack-plugin');
const OfflinePlugin = require('offline-plugin');
// const FaviconsWebpackPlugin = require('favicons-webpack-plugin');

const { getIfUtils, removeEmpty } = require('webpack-config-utils');

const { ifProduction, ifDevelopment } = getIfUtils(process.env.NODE_ENV);

const BUILD_DIR = resolve(appRootDir, 'build');
const APP_DIR = resolve(appRootDir, 'source');

const webpackConfig = removeEmpty({
  mode: ifProduction('production', 'development'),
  context: appRootDir,
  entry: removeEmpty({
    main: './source/scripts/index.js',
  }),
  output: {
    path: BUILD_DIR,
    filename: '[name].[hash].js',
    publicPath: ifDevelopment('/'),
  },
  performance: {
    hints: ifProduction(/* 'warning' */false, false),
  },
  devtool: 'source-map',
  // devServer: {
  //   contentBase: APP_DIR,
  //   watchContentBase: true,
  //   hot: true,
  //   hotOnly: true,
  // },
  module: removeEmpty({
    rules: removeEmpty([
      {
        test: /\.(js|jsx)$/,
        exclude: /(node_modules|vendors\.js)/,
        use: [
          {
            loader: 'babel-loader',
            options: {
              cacheDirectory: true,
            },
          },
        ],
      },
      {
        test: /\.html$/,
        exclude: /node_modules/,
        use: ['html-loader'],
      },
      {
        test: /\.css$/,
        use: [
          ifProduction(MiniCssExtractPlugin.loader, 'style-loader'),
          'css-loader?modules',
        ],
      },
      {
        test: /\.less$/,
        use: [
          ifProduction(MiniCssExtractPlugin.loader, 'style-loader'),
          'css-loader',
          'less-loader',
        ],
      },
      {
        test: /\.woff2?(\?v=\d+\.\d+\.\d+)?$/,
        loader: 'url-loader',
        options: {
          limit: 10240,
          mimetype: 'application/font-woff',
        },
      },
      {
        test: /\.ttf(\?v=\d+\.\d+\.\d+)?$/,
        loader: 'url-loader',
        options: {
          limit: 10240,
          mimetype: 'application/octet-stream',
        },
      },
      {
        test: /\.eot(\?v=\d+\.\d+\.\d+)?$/,
        loader: 'file-loader',
      },
      {
        test: /\.otf(\?v=\d+\.\d+\.\d+)?$/,
        loader: 'file-loader',
      },
      {
        test: /\.svg(\?v=\d+\.\d+\.\d+)?$/,
        loader: 'file-loader',
        options: {
          limit: 10240,
          mimetype: 'image/svg+xml',
        },
      },
      {
        test: /\.(gif|jpg|png|ico)(\?.*$|$)$/,
        loader: 'file-loader',
      },
      {
        test: /\.swig$/,
        use: [
          'extract-loader',
          `html-loader?${JSON.stringify({
            attrs: ['img:src', 'link:href', 'source:src'],
          })}`,
          'swig-loader',
        ],
      },
    ]),
  }),
  resolve: {
    modules: [
      'node_modules',
    ],
    extensions: ['.json', '.js', '.jsx'],
  },
  stats: {
    assets: false,
    cached: false,
    cachedAssets: false,
    colors: true,
    version: false,
    hash: true,
    timings: true,
    chunks: false,
    chunkModules: false,
    entrypoints: false,
    modules: false,
  },
  plugins: removeEmpty([
    ifProduction(
      new CleanWebpackPlugin(BUILD_DIR, {
        allowExternal: true,
        beforeEmit: true,
      }),
    ),
    new CopyWebpackPlugin([
      { from: 'source/scripts/vendors.js' },
    ]),
    new HtmlWebpackPlugin({
      title: 'Loha',
      filename: 'index.html',
      template: `${APP_DIR}/templates/index.swig`,
    }),
    new HtmlWebpackPlugin({
      title: 'Loha',
      filename: 'home.html',
      template: `${APP_DIR}/templates/pages/home.swig`,
    }),
    new HtmlWebpackPlugin({
      title: 'Loha',
      filename: 'login.html',
      template: `${APP_DIR}/templates/pages/login.swig`,
    }),
    new HtmlWebpackPlugin({
      title: 'Loha',
      filename: 'forgot-password-1.html',
      template: `${APP_DIR}/templates/pages/forgot-password-1.swig`,
    }),
    new HtmlWebpackPlugin({
      title: 'Loha',
      filename: 'forgot-password-2.html',
      template: `${APP_DIR}/templates/pages/forgot-password-2.swig`,
    }),
    new HtmlWebpackPlugin({
      title: 'Loha',
      filename: 'signup.html',
      template: `${APP_DIR}/templates/pages/signup.swig`,
    }),
    new HtmlWebpackPlugin({
      title: 'Loha',
      filename: 'product-list.html',
      template: `${APP_DIR}/templates/pages/product-list.swig`,
    }),
    new HtmlWebpackTagsPlugin({
      tags: [
        'vendors.js',
      ],
      append: false,
      hash: true,
    }),
    ifProduction(new MiniCssExtractPlugin({
      filename: '[name].[hash].css',
      chunkFilename: '[id].css',
    })),
    ifProduction(new OptimizeCSSAssetsPlugin({
      cssProcessor: cssnano,
      cssProcessorOptions: {
        discardComments: {
          removeAll: true,
        },
      },
      canPrint: false,
    })),
    ifProduction(new OfflinePlugin()),
  ]),
});

module.exports = webpackConfig;

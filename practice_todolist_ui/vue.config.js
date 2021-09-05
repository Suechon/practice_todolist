module.exports = {
  publicPath: './',
  transpileDependencies: [
    'vuetify'
  ], devServer: {
    proxy: 'http://localhost:10000'
  },
  outputDir: '../api/src/main/resources/static/'
}

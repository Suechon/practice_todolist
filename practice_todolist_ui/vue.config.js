module.exports = {
  publicPath: './',
  transpileDependencies: [
    'vuetify'
  ], devServer: {
    proxy: 'http://localhost:10000'
  }
}

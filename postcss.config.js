module.exports = {
  plugins: {
    'postcss-mixins': {},
    'postcss-preset-env': {
      autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 2,
      features: {
        'nesting-rules': true,
        'custom-media-queries': true
      },
    },
    'cssnano': {
      preset: 'default'
    }
  }
}

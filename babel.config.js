module.exports = {
  presets: ['module:metro-react-native-babel-preset'],
  sourceMaps: true,
  plugins: [
    [
      'module-resolver',
      {
        root: ['./'],
        alias: {
          src: './src',
          '@components': './src/components',
          '@theme': './src/theme',
          '@models': './src/models',
          '@screens': './src/screens',
          '@hooks': './src/hooks',
          '@utils': './src/utils',
          '@styles': './src/styles',
          '@hocs': './src/hocs',
        },
      },
    ],
  ],
};

module.exports = {
  future: {
    removeDeprecatedGapUtilities: true,
    purgeLayersByDefault: true,
  },
  purge: [],
  corePlugins: {},
  plugins: [
    require('@tailwindcss/custom-forms'),
  ],
}

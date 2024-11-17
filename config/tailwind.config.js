const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      colors: {
        'custom-green': '#82B8A8',
        'brown': '#b8805e', 
      },
      fontFamily: {
        'roca': ['RocaOne', 'sans-serif'],  // Changed to match @font-face family name
        'gotham': ['Gotham', 'sans-serif']
      },
      padding: {
        '25px': '1.5',
        '40px': '2.5rem',    // Custom padding for 40px
        '150px': '9.375rem',  // Custom padding for 150px
        '100px': '6.25rem',   // Custom padding for 100px
        '500px': '31.25rem',  // Custom padding for 500px
        '200px': '12.5rem',   // Custom padding for 200px
        '300px': '18.75rem',  // Custom padding for 300px
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}

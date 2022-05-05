const colors = require('tailwindcss/colors');

module.exports = {
	purge: [
		'./src/**/*.vue',
		'./src/**/*.js',
		'./src/**/*.jsx',
		'./src/**/*.html',
		'./src/**/*.md',
	],
	darkMode: 'class',
	theme: {
		extend: {
			colors: {
				'primary-light': '#FFFF',
				'secondary-light': '#F3F3F3',
				'ternary-light': '#FFFFFF',
				'dark-blue-light': '#00032A',

				'primary-dark': '#00032A',
				'secondary-dark': '#080A3E',
				'ternary-dark': '#FFFFFF',
				'dark-blue-dark': '#E6E6E6',

				'dense-red': '#E20267',
			},
			container: {
				padding: {
					DEFAULT: '1rem',
					sm: '2rem',
					lg: '5rem',
					xl: '6rem',
					'2xl': '8rem',
				},
			},
		},
	},
	variants: {
		extend: { opacity: ['disabled'] },
	},
	plugins: [require('@tailwindcss/forms')],
};

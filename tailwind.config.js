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
				'primary-light': '#E5E5E5',
				'secondary-light': '#F3F3F3',
				'ternary-light': '#FFFFFF',

				'primary-dark': '#00032A',
				'secondary-dark': '#080A3E',
				'ternary-dark': '#FFFFFF',
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

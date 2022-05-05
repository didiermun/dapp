<script>
export default {
	props: ['showModal', 'isOpen'],
};
</script>

<template>
	<!-- Header links -->
	<div
		:class="isOpen ? 'block' : 'hidden'"
		class="m-0 sm:ml-4 mt-5 sm:mt-3 sm:flex p-5 sm:p-0 justify-center items-center shadow-lg sm:shadow-none"
	>
		<router-link
			to="/"
			class=" block text-left text-sm font-semibold text-primary-dark dark:text-ternary-light hover:text-indigo-600 dark:hover:text-indigo-300  sm:mx-4 mb-2 sm:py-2 "
			aria-label="Projects"
			>Home</router-link
		>
		<router-link
			to="/swap"
			class=" block text-left text-sm font-semibold text-primary-dark dark:text-ternary-light hover:text-indigo-600 dark:hover:text-indigo-300  sm:mx-4 mb-2 sm:py-2 border-t-2 pt-3 sm:pt-2 sm:border-t-0 border-primary-light dark:border-secondary-dark"
			aria-label="About Me"
			>Swap</router-link
		>
		<router-link
			to="/govern"
			class=" block text-left text-sm font-semibold text-primary-dark dark:text-ternary-light hover:text-indigo-600 dark:hover:text-indigo-300  sm:mx-4 mb-2 sm:py-2 border-t-2 pt-3 sm:pt-2 sm:border-t-0 border-primary-light dark:border-secondary-dark"
			aria-label="Contact"
			>Governance</router-link
		>
		<router-link
			to="/fiat"
			class="font-semibold block text-left text-sm text-primary-dark dark:text-ternary-light hover:text-indigo-600 dark:hover:text-indigo-300  sm:mx-4 mb-2 sm:py-2 border-t-2 pt-3 sm:pt-2 sm:border-t-0 border-primary-light dark:border-secondary-dark"
			aria-label="About Me"
			>Fiat-On-Ramp</router-link
		>
		<router-link
			to="/farming"
			class=" block text-left text-sm font-semibold text-primary-dark dark:text-ternary-light hover:text-indigo-600 dark:hover:text-indigo-300  sm:mx-4 mb-2 sm:py-2 border-t-2 pt-3 sm:pt-2 sm:border-t-0 border-primary-light dark:border-secondary-dark"
			aria-label="Contact"
			>Farming</router-link
		>
		<div
			class="border-t-2 pt-3 sm:pt-0 sm:border-t-0 border-primary-light dark:border-secondary-dark"
		>
			<button
				class=" sm:hidden block text-left text-md font-semibold bg-indigo-500 hover:bg-indigo-600 text-white shadow-sm rounded-sm px-4 py-2 mt-2 duration-500"
				@click="showModal()"
				aria-label="Hire Me Button"
			>
			<svg width="46" height="47" viewBox="0 0 46 47" fill="none" xmlns="http://www.w3.org/2000/svg">
				<g clip-path="url(#clip0_156_209)">
				<path d="M22.9671 10C20.2876 10 17.6684 10.7945 15.4405 12.2832C13.2126 13.7718 11.4762 15.8876 10.4508 18.3631C9.42546 20.8385 9.15717 23.5625 9.6799 26.1904C10.2026 28.8184 11.4929 31.2323 13.3876 33.127C15.2822 35.0216 17.6961 36.3119 20.3241 36.8346C22.952 37.3573 25.676 37.0891 28.1514 36.0637C30.6269 35.0383 32.7427 33.3019 34.2314 31.074C35.72 28.8462 36.5145 26.2269 36.5145 23.5475C36.5145 19.9544 35.0872 16.5086 32.5466 13.968C30.0059 11.4273 26.5601 10 22.9671 10ZM22.9671 32.5791C21.1808 32.5791 19.4346 32.0494 17.9493 31.057C16.4641 30.0646 15.3065 28.654 14.6229 27.0037C13.9393 25.3534 13.7605 23.5374 14.109 21.7855C14.4574 20.0335 15.3176 18.4242 16.5807 17.1611C17.8438 15.898 19.4531 15.0378 21.2051 14.6894C22.957 14.3409 24.773 14.5197 26.4233 15.2033C28.0736 15.8869 29.4842 17.0445 30.4766 18.5297C31.469 20.015 31.9987 21.7612 31.9987 23.5475C31.9987 25.9428 31.0471 28.24 29.3534 29.9338C27.6596 31.6276 25.3624 32.5791 22.9671 32.5791Z" fill="white"/>
				<path d="M8.75432 6.15254L5.56116 9.3457L10.0795 13.864L13.2727 10.6709L8.75432 6.15254Z" fill="white"/>
				<path d="M35.8505 33.2473L32.6573 36.4404L37.1757 40.9588L40.3688 37.7656L35.8505 33.2473Z" fill="white"/>
				<path d="M37.1863 6.14768L32.668 10.666L35.8612 13.8592L40.3795 9.34085L37.1863 6.14768Z" fill="white"/>
				<path d="M10.0914 33.2209L5.57309 37.7393L8.76626 40.9324L13.2846 36.4141L10.0914 33.2209Z" fill="white"/>
				<path d="M7.16167 21.29H0.387939V25.8059H7.16167V21.29Z" fill="white"/>
				<path d="M45.5461 21.29H38.7724V25.8059H45.5461V21.29Z" fill="white"/>
				<path d="M25.225 0.96875H20.7091V7.74248H25.225V0.96875Z" fill="white"/>
				<path d="M25.225 39.3535H20.7091V46.1272H25.225V39.3535Z" fill="white"/>
				</g>
				<defs>
				<clipPath id="clip0_156_209">
				<rect width="45.1582" height="45.1582" fill="white" transform="translate(0.387939 0.96875)"/>
				</clipPath>
				</defs>
			</svg>

			</button>
		</div>
	</div>
</template>

<style lang="scss" scoped></style>

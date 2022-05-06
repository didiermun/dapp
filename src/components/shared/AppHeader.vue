<script>
import ThemeSwitcher from '../ThemeSwitcher';
import WalletConnectModal from '../WalletConnectModal.vue';
import UserAccountModal from '../UserAccountModal.vue';
import feather from 'feather-icons';
import AppHeaderLinks from './AppHeaderLinks.vue';

export default {
	components: {
		ThemeSwitcher,
		WalletConnectModal,
		AppHeaderLinks,
		UserAccountModal,
	},
	data() {
		return {
			isOpen: false,
			theme: '',
			modal: false,
			loggedIn: 0,
		};
	},

	created() {
		this.theme = localStorage.getItem('theme') || 'light';
		this.loggedIn = parseInt(localStorage.getItem('loggedIn') ||  '') || 0;
	},
	mounted() {
		feather.replace();
		this.theme = localStorage.getItem('theme') || 'light';
	},
	methods: {
		updateTheme(theme) {
			this.theme = theme;
		},
		updateLoggedIn(){
			this.loggedIn = this.loggedIn === 0 ? 1 : 0;
			this.showModal();
		},
		showModal() {
			if (this.modal) {
				// Stop screen scrolling
				document
					.getElementsByTagName('html')[0]
					.classList.remove('overflow-y-hidden');
				this.modal = false;
			} else {
				document
					.getElementsByTagName('html')[0]
					.classList.add('overflow-y-hidden');
				this.modal = true;
			}
		},
	},
	updated() {
		feather.replace();
	},
};
</script>

<template>
	<nav id="nav" class="sm:container sm:mx-auto">
		<!-- Header start -->
		<div
			class="z-10 max-w-screen-lg xl:max-w-screen-xl block sm:flex sm:justify-between sm:items-center my-6"
		>
			<!-- Header menu links and small screen hamburger menu -->
			<div class="flex justify-between items-center px-4 sm:px-0">
				<!-- Header logos -->
				<div>
					<router-link to="/"
						>
						<img
							src="@/assets/images/logo.png"
							class="w-16"
							alt="Logo"
						/>
					</router-link>
				</div>

				<!-- Theme switcher small screen -->
				<theme-switcher
					:theme="theme"
					@themeChanged="updateTheme"
					class="block sm:hidden bg-ternary-light dark:bg-ternary-dark hover:bg-hover-light dark:hover:bg-hover-dark rounded-lg"
				/>

				<!-- Small screen hamburger menu -->
				<div class="sm:hidden">
					<button
						@click="isOpen = !isOpen"
						type="button"
						class="focus:outline-none"
						aria-label="Hamburger Menu"
					>
						<svg
							xmlns="http://www.w3.org/2000/svg"
							viewBox="0 0 24 24"
							class="h-7 w-7 fill-current text-secondary-dark dark:text-ternary-light"
						>
							<path
								v-if="isOpen"
								fill-rule="evenodd"
								d="M18.278 16.864a1 1 0 0 1-1.414 1.414l-4.829-4.828-4.828 4.828a1 1 0 0 1-1.414-1.414l4.828-4.829-4.828-4.828a1 1 0 0 1 1.414-1.414l4.829 4.828 4.828-4.828a1 1 0 1 1 1.414 1.414l-4.828 4.829 4.828 4.828z"
								clip-rule="evenodd"
							></path>
							<path
								v-if="!isOpen"
								fill-rule="evenodd"
								d="M4 5h16a1 1 0 0 1 0 2H4a1 1 0 1 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2z"
							></path>
						</svg>
					</button>
				</div>
			</div>

			<!-- Header links -->
			<AppHeaderLinks :showModal="showModal" :isOpen="isOpen" />

			<!-- Header right section buttons -->
			<div
				class="hidden sm:flex justify-between items-center flex-col md:flex-row"
			>
				<!-- Hire me button -->

				<!-- Theme switcher large screen -->
				<theme-switcher
					:theme="theme"
					@themeChanged="updateTheme"
					class="mr-8  px-3 py-2 shadow-sm rounded-xl cursor-pointer"
				/>
				<div class="hidden md:block">
					<button  @click="showModal()">
						<svg 
						class="text-secondary-dark dark:text-ternary-light" 
						width="34" height="34" viewBox="0 0 40 40" xmlns="http://www.w3.org/2000/svg">
							<path d="M19.9806 0.0246845C16.0308 0.0296528 12.1712 1.20575 8.88982 3.40426C5.60846 5.60277 3.05273 8.72494 1.54581 12.376C0.0388819 16.027 -0.351548 20.0429 0.423888 23.9158C1.19932 27.7887 3.1058 31.3447 5.90222 34.1341C8.69865 36.9235 12.2594 38.821 16.1343 39.5867C20.0091 40.3524 24.024 39.9519 27.6712 38.4358C31.3185 36.9196 34.4342 34.3561 36.6244 31.0692C38.8147 27.7823 39.9811 23.9198 39.9761 19.97C39.9728 17.3474 39.453 14.7512 38.4463 12.3295C37.4397 9.90789 35.9659 7.70821 34.1091 5.85612C32.2524 4.00403 30.049 2.53579 27.6248 1.53523C25.2006 0.534669 22.6031 0.0213857 19.9806 0.0246845V0.0246845ZM10.5559 32.848C11.2192 30.8639 12.489 29.1383 14.1859 27.9147C15.8828 26.6912 17.9212 26.0315 20.0133 26.0289C22.1053 26.0262 24.1454 26.6808 25.8454 27.9C27.5454 29.1193 28.8195 30.8418 29.4878 32.8242C26.7543 34.8636 23.4362 35.9673 20.0258 35.9716C16.6154 35.9759 13.2944 34.8805 10.5559 32.848V32.848ZM15.0093 17.0058C15.0081 16.0184 15.2997 15.0527 15.8472 14.231C16.3948 13.4093 17.1737 12.7684 18.0855 12.3894C18.9973 12.0104 20.0011 11.9102 20.9698 12.1016C21.9385 12.2931 22.8287 12.7674 23.5278 13.4648C24.2269 14.1621 24.7035 15.0511 24.8974 16.0194C25.0912 16.9876 24.9936 17.9916 24.6169 18.9043C24.2402 19.8171 23.6012 20.5976 22.7809 21.1473C21.9605 21.6969 20.9956 21.9909 20.0082 21.9921C18.6841 21.9938 17.4135 21.4694 16.476 20.5343C15.5386 19.5992 15.011 18.3299 15.0093 17.0058V17.0058ZM32.5795 29.8247C31.2275 27.0569 28.9992 24.8132 26.2408 23.4421C27.5307 22.198 28.4191 20.5965 28.792 18.8435C29.1648 17.0906 29.005 15.2662 28.3331 13.6047C27.6611 11.9433 26.5078 10.5207 25.0212 9.51971C23.5347 8.51873 21.7827 7.98508 19.9906 7.98734C18.1984 7.98959 16.4478 8.52764 14.9638 9.53236C13.4797 10.5371 12.33 11.9626 11.6622 13.6257C10.9945 15.2888 10.8393 17.1136 11.2165 18.8656C11.5938 20.6177 12.4862 22.2169 13.7793 23.4578C11.0243 24.8358 8.80169 27.0851 7.45667 29.8563C5.60144 27.5018 4.44606 24.6727 4.12259 21.6926C3.79912 18.7124 4.3206 15.7014 5.62745 13.0036C6.93429 10.3058 8.97376 8.03013 11.5128 6.43661C14.0518 4.84309 16.9879 3.99604 19.9856 3.99227C22.9832 3.9885 25.9214 4.82816 28.4644 6.41529C31.0075 8.00242 33.0527 10.273 34.3663 12.9675C35.6799 15.662 36.209 18.6717 35.893 21.6526C35.577 24.6336 34.4288 27.4655 32.5795 29.8247V29.8247Z" :fill="theme === 'light' ? '#00032A' : '#FFF'"/>
						</svg>

					</button>
				
				</div>
			</div>
		</div>

		<!-- Hire me modal -->
		<WalletConnectModal v-if="loggedIn == 0"
			:showModal="showModal"
			:modal="modal"
			:updateLoggedIn="updateLoggedIn"
			aria-modal="Wallet Connect"
		/>
		<UserAccountModal v-else
			:showModal="showModal"
			:modal="modal"
			:updateLoggedIn="updateLoggedIn"
			aria-modal="User Account"
		/>
		
	</nav>
	
</template>

<style scoped>
#nav a.router-link-exact-active {
	@apply text-indigo-700;
	@apply dark:text-indigo-400;
	@apply font-medium;
}
</style>

<script>
import feather from 'feather-icons';
// import Button from './reusable/Button.vue';
export default {
	props: ['showModal', 'modal'],
	// components: { Button },
	data() {
		return {};
	},
	mounted() {
		feather.replace();
	},
	updated() {
		feather.replace();
	},
	methods: {},
};
</script>

<template>
	<transition name="fade">
		<div v-show="modal" class="font-general-regular fixed inset-0 z-30">
			<!-- Modal body background as backdrop -->
			<div
				v-show="modal"
				@click="showModal()"
				class="bg-filter bg-black bg-opacity-50 fixed inset-0 w-full h-full z-20"
			></div>
			<!-- Modal content -->
			<main
				class="flex flex-col items-center justify-center h-full w-full"
			>
				<transition name="fade-up-down">
					<div
						v-show="modal"
						class="modal-wrapper flex items-center z-30"
					>
						<div
							class="modal max-w-md mx-5 xl:max-w-xl lg:max-w-xl md:max-w-xl bg-secondary-light dark:bg-primary-dark max-h-screen shadow-lg flex-row rounded-lg relative"
						>
							<div
								class="modal-header flex gap-10 p-5 border-ternary-light dark:border-ternary-dark w-full justify-end"
							>
								<button
									class="px-4 text-primary-dark dark:text-primary-light"
									@click="showModal()"
								>
									<i data-feather="x"></i>
								</button>
							</div>
							<div class="modal-body p-5 w-full h-full">
								<form class="max-w-xl mx-4 text-left mb-6">
									<p class="text-primary-dark dark:text-ternary-light text-3xl font-bold text-left w-80">Connect  Wallet</p>
									<p class="mt-3 text-primary-dark dark:text-ternary-light text-lg font-medium text-left">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

									<div class="flex gap-4 mt-8 justify-center">
										<div @click="showModal()" class="cursor-pointer bg-primary-dark dark:bg-primary-light flex px-3 py-3 rounded-md">
											<img class="w-20 h-20 object-contain" src="@/assets/images/metamask.png" alt="WDC">


										</div>
										<div @click="showModal()" class="cursor-pointer bg-primary-dark dark:bg-primary-light flex px-3 py-3 rounded-md">
											<img class="w-20 h-20 object-cover" src="@/assets/images/coinbase.png" alt="WDC">





										</div>
										<div @click="showModal()" class="cursor-pointer bg-primary-dark dark:bg-primary-light flex px-3 py-3 rounded-md">
											<img class="w-20 h-20 object-cover" src="@/assets/images/wdc.png" alt="WDC">


										</div>
									</div>
									
								</form>
							</div>
						</div>
					</div>
				</transition>
			</main>
		</div>
	</transition>
</template>

<style scoped>
.modal-body {
	max-height: 500px;
}
.bg-gray-800-opacity {
	background-color: #2d374850;
}
@media screen and (max-width: 768px) {
	.modal-body {
		max-height: 400px;
	}
}
.fade-up-down-enter-active {
	transition: all 0.3s ease;
}
.fade-up-down-leave-active {
	transition: all 0.3s ease;
}
.fade-up-down-enter {
	transform: translateY(10%);
	opacity: 0;
}
.fade-up-down-leave-to {
	transform: translateY(10%);
	opacity: 0;
}

.fade-enter-active {
	-webkit-transition: opacity 2s;
	transition: opacity 0.3s;
}
.fade-leave-active {
	transition: opacity 0.3s;
}

.fade-enter,
.fade-leave-to {
	opacity: 0;
}
</style>

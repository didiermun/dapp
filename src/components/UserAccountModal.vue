<script>
import feather from 'feather-icons';
// import Button from './reusable/Button.vue';
export default {
	props: ['showModal', 'modal'],
	// components: { Button },
	data() {
		return {
            theme:''
        };
	},
	mounted() {
		feather.replace();
	},
    created() {
		this.theme = localStorage.getItem('theme') || 'light';
	},
	updated() {
		feather.replace();
	},
	methods: {},
};
</script>

<template>
	<transition name="fade">
		<div v-show="modal" class="fixed inset-0 z-30">
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
									<div class="flex flex-col gap-3 w-60">
                                        <svg width="60" height="60" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M15.9855 0.0199314C12.8239 0.0239083 9.73444 0.965331 7.10785 2.72515C4.48125 4.48497 2.43548 6.98415 1.22925 9.90665C0.0230133 12.8291 -0.289511 16.0437 0.331195 19.1438C0.951901 22.2439 2.47796 25.0904 4.71639 27.3232C6.95482 29.556 9.80509 31.0749 12.9068 31.6878C16.0084 32.3007 19.2222 31.9801 22.1416 30.7665C25.0611 29.5529 27.5551 27.5009 29.3083 24.8698C31.0615 22.2388 31.9952 19.147 31.9912 15.9854C31.9886 13.8861 31.5725 11.8079 30.7667 9.86949C29.9609 7.93105 28.7812 6.1703 27.2949 4.68777C25.8087 3.20524 24.0449 2.02997 22.1045 1.22906C20.164 0.428154 18.0848 0.0172908 15.9855 0.0199314ZM8.44144 26.2937C8.97242 24.7055 9.98882 23.3242 11.3472 22.3448C12.7055 21.3654 14.3371 20.8374 16.0117 20.8353C17.6863 20.8332 19.3193 21.3571 20.6801 22.3331C22.0409 23.309 23.0608 24.6878 23.5957 26.2746C21.4077 27.9071 18.7516 28.7906 16.0217 28.794C13.2918 28.7974 10.6336 27.9206 8.44144 26.2937ZM12.0063 13.6127C12.0053 12.8223 12.2387 12.0493 12.677 11.3915C13.1153 10.7338 13.7388 10.2208 14.4686 9.91738C15.1985 9.61399 16.0019 9.53384 16.7774 9.68706C17.5528 9.84029 18.2653 10.22 18.825 10.7782C19.3846 11.3364 19.7661 12.048 19.9213 12.8231C20.0764 13.5981 19.9983 14.4017 19.6967 15.1323C19.3952 15.863 18.8837 16.4878 18.2271 16.9277C17.5704 17.3677 16.7981 17.603 16.0077 17.604C14.9478 17.6054 13.9307 17.1856 13.1803 16.4371C12.4299 15.6885 12.0076 14.6726 12.0063 13.6127ZM26.0705 23.8737C24.9883 21.6582 23.2046 19.8622 20.9966 18.7647C22.0291 17.7688 22.7403 16.4869 23.0387 15.0837C23.3372 13.6805 23.2092 12.2202 22.6714 10.8902C22.1336 9.56031 21.2104 8.42157 20.0204 7.62033C18.8305 6.81908 17.4281 6.39192 15.9936 6.39372C14.559 6.39553 13.1577 6.82622 11.9698 7.63045C10.7819 8.43469 9.86156 9.57575 9.32706 10.907C8.79256 12.2383 8.66832 13.699 8.97028 15.1014C9.27224 16.5038 9.98662 17.7839 11.0216 18.7772C8.81644 19.8803 7.0373 21.6808 5.96066 23.899C4.47562 22.0142 3.55078 19.7497 3.29186 17.3642C3.03293 14.9787 3.45036 12.5685 4.49644 10.4091C5.54252 8.24959 7.17504 6.42798 9.20742 5.15243C11.2398 3.87688 13.59 3.19885 15.9895 3.19583C18.389 3.19281 20.741 3.86493 22.7766 5.13536C24.8121 6.40579 26.4492 8.22329 27.5008 10.3801C28.5523 12.537 28.9758 14.9461 28.7228 17.3322C28.4699 19.7184 27.5508 21.9852 26.0705 23.8737Z" :fill="theme === 'light' ? '#00032A' : '#FFF'"/>
                                        </svg>
                                        <p class="font-semibold text-xl dark:text-primary-light text-primary-dark">Valerio_Pini</p>
                                        <p class="font-light text-lg dark:text-primary-light text-primary-dark">BALANCE</p>
                                        <p class="font-semibold text-lg dark:text-primary-light text-primary-dark">238.128,182394 ibz</p>
                                        <p class="font-semibold text-lg dark:text-primary-light text-primary-dark">123,289 weth</p>


                                        <button class="mt-4 bg-primary-dark dark:bg-white rounded-3xl text-primary-light font-semibold px-8 py-2 dark:text-primary-dark">DISCONNECT</button>
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

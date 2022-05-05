<script>

export default {
    data(){
        return{
            theme:'',
        }
    },
    created() {
		this.theme = localStorage.getItem('theme') || 'light';
	},
}
</script>

<template>
    <div class="w-full flex justify-center">
        <div class="my-5 p-7 bg-secondary-light dark:bg-secondary-dark rounded-xl shadow-xl flex flex-col gap-3 px-16 py-10">
            <p class="text-primary-dark dark:text-ternary-light text-3xl font-bold text-left">Swap</p>
            <div class="mt-2 flex flex-col gap-4">
            <div class="flex flex-col gap-6">
                <div class="flex flex-col gap-1">
                    <p class="w-full text-left text-primary-dark dark:text-primary-light">From</p>
                    <div class="flex gap-4 w-full">
                        <input type="text" class="bg-dark-blue-light border-none dark:bg-primary-dark w-28 rounded-lg text-primary-dark dark:text-primary-light">
                        <input type="text" value="0" class="bg-dark-blue-light border-none dark:bg-primary-dark w-72 rounded-lg text-primary-dark dark:text-primary-light">
                    </div>
                    <p class="w-full text-right text-primary-dark dark:text-primary-light">Max</p>
                </div>

               <div class="flex justify-between">
                   <div class="flex">
                   <svg class="cursor-pointer" width="22" height="20" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M6 6.00024H3.275C4.12474 4.77721 5.34303 3.85768 6.75216 3.37579C8.16129 2.89389 9.68753 2.87485 11.1082 3.32144C12.529 3.76803 13.7698 4.65689 14.6498 5.85834C15.5298 7.0598 16.0028 8.51099 16 10.0002H18C18.0009 8.13874 17.4245 6.32276 16.3503 4.80248C15.2761 3.2822 13.7569 2.13241 12.002 1.5115C10.2471 0.890599 8.3428 0.829127 6.55151 1.33556C4.76022 1.84199 3.17003 2.8914 2 4.33924V2.00024H0V8.00024H6V6.00024Z" :fill="theme === 'light' ? '#00032A' : '#FFF'"/>
                        <path d="M12 14H14.725C13.8753 15.223 12.657 16.1426 11.2478 16.6245C9.83871 17.1063 8.31247 17.1254 6.89176 16.6788C5.47105 16.2322 4.2302 15.3434 3.35021 14.1419C2.47023 12.9404 1.99716 11.4892 2 10H9.55917e-07C-0.00085677 11.8615 0.575521 13.6775 1.64974 15.1978C2.72395 16.718 4.24315 17.8678 5.99805 18.4887C7.75295 19.1096 9.6572 19.1711 11.4485 18.6647C13.2398 18.1583 14.83 17.1088 16 15.661V18H18V12H12V14Z" :fill="theme === 'light' ? '#00032A' : '#FFF'"/>
                    </svg>
                    </div>
                    <div class="flex gap-2 cursor-pointer">
                        <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M11 0.875C5.417 0.875 0.875 5.417 0.875 11C0.875 16.583 5.417 21.125 11 21.125C16.583 21.125 21.125 16.583 21.125 11C21.125 5.417 16.583 0.875 11 0.875ZM11 18.875C6.658 18.875 3.125 15.342 3.125 11C3.125 6.658 6.658 3.125 11 3.125C15.342 3.125 18.875 6.658 18.875 11C18.875 15.342 15.342 18.875 11 18.875Z" :fill="theme === 'light' ? '#00032A' : '#FFF'"/>
                            <path d="M12 6H10V10H6V12H10V16H12V12H16V10H12V6Z" :fill="theme === 'light' ? '#00032A' : '#FFF'"/>
                        </svg>
                        <p class="text-primary-dark dark:text-primary-light">Add A Send(Optional)</p>
                    </div>

               </div>

                <div class="flex flex-col gap-1">
                    <p class="w-full text-left text-primary-dark dark:text-primary-light">To</p>
                    <div class="flex gap-4 w-full">
                        <input type="text" class="bg-dark-blue-light border-none dark:bg-primary-dark w-28 rounded-lg text-primary-dark dark:text-primary-light">
                        <input type="text" value="0" class="bg-dark-blue-light border-none dark:bg-primary-dark w-72 rounded-lg text-primary-dark dark:text-primary-light">
                    </div>
                </div>
               
                
            </div>
            </div>

            <div class="flex justify-center mt-6">
                <button class="bg-primary-dark rounded-3xl border-2 border-dense-red text-primary-light font-semibold px-8 py-2">Connect Wallet</button>
            </div>
        </div>
    </div>
</template>
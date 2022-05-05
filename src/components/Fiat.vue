<template>
    <div class="w-full flex justify-center">
        <div class="my-5 p-7 bg-secondary-light dark:bg-secondary-dark rounded-xl shadow-xl flex flex-col gap-3 px-20 py-10">
            <p class="text-primary-dark dark:text-ternary-light text-3xl font-bold text-left w-80">Fiat On Ramp</p>
            <p class="mt-4 text-primary-dark dark:text-ternary-light text-lg font-bold text-left">Select currency and payment method</p>
            <div class="mt-2 flex flex-col gap-4">
            <div class="flex flex-col">
                <div class="flex flex-col gap-2">
                    <p class="w-full text-left text-primary-dark dark:text-primary-light">Currency</p>
                    <div class="flex gap-4 w-full">
                        <input type="text" class="bg-dark-blue-light border-none dark:bg-primary-dark w-28 rounded-lg text-primary-dark dark:text-primary-light">
                        <input type="text" value="0" class="bg-dark-blue-light border-none dark:bg-primary-dark w-72 rounded-lg text-primary-dark dark:text-primary-light">
                    </div>
                </div>

                <div class="mt-8 mb-3">
                    <p class="mt-4 text-primary-dark dark:text-ternary-light text-lg font-bold text-left">Purchase Details</p>
                </div>
                <div class="flex flex-col gap-2">
                    <p class="w-full text-left text-primary-dark dark:text-primary-light">Amount estimated</p>
                    <div class="flex gap-4 w-full">
                        <input type="text" class="bg-dark-blue-light border-none dark:bg-primary-dark w-28 rounded-lg text-primary-dark dark:text-primary-light">
                        <input type="text" value="0" class="bg-dark-blue-light border-none dark:bg-primary-dark w-72 rounded-lg text-primary-dark dark:text-primary-light">
                    </div>
                </div>
                
            </div>
            </div>

            <div class="flex flex-col gap-4 px-0 mt-6">
                <p class="text-primary-dark dark:text-ternary-light font-semibold">EXCHANGE RATE <span class="mx-3 bg-dark-blue-light border-none dark:bg-primary-dark px-4 py-1 rounded-lg font-semibold">1 USDC = 1,023 EURO</span></p>
                <p class="text-primary-dark dark:text-ternary-light font-semibold">YOU WILL GET <span class="mx-3 bg-dark-blue-light border-none dark:bg-primary-dark px-4 py-1 rounded-lg font-semibold">1 USDC = 1,023 EURO</span></p>
            </div>

            <div class="flex justify-center mt-6">
                <button class="bg-primary-dark rounded-3xl border-2 border-dense-red text-primary-light font-semibold px-8 py-2">Connect Wallet</button>
            </div>
        </div>
    </div>
</template>
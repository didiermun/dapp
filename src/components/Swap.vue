<template>
<div class="flex justify-center">
<div class="w-1/2">
    <div class="w-full flex justify-center">
        <div class="my-5 p-7 bg-secondary-light dark:bg-secondary-dark rounded-xl shadow-xl flex flex-col gap-3">
            <p class="text-primary-dark dark:text-ternary-light text-xl font-semibold text-left w-80">Farming</p>
            <div class="flex flex-col gap-5">
                <p class="text-primary-dark dark:text-ternary-light text-sm font-medium text-left">Staking your LP tokens (WMATIC - IBZ on quickswap) and get reward from liquidity mining program.
                    When you deposit LP token, you get IBZF token and your rewards will start growing.</p>
                <p class="text-primary-dark dark:text-ternary-light text-sm font-medium text-left">    
                    When you add or remove liquidity, your rewards are automatically transfer to your wallet.
                </p>
            </div>
            <div class="mt-6 flex flex-col gap-4">
            <div class="flex flex-col">
                <div class="flex gap-4 w-full">
                    <input type="text" value="0" class="bg-primary-light border-none dark:bg-primary-dark w-4/6 rounded-lg text-primary-dark dark:text-primary-light">
                    <button class="bg-primary-dark rounded-3xl border-2 border-dense-red text-primary-light w-2/6 font-semibold">Approve LP</button>
                </div>
                <div class="flex w-4/6 justify-between py-2">
                    <span class="text-primary-dark dark:text-primary-light text-xs px-1">Your RP:0</span>
                    <span class="text-primary-dark dark:text-primary-light text-xs pr-3">Max</span>
                </div>
            </div>

            <div class="flex flex-col">
                <div class="flex gap-4 w-full">
                    <input type="text" value="0" class="bg-dark-blue-light border-none dark:bg-primary-dark w-4/6 rounded-lg text-primary-dark dark:text-primary-light">
                    <button class="bg-primary-dark rounded-3xl border-2 border-dense-red text-primary-light w-2/6 font-semibold">Approve IBZF</button>
                </div>
                <div class="flex w-4/6 justify-between py-2">
                    <span class="text-primary-dark dark:text-primary-light text-xs px-1">Your IBZF:0</span>
                    <span class="text-primary-dark dark:text-primary-light text-xs pr-3">Max</span>
                </div>
            </div>
            
            </div>

            <div class="flex gap-6 px-0 mt-3">
                <p class="text-primary-dark dark:text-ternary-light">ACTUAL REWARD APR <span class="mx-3 bg-primary-light border-none dark:bg-primary-dark px-4 py-1 rounded-lg">235.4%</span></p>
            </div>
        </div>
    </div>
</div>
</div>
</template>
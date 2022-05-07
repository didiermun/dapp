<template>
    <div class="w-full flex justify-center">
        <div class="my-5 p-7 bg-secondary-light dark:bg-secondary-dark rounded-xl shadow-xl flex flex-col gap-3 px-20">
            <div class="flex justify-between">
                <p class="text-primary-dark dark:text-ternary-light text-3xl font-bold text-left w-80">Governance</p>
                <button class="mt-4 bg-primary-dark dark:bg-white rounded-3xl text-primary-light font-semibold px-8 py-2 dark:text-primary-dark">Create New </button>
            </div>
            
            <div class="mt-6 flex flex-col gap-4 mb-16">
                <p class="text-primary-dark dark:text-ternary-light text-lg font-bold text-left">Proposal</p>
                <!-- <div class="flex flex-col gap-3 mt-3">
                    <div class="w-full flex gap-3">
                        <p class="text-left font-semibold text-sm w-52 text-primary-dark dark:text-ternary-light">Description</p>
                        <p class="text-left font-semibold text-sm w-28 text-primary-dark dark:text-ternary-light">Status</p>
                        <p class="text-left font-semibold text-sm w-28 text-primary-dark dark:text-ternary-light">Start Date</p>
                        <p class="text-left font-semibold text-sm w-28 text-primary-dark dark:text-ternary-light">End Date</p>
                        <p class="text-left font-semibold text-sm w-28 text-primary-dark dark:text-ternary-light">Author</p>
                    </div>
                    <div class="w-full flex gap-3">
                        <input type="text" class="w-52 bg-dark-blue-light border-none dark:bg-primary-dark rounded-lg text-primary-dark dark:text-primary-light">
                        <input type="text" class="w-28 bg-dark-blue-light border-none dark:bg-primary-dark rounded-lg text-primary-dark dark:text-primary-light">
                        <input type="text" class="w-28 bg-dark-blue-light border-none dark:bg-primary-dark rounded-lg text-primary-dark dark:text-primary-light">
                        <input type="text" class="w-28 bg-dark-blue-light border-none dark:bg-primary-dark rounded-lg text-primary-dark dark:text-primary-light">
                        <input type="text" class="w-28 bg-dark-blue-light border-none dark:bg-primary-dark rounded-lg text-primary-dark dark:text-primary-light">
                    </div>
                </div> -->

                <div class="grid grid-cols-12 gap-3 px-6 md:px-4">
                    <div class="col-span-12 md:col-span-8 lg:col-span-4 block">
                        <p class="pl-1 text-left font-semibold text-sm text-primary-dark dark:text-ternary-light">Description</p>
                        <input type="text" class="w-full bg-dark-blue-light border-none dark:bg-primary-dark rounded-lg text-primary-dark dark:text-primary-light">
                    </div>
                    <div class="col-span-6 md:col-span-4 lg:col-span-2 block">
                        <p class="pl-1 text-left font-semibold text-sm text-primary-dark dark:text-ternary-light">Status</p>
                        <input type="text" class="w-full bg-dark-blue-light border-none dark:bg-primary-dark rounded-lg text-primary-dark dark:text-primary-light">
                    </div>
                    <div class="col-span-6 md:col-span-4 lg:col-span-2 block">
                        <p class="pl-1 text-left font-semibold text-sm  text-primary-dark dark:text-ternary-light">Start Date</p>
                        <input type="text" class="w-full bg-dark-blue-light border-none dark:bg-primary-dark rounded-lg text-primary-dark dark:text-primary-light">
                    </div>
                    <div class="col-span-6 md:col-span-4 lg:col-span-2 block">
                        <p class="pl-1 text-left font-semibold text-sm text-primary-dark dark:text-ternary-light">End Date</p>
                        <input type="text" class="w-full bg-dark-blue-light border-none dark:bg-primary-dark rounded-lg text-primary-dark dark:text-primary-light">
                    </div>
                    <div class="col-span-6 md:col-span-4 lg:col-span-2 block">
                        <p class="pl-1 text-left font-semibold text-sm text-primary-dark dark:text-ternary-light">Author</p>
                        <input type="text" class="w-full bg-dark-blue-light border-none dark:bg-primary-dark rounded-lg text-primary-dark dark:text-primary-light">
                    </div>
                </div>
                    
            </div>
        </div>
    </div>
</template>
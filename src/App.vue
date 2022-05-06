<script>
import feather from 'feather-icons';
import AppHeader from './components/shared/AppHeader';
import AppFooter from './components/shared/AppFooter';

export default {
	components: {
		AppHeader,
		AppFooter,
	},
	data: () => {
		return {
			appTheme: localStorage.getItem('theme'),
		};
	},
	mounted() {
		feather.replace();
	},
	updated() {
		feather.replace();
	},
};
</script>

<template>
	<div :class="appTheme" class="pt-0.5">
		<!-- App header -->
		<AppHeader />
		<div  class="livello" :class="'livello-'+appTheme">

		<!-- Render active component contents with vue transition -->
		<transition name="fade" mode="out-in">
			<div class="full-screen flex justify-center items-center pb-10">
				<router-view :theme="appTheme" />
			</div>
		</transition>

		<!-- Scroll to top -->
		<back-to-top
			visibleoffset="500"
			right="30px"
			bottom="20px"
			class="shadow-lg"
		>
			<i data-feather="chevron-up"></i>
		</back-to-top>

		<!-- App footer -->
		<AppFooter />
		</div>
	</div>
</template>

<style>
#app {
	font-family: Kanit,Avenir, Helvetica, Arial, sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	text-align: center;
}

.vue-back-to-top {
	@apply p-2 bg-indigo-500 hover:bg-indigo-600 text-white transition
        duration-500
        ease-in-out
        transform
        hover:-translate-y-1 hover:scale-110;
	border-radius: 50%;
	font-size: 22px;
	line-height: 22px;
}

.full-screen{
	min-height: 80vh;
}

.livello {
	transition: all 0.5s ease-in-out;
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.livello-dark {
	background-image: url('./assets/images/dark-livello.png');
	
}

.livello-light {
	background-image: url('./assets/images/white-livello.png')
}
.fade-enter-active {
	animation: coming 0.4s;
	animation-delay: 0.2s;
	opacity: 0;
}

.fade-leave-active {
	animation: going 0.4s;
}

@keyframes going {
	from {
		transform: translateX(0);
	}

	to {
		transform: translateX(-10px);
		opacity: 0;
	}
}

@keyframes coming {
	from {
		transform: translateX(-10px);
		opacity: 0;
	}

	to {
		transform: translateX(0px);
		opacity: 1;
	}
}
</style>

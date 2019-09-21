import * as OfflinePluginRuntime from 'offline-plugin/runtime';
import application from './core/application';
import pageHome from './pages/home';
import modulePartnerSlider from './modules/partner-slider';
import '../styles/style.less';

OfflinePluginRuntime.install();

// application

const applicationModules = [
  // modules
  { name: 'modulePartnerSlider', content: modulePartnerSlider, isActive: $('.partner-slider').length > 0 },

  // pages
  { name: 'pageHome', content: pageHome, isActive: $('.page-home').length > 0 },
];

applicationModules.forEach(({
  name,
  content,
  isActive,
}) => {
  if (isActive) {
    application.register(name, content);
  }
});


$(() => {
  application.start();
});

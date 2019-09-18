module.exports = {
  preset: 'jest-puppeteer',
  rootDir: './..',
  testMatch: ['<rootDir>/**/*.test.js'],
  setupTestFrameworkScriptFile: '<rootDir>/tests/setup.js',
  timers: 'fake',
};

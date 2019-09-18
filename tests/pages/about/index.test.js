/* eslint no-undef: 0 */
afterAll(() => setTimeout(() => process.exit(), 1000));

describe('Visual regession test', () => {
  beforeAll(async () => {
    await page.goto('http://localhost:8080/about.html', { waitUntil: 'load', timeout: 0 });
  }, 100000);

  it('on home page', async () => {
    await page.setViewport({ width: 1920, height: 1080 });
    const screenshot = await page.screenshot({ fullPage: true });
    expect(screenshot).toMatchImageSnapshot();
  }, 100000);
});

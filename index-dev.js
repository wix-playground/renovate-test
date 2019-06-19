/*eslint import/no-unresolved: 0*/
const { start, stop } = require('./dist/test/environment');

// tear down hooks
function stopAndExitWith(code) {
  return async () => {
    await stop();
    process.exit(code);
  };
}

process.on('SIGHUP', stopAndExitWith(128 + 1));
process.on('SIGINT', stopAndExitWith(128 + 2));
process.on('SIGTERM', stopAndExitWith(128 + 15));

start();

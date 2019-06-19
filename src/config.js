module.exports = context => {
  // load your app-specific configuration values
  const { petriScopes } = context.config.load('wix-renovate-bot');

  // return your app-specific context - an object which contains your domain singletons
  // (eg DB connections, kafka producers/consumers) shared by all your express, websocket and RPC services.
  // you may return a Promise which resolves to an object, in that case bootstrap startup sequence will wait for
  // that promise to resolve before bringing up the listeners (HTTP/kafka/RPC).
  return {
    petriScopes,
  };
};

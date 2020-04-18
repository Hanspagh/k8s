use Mix.Config

config :k8s,
  discovery_driver: K8s.Discovery.Driver.File,
  discovery_opts: [config: "test/support/discovery/example.json"],
  http_provider: K8s.Client.DynamicHTTPProvider,
  websocket_provider: K8s.Client.DynamicWebSocketProvider,
  clusters: %{
    test: %{
      conn: "test/support/kube-config.yaml",
      conn_opts: [
        discovery_driver: K8s.Discovery.Driver.File,
        discovery_opts: [config: "test/support/discovery/example.json"]
      ]
    }
  }

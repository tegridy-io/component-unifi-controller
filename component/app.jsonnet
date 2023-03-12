local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.unifi_controller;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('unifi-controller', params.namespace);

{
  'unifi-controller': app,
}

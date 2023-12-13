const core = require("@actions/core");
const glob = require("@actions/glob");
const path = require('path');

function objectToCSV(obj) {
  const result = [];
  for (const [key, value] of Object.entries(obj)) {
    result.push(`${key}:${value}`);
  }
  return result.join(',');
};

function defaultsDeep(object, defaultObject) {
  if (!defaultObject || typeof defaultObject !== 'object') {
    return object;
  }
 
  const result = { ...object };
 
  Object.keys(defaultObject).forEach(key => {
    if (typeof defaultObject[key] === 'object') {
      result[key] = defaultsDeep(result[key], defaultObject[key]);
    } else if (!(key in result)) {
      result[key] = defaultObject[key];
    }
  });
 
  return result;
}

async function main() {
    const jsonPath = path.join(process.env.GITHUB_WORKSPACE, core.getInput("path"));
    const defaults = require(path.join(jsonPath, 'defaults.json'));

    const patterns = [`${jsonPath}/*.json`, `!${jsonPath}/defaults.json`];
    const globber = await glob.create(patterns.join('\n'));
    const files = await globber.glob();

    const fw = {
      'ncp-uart-hw': [],
      'rcp-uart-802154': [],
      'ot-rcp': [],
    };
    const targets = [];

    for (const file of files) {
      const obj = require(file);
      const manifest = defaultsDeep(obj, defaults); 

      const { name, target, device } = manifest;
      targets.push(target);

      for (const t of Object.keys(fw)) {
          let matrix = {name, target, device, ...manifest[t]};

          // merge global configuration (params) and flatten
          let conf = {...matrix.configuration, ...manifest.params}
          matrix.configuration = objectToCSV(conf);

          fw[t].push(matrix);
      };
    }

    core.setOutput('ncp_matrix', fw['ncp-uart-hw']);
    core.setOutput('rcp_matrix', fw['rcp-uart-802154']);
    core.setOutput('ot_matrix', fw['ot-rcp']);
    core.setOutput('targets', targets);
    return "Processing complete";
}

main()
  .then((msg) => {
    console.log(msg);
  })
  .catch((err) => {
    core.setFailed(err.message);
  });

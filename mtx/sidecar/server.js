const cds = require('@sap/cds');
const xsenv = require('@sap/xsenv');
const { MTX } = require('@sap/low-code-event-handler/mtx');
const LOG = cds.log('lcap-mtx')
try {
    MTX.initRoute();
} catch (error) {
    LOG.error(error);
}

cds.on('served', async () => {
    try {

        const { 'cds.xt.SaasProvisioningService': provisioning } = cds.services;
        await provisioning.prepend(() => {
            provisioning.on('dependencies', async (req, next) => {
                await next();
                const services = xsenv.getServices({
                    dest: { label: 'destination' }
                })
                let dependencies = [
                    {
                        xsappname: services.dest.xsappname
                    }
                ]
                return dependencies;
            })
        });
    } catch (error) {
        console.log("ZZ-MTX server.js error occurred and handled in catch block");
    }

});

module.exports = cds.server;
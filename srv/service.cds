using { SampleCapex as my } from '../db/schema';

@path : '/service/SampleCapex'
service SampleCapexService
{
    @odata.draft.enabled
    entity Capex as
        projection on my.Capex;

    entity Contractors as
        projection on my.Contractors;
}

annotate SampleCapexService with @requires :
[
    'authenticated-user'
];

using {SampleCapex as my} from '../db/schema';

@path: '/service/SampleCapex'
service SampleCapexService {
    annotate Capex with @restrict: [
        {
            grant: ['*'],
            to   : ['authenticated-user']
        },
        {
            grant: ['*'],
            to   : ['any']
        },
        {
            grant: ['*'],
            to   : ['system-user']
        }
    ];

    annotate Contractors with @restrict: [
        {
            grant: ['*'],
            to   : ['authenticated-user']
        },
        {
            grant: ['*'],
            to   : ['any']
        },
        {
            grant: ['*'],
            to   : ['system-user']
        }
    ];

    @odata.draft.enabled
    entity Capex       as projection on my.Capex;

    entity Contractors as projection on my.Contractors;
}

annotate SampleCapexService with @requires: [
    'authenticated-user',
    'any',
    'system-user'
];

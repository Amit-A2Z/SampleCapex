using SampleCapexService as service from '../../srv/service';

annotate service.Capex with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'total_cost',
            Value : total_cost,
        },
        {
            $Type : 'UI.DataField',
            Label : 'contractors_contractor',
            Value : contractors_contractor,
        },
    ]
);
annotate service.Capex with {
    contractors @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Contractors',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : contractors_contractor,
                ValueListProperty : 'contractor',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    }
};
annotate service.Capex with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'total_cost',
                Value : total_cost,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contractors_contractor',
                Value : contractors_contractor,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);

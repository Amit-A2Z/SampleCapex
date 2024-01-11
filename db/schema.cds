namespace SampleCapex;

using {
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
} from '@sap/cds/common';

entity Capex {
    key ID          : UUID;
        description : String(100);
        total_cost  : Integer;
        contractors : Association to one Contractors;
}

entity Contractors {
    key contractor : Integer;
        name       : String;
}

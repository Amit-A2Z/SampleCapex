sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'SampleCapex/CapexReport/test/integration/FirstJourney',
		'SampleCapex/CapexReport/test/integration/pages/CapexList',
		'SampleCapex/CapexReport/test/integration/pages/CapexObjectPage'
    ],
    function(JourneyRunner, opaJourney, CapexList, CapexObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('SampleCapex/CapexReport') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCapexList: CapexList,
					onTheCapexObjectPage: CapexObjectPage
                }
            },
            opaJourney.run
        );
    }
);
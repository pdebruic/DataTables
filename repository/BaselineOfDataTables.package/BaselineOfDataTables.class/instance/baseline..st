baselines
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        baseline: 'Seaside3'
        with: [ 
          spec
            loads: #('JQuery' 'Javascript');
            repository: 'github://SeasideSt/Seaside:master/repository' ].
      spec
        project: 'MagritteConfig'
        with: [ 
          spec
            className: #'ConfigurationOfMagritte3';
            versionString: #'stable';
            repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main';
            loads: #('Core' 'Seaside') ].
      spec
        project: 'SortFunctions'
        with: [ 
          spec
            className: #'ConfigurationOfSortFunctions';
            versionString: #'stable';
            repository:
                'http://smalltalkhub.com/mc/emaringolo/SortFunctions/main/' ].
      spec
        package: 'DataTables-Core' with: [ spec requires: 'Seaside3' ];
        package: 'DataTables-Libraries'
          with: [ spec requires: 'DataTables-Core' ];
        package: 'DataTables-Magritte'
          with: [ 
              spec
                requires:
                  #('DataTables-Core' 'DataTables-Libraries' 'SortFunctions' 'MagritteConfig') ].
      spec
        group: 'default' with: #('CoreAndLibraries');
        group: 'Core' with: #('DataTables-Core');
        group: 'CoreAndLibraries' with: #('DataTables-Libraries');
        group: 'Magritte' with: #('CoreAndLibraries' 'DataTables-Magritte') ]
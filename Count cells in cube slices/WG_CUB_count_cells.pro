601,100
602,"WG_CUB_count_cells"
562,"NULL"
586,
585,
564,
565,"fkW@fva14fl9S<]tJ1?2CjBQo:S9JlDi9vK\P0a@yBO8qEr:vPfuwOSRW:a@t6i=DN6j_GFsmEr9sr\zxWa6VX9\336dojYDUq3f75ie6[OZC?IaLsN;uQKyATc[y8^yu5FDoW<dNR`x<z@>ThD3Q^[ecz>Y1nrlHA[EFsf94wYG=>_wKeZ?6EgFi_19bqX=aPXrZbJd"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,","
588,","
589," "
568,""""
570,
571,
569,0
592,0
599,1000
560,0
561,0
590,0
637,0
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,46

#****Begin: Generated Statements***
#****End: Generated Statements****


# create a new measures dimension and element
If( DimensionExists( 'Count cells' ) = 0 );
    DimensionCreate( 'Count cells' );
EndIf;
If( Dimix( 'Count cells', 'Count cells' ) = 0 );
    DimensionElementInsertDirect( 'Count cells', '', 'Count cells', 'N' );
EndIf;

# c loops over the application cubes
c = 1;
While( c <= Dimsiz( '}Cubes' ));
   vCube = Dimnm( '}Cubes', c );

   If( Subst( vCube, 1, 1 ) @<> '}' );
   If( Scan( '_Count cells', vCube ) = 0 );

      vCube_New = vCube | '_Count cells';
      AsciiOutput( Expand( 'Count cells - start of cube %vCube_New%.txt' ), vCube_New );

      If( CubeExists( vCube_New ) > 0 );
         CubeDestroy( vCube_New );
      EndIf;

      ExecuteProcess( 'WG_CUB_count_cells_Bedrock.Cube.Clone',
         'pSourceCube', vCube, 'pTargetCube', vCube_New,
         'pIncludeRules', 0, 'pIncludeData', 0,
         'pSourceView', '', 'pRuleValues', 0, 'pDebug', 0 );

      CellPutS( 'NO', '}CubeProperties', vCube, 'LOGGING' );

      ExecuteProcess( 'WG_CUB_count_cells_Bedrock.Cube.Data.Copy',
         'pCube', vCube, 'pViewSource', '', 'pViewTarget', '', 'pDimension', '',
         'pSourceElement', '', 'pTargetElement', '',
         'pSkipRules', 1, 'pZeroTarget', 0,
         'pZeroSource', 0, 'pDestroyTempObj', 1, 'pDebug', 0 );

   EndIf;
   EndIf;

   c = c + 1;
End;
573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,3

#****Begin: Generated Statements***
#****End: Generated Statements****
575,3

#****Begin: Generated Statements***
#****End: Generated Statements****
576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,0
900,
901,
902,
938,0
937,
936,
935,
934,
932,0
933,0
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,0
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""

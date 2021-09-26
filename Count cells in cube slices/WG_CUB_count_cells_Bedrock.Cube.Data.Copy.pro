601,100
602,"WG_CUB_count_cells_Bedrock.Cube.Data.Copy"
562,"VIEW"
586,"zzSYS 50 Dim Cube"
585,"zzSYS 50 Dim Cube"
564,
565,"aal;vrdiMe8nX<\1QF3\qT\8AbI[p8`s\rUtd@L_EYnvokMqZBy6KGT45XLbU0u9]I<w2sMQAk_r;H53l\0YWEU_L1`JJ;odHa4i_zz4KrPM^F3<pizWtMF2mx2Hd<<jfg3?z@6\ydg7J>bViLe8e7LeBwwA2GaWpj117mwWpQ8uXOR8THg6jUo>CppKCfd9:j7hmrhm"
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
588,"."
589,
568,""""
570,Temp
571,
569,0
592,0
599,1000
560,11
pCube
pViewSource
pViewTarget
pDimension
pSourceElement
pTargetElement
pSkipRules
pZeroTarget
pZeroSource
pDestroyTempObj
pDebug
561,11
2
2
2
2
2
2
1
1
1
1
1
590,11
pCube,""
pViewSource,""
pViewTarget,""
pDimension,""
pSourceElement,""
pTargetElement,""
pSkipRules,1
pZeroTarget,1
pZeroSource,0
pDestroyTempObj,1
pDebug,0
637,11
pCube,"Cube"
pViewSource,"Temporary view name for source"
pViewTarget,"Temporary view name for target"
pDimension,"Dimension to Copy Data"
pSourceElement,"Source Element"
pTargetElement,"Target Element"
pSkipRules,"Skip Rule Values? (1=Skip)"
pZeroTarget,"Zero out Target Element PRIOR to Copy? (Boolean 1=True)"
pZeroSource,"Zero out Source Element AFTER Copy? (Boolean 1=True)"
pDestroyTempObj,"Delete temporary view and Subset ( 0 = Retain View and Subsets 1 = Delete View and Subsets 2 = Delete View only )"
pDebug,"Debug Mode"
577,51
V1
V2
V3
V4
V5
V6
V7
V8
V9
V10
V11
V12
V13
V14
V15
V16
V17
V18
V19
V20
V21
V22
V23
V24
V25
V26
V27
V28
V29
V30
V31
V32
V33
V34
V35
V36
V37
V38
V39
V40
V41
V42
V43
V44
V45
V46
V47
V48
V49
V50
Value
578,51
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
1
579,51
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
580,51
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
581,51
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
582,51
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=33ColType=827
603,0
572,249

#****Begin: Generated Statements***
#****End: Generated Statements****

#####################################################################################
##~~Copyright bedrocktm1.org 2011 www.bedrocktm1.org/how-to-licence.php Ver 3.1.0~~##
#####################################################################################

# This TI is designed to copy all data in a given cube
# from one element to another, typically this would be within a
# version dimension but could equally well be used to copy data
# from one product to another or one week to another or on monthly basis.

# Note:
# - As this TI has a view as a data source it requires the implicit variables NValue, SValue and Value_is_String
# - To edit this TI in Architect a tmp cube with minimum 24 dims is needed as the preview data source or set the data
#   source to ASCII and manually edit the TI in notepad after saving to add back the required implicit view variables

### Constants ###

cProcess = 'WG_CUB_count_cells_Bedrock.Cube.Data.Copy';
cTimeStamp = TimSt( Now, '\Y\m\d\h\i\s' );
sRandomInt = NumberToString( INT( RAND( ) * 1000 ));
cDebugFile = GetProcessErrorFileDirectory | cProcess | '.' | cTimeStamp | '.' | sRandomInt ;
cDefaultView = 'Bedrock_' | sRandomInt ;
nExistingSourceFlag = 0;
nAttrCubeFlag = 0;

### Initialise Debug ###

### Set debug file name
sDebugFile = cDebugFile | 'Prolog.debug';

If( pDebug >= 1 );

  # Log start time
  AsciiOutput( sDebugFile, 'Process Started: ' | TimSt( Now, '\d-\m-\Y \h:\i:\s' ) );

  # Log parameters
  AsciiOutput( sDebugFile, 'Parameters: pCube          : ' | pCube );
  AsciiOutput( sDebugFile, '            pViewSource    : ' | pViewSource );
  AsciiOutput( sDebugFile, '            pViewTarget    : ' | pViewTarget );

  AsciiOutput( sDebugFile, '            pDimension     : ' | pDimension );
  AsciiOutput( sDebugFile, '            pSourceElement : ' | pSourceElement );
  AsciiOutput( sDebugFile, '            pTargetElement : ' | pTargetElement );
  AsciiOutput( sDebugFile, '            pSkipRules     : ' | NumberToString( pSkipRules ) );
  AsciiOutput( sDebugFile, '            pZeroTarget    : ' | NumberToString( pZeroTarget ) );
  AsciiOutput( sDebugFile, '            pZeroSource    : ' | NumberToString( pZeroSource ) );
  AsciiOutput( sDebugFile, '            Temp View Name : ' | cDefaultView );
EndIf;


### Validate Parameters ###
nErrors = 0;

## If a valid cube has not been specified then terminate process
If( 
CubeExists( pCube ) = 0 );
  nErrors = 1;
  sMessage = 'Invalid source cube specified: ' | pCube;
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  DataSourceType = 'NULL';
  ItemReject( sMessage );
EndIf;

## Validate the View parameter
If( 
TRIM(pViewSource) @<> '' & 
TRIM(pViewSource) @= TRIM(pViewTarget) );
  nErrors = 1;
  sMessage = 'Source and Target Views can not be the same: ' | pViewSource | ' ' | pViewTarget ;
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  DataSourceType = 'NULL';
  ItemReject( sMessage );
EndIf;

## Validate the View parameter
If( 
TRIM( pViewSource) @= '' );
  If( 
  pDebug >= 1 );
    sMessage = 'Using default source view: ' | cDefaultView | 'S';
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  cViewSource = cDefaultView | 'S' ;
Else ;
  If(
   pDebug >= 1 );
    sMessage = 'Using source view: ' | pViewSource;
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  cViewSource = pViewSource ;
  nExistingSourceFlag = 1;
EndIf;

## Validate the View parameter
If( 
TRIM( pViewTarget ) @= '' );
  If( 
  pDebug >= 1 );
    sMessage = 'Using default target view: ' | cDefaultView| 'T' ;
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  cViewTarget = cDefaultView | 'T' ;
Else ;
  If( pDebug >= 1 );
    sMessage = 'Using target view: ' | pViewTarget;
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  cViewTarget = pViewTarget ;
EndIf;

## Determine number of dims in source cube.
## check that specified dimension exists in cube.
nDimensionCount = 0;
sDimension = TabDim( pCube, nDimensionCount + 1 );
nDimensionIndex = 0;
While( sDimension @<> '' );
  nDimensionCount = nDimensionCount + 1;
  If( 
  sDimension @= pDimension );
    nDimensionIndex = nDimensionCount;
  EndIf;
  sDimension = TabDim( pCube, nDimensionCount + 1 );
End;

## If dimension count exceeds the current maximum then terminate process
If( 
nDimensionCount > 27 );
  nErrors = 1;
  sMessage = 'Cube has too many dimensions: ' | pCube | '. Max 27 dims catered for, TI must be altered to accommodate.';
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  DataSourceType = 'NULL';
  ItemReject( sMessage );
EndIf;

### Debug ###
If( pDebug >= 1 );
  AsciiOutput( sDebugFile, 'Dimension "' | pDimension | '" index: ' | NumberToString( nDimensionIndex ) );
  AsciiOutput( sDebugFile, 'Number of dimensions in ' | pCube | ' cube: ' | NumberToString( nDimensionCount ) );
  AsciiOutput( sDebugFile, 'Source element: ' | pSourceElement );
  AsciiOutput( sDebugFile, 'Target element: ' | pTargetElement );
EndIf;

### Check for Attribute cube
IF(
SUBST( pCube, 1, 19 ) @= '}ElementAttributes_' &
SUBST( pDimension, 1, 19 ) @<> '}ElementAttributes_' );
  ## We are copying an attribute cube. We transposing in the natural dimension. 
  ## We need to avoid copying alias elements.
  nAttrCubeFlag = 1;
ENDIF;

### Determine dimensions in source cube ###
sDim1 = TabDim( pCube, 1 );
sDim2 = TabDim( pCube, 2 );
sDim3 = TabDim( pCube, 3 );
sDim4 = TabDim( pCube, 4 );
sDim5 = TabDim( pCube, 5 );
sDim6 = TabDim( pCube, 6 );
sDim7 = TabDim( pCube, 7 );
sDim8 = TabDim( pCube, 8 );
sDim9 = TabDim( pCube, 9 );
sDim10 = TabDim( pCube, 10 );
sDim11 = TabDim( pCube, 11 );
sDim12 = TabDim( pCube, 12 );
sDim13 = TabDim( pCube, 13 );
sDim14 = TabDim( pCube, 14 );
sDim15 = TabDim( pCube, 15 );
sDim16 = TabDim( pCube, 16 );
sDim17 = TabDim( pCube, 17 );
sDim18 = TabDim( pCube, 18 );
sDim19 = TabDim( pCube, 19 );
sDim20 = TabDim( pCube, 20 );
sDim21 = TabDim( pCube, 21 );
sDim22 = TabDim( pCube, 22 );
sDim23 = TabDim( pCube, 23 );
sDim24 = TabDim( pCube, 24 );
sDim25 = TabDim( pCube, 25 );
sDim26 = TabDim( pCube, 26 );
sDim27 = TabDim( pCube, 27 );


If( pDebug <= 1 );

### Zero Out target version ###

  If( pZeroTarget = 1 );

    cTempViewTo = cViewTarget;
    cTempSubTo = cTempViewTo;

    If( 
    ViewExists( pCube, cTempViewTo ) = 1 );
      # It is highly unlikely that the view already exists as the view name contains
      # a random number. However it is included in case two separate calls generate
      # the same random number.
      ViewDestroy( pCube, cTempViewTo );
    EndIf;
    ViewCreate( pCube, cTempViewTo );

    ViewExtractSkipCalcsSet( pCube, cTempViewTo, 1 );
    ViewExtractSkipRuleValuesSet( pCube, cTempViewTo, 1 );
    ViewExtractSkipZeroesSet( pCube, cTempViewTo, 1 );

    ViewZeroOut( pCube, cTempViewTo );

  EndIf;

EndIf;

### Create Processing View for source version ###
cTempViewFrom = cViewSource;
cTempSubFrom = cTempViewFrom;

If( 
ViewExists( pCube, cTempViewFrom ) = 1 );
  ## Use the existing view as a data source.
ELSE;
  ViewDestroy( pCube, cTempViewFrom );
  ViewCreate( pCube, cTempViewFrom );
ENDIF;

# If skip rules not 0 or 1 then set to 1 (skip)
If( 
pSkipRules <> 0 & pSkipRules <> 1 );
  pSkipRules = 1;
EndIf;

ViewExtractSkipConsolidatedStringsSet( pCube, cTempViewFrom, 1 );
ViewExtractSkipCalcsSet( pCube, cTempViewFrom, 1 );
ViewExtractSkipRuleValuesSet( pCube, cTempViewFrom, pSkipRules );
ViewExtractSkipZeroesSet( pCube, cTempViewFrom, 1 );
### Assign Datasource ###

DataSourceType = 'VIEW';
DatasourceNameForServer = pCube;
DatasourceNameForClient = pCube;
DatasourceCubeView = cTempViewFrom;


### End Prolog ###
573,4

#****Begin: Generated Statements***
#****End: Generated Statements****

574,206

#****Begin: Generated Statements***
#****End: Generated Statements****


#####################################################################################
##~~Copyright bedrocktm1.org 2011 www.bedrocktm1.org/how-to-licence.php Ver 3.1.0~~##
#####################################################################################


### Check for error in prolog ###

If( nErrors > 0 );
  ProcessBreak;
EndIf;

### Write data from source version to target version ###

# Selects the correct CellPut formula depending upon the number of dimensions in the cube
# and whether the value is numeric or string ( max 27 dims catered for in this code )
# value type determined by element type of last dimension in cube
# could have used Value_is_String = 1 and NValue/SValue but this works just as well

If( pDebug <= 1 );
  If( nDimensionCount = 2 );
    If( CellIsUpdateable( pCube, v1, v2 ) = 1 );
      sElType = DType( sDim2, v2 );
      IF( sElType @= 'AS' );
        ATTRPUTS( v3, sDim1, v1, v2 );
      ElseIf( sElType @= 'AA' & nAttrCubeFlag = 1 );
        ITEMSKIP;
      ElseIf( sElType @= 'AA' & nAttrCubeFlag = 0 );
        ATTRPUTS( v3, sDim1, v1, v2 );
      ELSEIF( sElType @= 'AN' );
        ATTRPUTN( Numbr( v3), sDim1, v1, v2 );
      Else;
         CellPutN( 1, pCube | '_Count cells', v1, v2, 'Count cells' );
      ENDIF;
    ENDIF;
  
  ElseIf( nDimensionCount = 3 );
    If( CellIsUpdateable( pCube, v1, v2, v3 ) = 1 );
      sElType = DType( sDim3, v3 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 4 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4 ) = 1 );
      sElType = DType( sDim4, v4 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 5 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5 ) = 1 );
      sElType = DType( sDim5, v5 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 6 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6 ) = 1 );
      sElType = DType( sDim6, v6 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 7 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7 ) = 1 );
      sElType = DType( sDim7, v7 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 8 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8 ) = 1 );
      sElType = DType( sDim8, v8 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 9 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9 ) = 1 );
      sElType = DType( sDim9, v9 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 10 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10 ) = 1 );
      sElType = DType( sDim10, v10 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 11 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11 ) = 1 );
      sElType = DType( sDim11, v11 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 12 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12 ) = 1 );
      sElType = DType( sDim12, v12 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 13 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13 ) = 1 );
      sElType = DType( sDim13, v13 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 14 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14 ) = 1 );
      sElType = DType( sDim14, v14 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 15 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15 ) = 1 );
      sElType = DType( sDim15, v15 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 16 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16 ) = 1 );
      sElType = DType( sDim16, v16 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 17 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17 ) = 1 );
      sElType = DType( sDim17, v17 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 18 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18 ) = 1 );
      sElType = DType( sDim18, v18 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 19 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19 ) = 1 );
      sElType = DType( sDim19, v19 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 20 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20 ) = 1 );
      sElType = DType( sDim20, v20 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 21 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21 ) = 1 );
      sElType = DType( sDim21, v21 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 22 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22 ) = 1 );
      sElType = DType( sDim22, v22 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 23 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22,
    v23 ) = 1 );
      sElType = DType( sDim23, v23 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22,
         v23, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 24 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22,
    v23, v24 ) = 1 );
      sElType = DType( sDim24, v24 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22,
         v23, v24, 'Count cells' );
    EndIf;

   ElseIf( nDimensionCount = 25 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22,
    v23, v24, v25 ) = 1 );
      sElType = DType( sDim25, v25 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22,
         v23, v24, v25, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 26 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22,
    v23, v24, v25, v26 ) = 1 );
      sElType = DType( sDim26, v26 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22,
         v23, v24, v25, v26, 'Count cells' );
    EndIf;

  ElseIf( nDimensionCount = 27 );
    If( CellIsUpdateable( pCube, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22,
    v23, v24, v25, v26 ) = 1 );
      sElType = DType( sDim27, v27 );
      CellPutN( 1, pCube | '_Count cells', v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22,
         v23, v24, v25, v26, v27, 'Count cells' );
    EndIf;

  EndIf;

EndIf;


### End Data ###
575,104

#****Begin: Generated Statements***
#****End: Generated Statements****


#####################################################################################
##~~Copyright bedrocktm1.org 2011 www.bedrocktm1.org/how-to-licence.php Ver 3.1.0~~##
#####################################################################################


### Initialise Debug ###

If( pDebug >= 1 );

  # Set debug file name
  sDebugFile = cDebugFile | 'Epilog.debug';

EndIf;


IF( 
nErrors = 0 & pDebug <= 1 );

  ### Zero out source data ###

  If( pZeroSource = 1 );
    ViewZeroOut( pCube, cTempViewFrom );

    IF( pDebug >= 1 );
      sMsg = 'Zero out source data.';
      AsciiOutput( sDebugFile, sMsg );
    ENDIF;

  EndIf;

EndIf;

### Destroy temporary views and susbsets ###
IF( 
pDestroyTempObj > 0 );

  IF( pDebug >= 1 );
    sMsg = 'Destroy temporary objects: Mode: ' | NumberToString ( pDestroyTempObj );
    AsciiOutput( sDebugFile, sMsg );
  ENDIF;

  ## Destroy temporary source view.
  IF(
  nExistingSourceFlag = 0 );
    nRet = ExecuteProcess('WG_CUB_count_cells_Bedrock.Cube.ViewAndSubsets.Delete',
      'pCube', pCube,
      'pView', cTempViewFrom,
      'pSubset', cTempViewFrom,
      'pMode', pDestroyTempObj,
      'pDebug', pDebug);
  ENDIF;

  IF( pDebug >= 1 );
    sMsg = 'Temporary objects destroyed: Source view and subsets. Process End State: ' | NumberToString ( nRet ) ;
    AsciiOutput( sDebugFile, sMsg );
  ENDIF;

  IF( pZeroTarget = 1 );
  ## Destroy temporary target view.

    nRet = ExecuteProcess('WG_CUB_count_cells_Bedrock.Cube.ViewAndSubsets.Delete',
      'pCube', pCube,
      'pView', cTempViewTo,
      'pSubset', cTempSubTo ,
      'pMode', pDestroyTempObj,
      'pDebug', pDebug);

      IF( pDebug >= 1 );
        sMsg = 'Temporary objects destroyed: Target View. Process End State: ' | NumberToString ( nRet ) ;
        AsciiOutput( sDebugFile, sMsg );
      ENDIF;
  ENDIF;


ENDIF;

### Finalise Debug ###

If( pDebug >= 1 );

  # Log errors
  If( nErrors <> 0 );
    AsciiOutput( sDebugFile, 'Errors Occurred' );
  EndIf;

  # Log finish time
  AsciiOutput( sDebugFile, 'Process Finished: ' | TimSt( Now, '\d-\m-\Y \h:\i:\s' ) );

EndIf;


### If errors occurred terminate process with a major error status ###

If( nErrors <> 0 );
  ProcessQuit;
EndIf;


### End Epilog ###
576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,1
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
917,1
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

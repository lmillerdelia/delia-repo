// JavaScript Document

//Specify affected tags. Add or remove from list:
var tgs = new Array( 'p');

//Specify spectrum of different font sizes:
var szs = new Array( '11px','13px','15px' );
var lhs = new Array( '15px','18px','22px' );
var pt = new Array( '60px', '56px', '48px' );
var tpt = new Array( '54px','50px','46px' );
var tfs = new Array( '18px','20px','22px' );
var startSz = 2;

function ts( trgt,inc ) {
if (!document.getElementById) return
var d = document,cEl = null,sz = startSz,i,j,cTags;

sz += inc;
if ( sz < 0 ) sz = 0;
if ( sz > 2 ) sz = 2;
startSz = sz;

if ( !( cEl = d.getElementById( trgt ) ) ) cEl = d.getElementsByTagName( trgt )[ 0 ];

cEl.style.fontSize = szs[ sz ];
cEl.style.lineHeight = lhs[ sz ];

for ( i = 0 ; i < tgs.length ; i++ ) {
cTags = cEl.getElementsByTagName( tgs[ i ] );
for ( j = 0 ; j < cTags.length ; j++ ) {
	cTags[ j ].style.fontSize = szs[ sz ];
	cTags[ j ].style.lineHeight = lhs[ sz ];
}
}

var fontSizeTag = null;
fontSizeTag = document.getElementById("fontsizeContainer");
fontSizeTag.style.paddingTop = pt [ sz ];

var tagLine = null;
tagLine = document.getElementById("taglineContainer");
tagLine.style.paddingTop = tpt [ sz ];
tagLine.style.fontSize = tfs[ sz ];
} 
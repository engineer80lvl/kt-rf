*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  String
Library  Collections
Library  OperatingSystem
Library  FakerLibrary

*** Keywords ***

Grid Count Success
	Log					Grid Count Text Matches Number of Products Returned

Grid Count Failure
	Log					Grid Count Text DOES NOT Match The Number of Products Returned

Scroll To Footer
	#Need to come up with a better method - does it 8 times for the clothing page
	Execute Javascript				window.scrollTo(0,document.body.scrollHeight);
	Sleep						3
	Execute Javascript				window.scrollTo(0,document.body.scrollHeight);
	Sleep 						3
	Execute Javascript				window.scrollTo(0,document.body.scrollHeight);
	Sleep 						3
	Execute Javascript				window.scrollTo(0,document.body.scrollHeight);
	Sleep 						3
	Execute Javascript				window.scrollTo(0,document.body.scrollHeight);
	Sleep 						3
	Execute Javascript				window.scrollTo(0,document.body.scrollHeight);
	Sleep 						3
	Execute Javascript				window.scrollTo(0,document.body.scrollHeight);
	Sleep 						3
	Execute Javascript				window.scrollTo(0,document.body.scrollHeight);
	Sleep 						3


Pull Grid Counts
	Wait Until Element Is Visible		${grid count locator}
	${grid count text}=			        Get Text  ${grid count locator}
	${grid count text}=		        	Fetch From Left  ${grid count text}  ${SPACE}
	${grid count number}=  	       		Convert to Number  ${grid count text}
	${number of items in grid value}=	Get Value  ${number of items in grid}
	Set Global Variable		        	${grid count number}
	Set Global Variable	        		${number of items in grid value}

Log All Product Names and Prices
	${grid list product names}=    		Get Webelements  ${grid product name}
	${grid list product prices}=		Get Webelements  ${grid product price}
	@{full list}=				    	Create List
        FOR  ${element}  IN  @{grid list product names}
		${product name text}=			Get Text  ${element}
		Append To List				    ${full list}	${product name text}
	END
	Log				            		${full list}

	FOR  ${element}  IN  @{grid list product prices}
		${product price text}=			Get Text  ${element}
		Insert Into List		    	${full list}  ${i}  ${product price text}
		${i}=				        	Evaluate  ${i}+2
	END
	Log					            	${full list}
	${list length}=			    		Get Length  ${full list}
	${list length}=				    	Evaluate  ${grid count number}*2

Pull Random Product Name From Grid
	#Currently using the first item in the grid, expand to use a random item
    Choose random element from list and get text  ${grid product name}
  


#Old Code
#	${product name text}=			Get Text  ${grid product name}
#	${product review count}=		Get Text  ${grid product review count}
#	${product review count}=		Remove String  ${product review count}  (
#	${product review count}=		Remove String  ${product review count}  )
#	Set Global Variable			${product review count}
#	Set Global Variable			${product name text}
	
/*******************************************************************************
 * * * FileName: NOSCORM APIWrapper.js *
 ******************************************************************************/

var _Debug = false; // set this to false to turn debugging off
// and get rid of those annoying alert boxes.

// local variable definitions
var apiHandle = null;
var API = null;
var findAPITries = 0;
var parentWindow = null;
var interactionsCount = 0;
var isLMSInitialized = false;
var cmi5Plugin = null;
var counter_id = 0;
var exitAttempted = false;
var currentInteraction = { id: "", type: "", learner_response: "" };


/*******************************************************************************
 * * * Function: doInitialize() * All functions are not implemented in this
 * noscorm apiwrapper.
 ******************************************************************************/
function doInitialize() {

	if (findAPITries == 0) {  // can't call fetch more than once
		cmi5Plugin = new CourseCmi5Plugin();
		cmi5Plugin.initialize(function(result) { logCallbacks(result); isLMSInitialized = true; }, logCallbacks);
		findAPITries = 1;
	}

}

function doTerminate() {
	cmi5Plugin.exit(exitAttempted).catch(() => {
		cmi5Plugin.trackingError("Unable to exit properly: ");
	});

	exitAttempted = true;

}

function doGetValue(name) {

}



function doSetValue(name, value) {
	var verb = "experienced";
	var scormType = "";
	var statement = "";

	if (name.includes("cmi.score")) {
		scormType = "score";
	}
	if (name.includes("cmi.completion_status")) {
		scormType = "score";
	}
	if (name.includes("cmi.success_status")) {
		scormType = "score";
	}
	if (name.includes("cmi.interactions")) {
		scormType = "interactions";
	}

	if (name.includes("cmi.session.time")) {
		scormType = "time";
	}

	switch (scormType) {

		case "score":
			processScore(name, value);
			break;
		case "interactions":
			processInteractions(name, value);
			break;
		case "time":
			processTime(name, value);
			break;
		default:

	}

}


function processScore(name, value) {

	switch (name) {

		case "cmi.score.scaled":
			cmi5Plugin.setScaledScore(value);
			break;

		case "cmi.score.raw":
			cmi5Plugin.setRawScore(value);
			break;

		case "cmi.score.min":
			cmi5Plugin.setMinScore(value);
			break;

		case "cmi.score.max":
			cmi5Plugin.setMaxScore(value);
			break;

		case "cmi.completion_status":
			cmi5Plugin.setCompletionStatus(value);
			break;

		/* this is the last call made by the Jet Engine before termination */
		case "cmi.success_status":
			cmi5Plugin.setSuccessStatus(value);
			cmi5Plugin.evaluate().catch(() => {
				cmi5Plugin.trackingError("Unable to evaluate.");
			});
			break;
	}
}

function processInteractions(name, value) {

	var capture = /cmi.interactions.*(id|type|learner_response|result)/.exec(name);
	if (capture && capture.length > 1) {

		name = capture[1];


		switch (name) {

			case "id":
				currentInteraction.id = value;
				break;
			case "type":
				currentInteraction.type = value;
				break;
			case "learner_response":
				if (currentInteraction.type == "long-fill-in") {
					var statement = "a long answer prompt and responded with  '" + value + "'";
					currentInteraction = { "id": "", "type": "", "learner_response": "" };
					doSendScormStatement(statement);
				}
				else {
					currentInteraction.learner_response = value;
				}
				break;
			case "result":
				var statement = value + " with answer '" + currentInteraction.learner_response + "'";
				currentInteraction = { "id": "", "type": "", "learner_response": "" };
				doSendScormStatement(statement);
				break;
		}
	}
}

function processTime(name, value) {
	var statement = value.replace("PT", " ");
	statement = statement.replace("H", "hours: ");
	statement = statement.replace("M", "minutes: ");
	statement = statement.replace("S", "seconds: ");
	doSendScormStatement(statement);
}

function doSendScormStatement(statement) {
	cmi5Plugin.experienced(statement).catch(() => {
		cmi5Plugin.trackingError("Unable to send statement.");
	});
}

function doSendXAPIStatement(verb, object) {

	var adlVerb = getVerb(verb, object);

	if (!isEmpty(adlVerb) && adlVerb.hasOwnProperty("id")) {
		//adlVerb is valid; otherwise default to experienced
	}
	else {
		adlVerb = {
			"id": "http://adlnet.gov/expapi/verbs/experienced",
			"display": {
				"de-DE": "erlebte",
				"en-US": "experienced",
				"fr-FR": "a éprouvé",
				"es-ES": "experimentó"
			}
		}
	}
	
	if(this.cmi5Plugin && this.cmi5Plugin.cmi5){

	let stmt = this.cmi5Plugin.cmi5.prepareStatement(adlVerb.id);
	stmt.verb.display = adlVerb.display;
	stmt.object = {
		objectType: "Activity",
		id: this.cmi5Plugin.cmi5.getActivityId() + "id_" + String(++counter_id),  //replace this counter id with genuine id
		definition: {
			name: { "en-US": object },
		}
	};


	return cmi5Plugin.cmi5.sendStatement(stmt);
	
	}
	
	return;


}
		
		


function doCommit() {
	logCallbacks("doCommit called");
}

/*******************************************************************************
 * * * Function LMSIsInitialized() * Inputs: none * Return: true if the LMS API
 * is currently initialized, otherwise false * * Description: * Determines if
 * the LMS API is currently initialized or not. *
 ******************************************************************************/
function LMSIsInitialized() {
	return isLMSInitialized;
}

/*******************************************************************************
 * * * Function getAPIHandle() * Inputs: None * Return: value contained by
 * APIHandle * * Description: * Returns the handle to API object if it was
 * previously set, * otherwise it returns null *
 ******************************************************************************/
function getAPIHandle() {
	return null;
}

/*******************************************************************************
 * * * Function findAPI(win) * Inputs: win - a Window Object * Return: If an API
 * object is found, it's returned, otherwise null is returned * * Description: *
 * This function looks for an object named API in parent and opener windows *
 ******************************************************************************/
function findAPI(win) {
	return null;
}

/*
 * GetAPI -Searches all parent and opener windows relative to the current window
 * for the SCORM 2004 API Adapter. Returns a reference to the API Adapter if
 * found or null otherwise.
 */
function getAPI() {
	return null;

}

function getVerb(name, value) {


	switch (name) {

		case "cmi.core.lesson_status":
		case "cmi.completion_status":
			switch (value) {
				case "completed":
				case "passed":
					return ADL.verbs.completed;
				default:
					return ADL.verbs.attempted;
			}
		case "cmi.session_time":
		case "cmi.core.session_time":
			return ADL.verbs.experienced;
		case "cmi.score.scaled":
		case "cmi.core.score.raw":
			return ADL.verbs.scored;

		default:

			return ADL.verbs[name];

	}

}

function logCallbacks(value) {

	if (console) {
		console.log("APIWrapper reports: " + value);
	}
}

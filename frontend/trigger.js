import  {API_PATH, getDataFromForm,
         getListFromRequest, populateTableFrom} from "./fetchQueries.js"

insertClassification.querySelector('form').addEventListener('submit', async (e) => {
    e.preventDefault();
    //Tables used to view before and after an insert
    const beforeClassificationTable = insertClassification.querySelector("#classification-before");
    const afterClassificationTable = insertClassification.querySelector("#classification-after");
    const beforeMatchTable = insertClassification.querySelector("#match-before");
    const afterMatchTable = insertClassification.querySelector("#match-after");

    beforeClassificationTable.innerHTML="";
    afterClassificationTable.innerHTML = "";
    beforeMatchTable.innerHTML="";
    afterMatchTable.innerHTML = "";
  
    
    let beforeClassificationData = await getListFromRequest('/classifications');
    let beforeMatchData = await getListFromRequest('/matches');
    populateTableFrom(beforeClassificationData,beforeClassificationTable);
    populateTableFrom(beforeMatchData,beforeMatchTable);

    let insertData = getDataFromForm(insertClassification.querySelector('form'));
    await fetch(`${API_PATH}/addClassification`,{
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(insertData),
    });

    let afterClassificationData = await getListFromRequest('/classifications');
    let afterMatchData = await getListFromRequest('/matches');
    populateTableFrom(afterClassificationData,afterClassificationTable);
    populateTableFrom(afterMatchData,afterMatchTable);

});
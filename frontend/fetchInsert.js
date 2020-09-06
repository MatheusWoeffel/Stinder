const API_PATH = 'http://localhost:3232';

const getSanitizedInputFrom = (inputElement) => {
    //TODO: Sanitize SQL statements
    //Question: It's better to sanitize at both ends or just at backend?
    return inputElement.value.trim();
}

const getDataFromForm = (form) => {
    if (form && form.nodeType === Node.ELEMENT_NODE && form.tagName === 'FORM') {
        return Object.fromEntries(new FormData(form));
    }
    return {};
} 

const getListFromRequest  = async (path) =>{
    let query_path = API_PATH + path;

    try{
        let response = await fetch(query_path);
        let responseJSON = await response.json();
        return responseJSON;
    }
    catch(err){
        console.log("Error:", err)
        return [];
    }     
}

function createTableRow(values, isHeader = false) {
    console.log(values);
    if (values && values.length) {
        const row = document.createElement('tr');
        const columnTag = isHeader ? 'th' : 'td';
        
        values.forEach(value => {
            console.log(value);
            const column = document.createElement(columnTag);
            column.textContent = value;
            row.append(column);
        });
        return row;
    }
    return undefined;
}

const populateTableFrom = (responseList, tableElement) =>{
    if (responseList && responseList.length && tableElement && tableElement.nodeType === Node.ELEMENT_NODE) {
        const headerNames = Object.keys(responseList[0]);
        tableElement.append(createTableRow(headerNames, true));

        responseList.forEach(row => {
            const values = Object.values(row);
            tableElement.append(createTableRow(values));
        });
    }
} 

insertClassification.querySelector('form').addEventListener('submit', async (e) => {
    e.preventDefault;
    //Tables used to view before and after an insert
    const beforeClassificationTable = insertClassification.querySelector("#classification-before");
    const afterClassificationTable = insertClassification.querySelector("#classification-after");
    const beforeMatchTable = insertClassification.querySelector("#match-before");
    const afterMatchTable = insertClassification.querySelector("#match-after");
    
    let beforeClassificationData = await getListFromRequest('/getClassifications');
    let beforeMatchData = await getListFromRequest('/getMatches');
    populateTableFrom(beforeClassificationData,beforeClassificationTable);
    populateTableFrom(beforeMatchData,beforeMatchTable);

    let insertData = getDataFromForm(insertClassification.querySelector('form'));
    fetch(`${API_PATH}/addClassification`,{
        method: "POST",
        body: JSON.stringify(insertData),
    });

    let afterClassificationData = await getListFromRequest('/classifications');
    let afterMatchData = await getListFromRequest('/matches');
    populateTableFrom(afterClassificationData,beforeClassificationTable);
    populateTableFrom(afterMatchData,afterMatchTable);

});
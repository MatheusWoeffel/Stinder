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

export {API_PATH,getSanitizedInputFrom,getDataFromForm,getListFromRequest, createTableRow, populateTableFrom};
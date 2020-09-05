const API_PATH = 'http://localhost:3232';
let buttonQuery1 = document.querySelector("#query1 button");
let inputUserQuery1 = document.querySelector("#userInput1");
let query1Table = document.querySelector(".query1Result");

let buttonQuery2 = document.querySelector("#query2 button");
let inputUserQuery2 = document.querySelector("#userInput2");
let query2Table = document.querySelector(".query2Result");

let buttonQuery3 = document.querySelector("#query3 button");
let firstInputUserQuery3 = document.querySelector("#firstUserInput3");
let secondInputUserQuery3 = document.querySelector("#secondUserInput3");
let query3Table = document.querySelector(".query3Result");

let buttonQuery4 = document.querySelector("#query4 button");
let firstInputUserQuery4 = document.querySelector("#firstUserInput4");
let secondInputUserQuery4 = document.querySelector("#secondUserInput4");
let query4Table = document.querySelector(".query4Result");

let buttonQuery5 = document.querySelector("#query5 button");
let query5Table = document.querySelector(".query5Result");

let buttonQuery6 = document.querySelector("#query6 button");
let firstInputUserQuery6 = document.querySelector("#firstUserInput6");
let secondInputUserQuery6 = document.querySelector("#secondUserInput6");
let query6Table = document.querySelector(".query6Result");

let getSanitizedInputFrom = (inputElement) => {
    //TODO: Sanitize SQL statements
    //Question: It's better to sanitize at both ends or just at backend?
    return inputElement.value.trim();
}

let getListFromRequest  = async (path) =>{
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

let populateTableFrom = (responseList, tableElement) =>{
    responseList.forEach(element => {
        let newRow = document.createElement("tr");
        newRow.textContent = JSON.stringify(element);
        tableElement.appendChild(newRow);
    });
} 

buttonQuery1.addEventListener("click", async ()=>{
    query1Table.innerHTML = "";
    let responseList = await getListFromRequest(`/mostPlayedGender/${getSanitizedInputFrom(inputUserQuery1)}`);
    populateTableFrom(responseList,query1Table);
});

buttonQuery2.addEventListener("click", async ()=>{
    query2Table.innerHTML = "";
    let responseList = await getListFromRequest(`/suggestedUsersByGender/${getSanitizedInputFrom(inputUserQuery2)}`);
    populateTableFrom(responseList,query2Table);
});

buttonQuery3.addEventListener("click", async ()=>{
    query3Table.innerHTML = "";
    let responseList = await getListFromRequest(`/sharedAchievementsByUsers/${getSanitizedInputFrom(firstInputUserQuery3)}&${getSanitizedInputFrom(secondInputUserQuery3)}`);
    populateTableFrom(responseList,query3Table);
});

buttonQuery4.addEventListener("click", async ()=>{
    query4Table.innerHTML = "";
    let responseList = await getListFromRequest(`/getMessagesOfUserBySubstring/${getSanitizedInputFrom(firstInputUserQuery4)}&${getSanitizedInputFrom(secondInputUserQuery4)}`);
    populateTableFrom(responseList,query4Table);
});

buttonQuery5.addEventListener("click", async ()=>{
    query5Table.innerHTML = "";
    let responseList = await getListFromRequest(`/getTopUsers/`);
    populateTableFrom(responseList,query5Table);
});

buttonQuery6.addEventListener("click", async ()=>{
    query6Table.innerHTML = "";
    let responseList = await getListFromRequest(`/getAchievementCompletion/${getSanitizedInputFrom(firstInputUserQuery6)}&${getSanitizedInputFrom(secondInputUserQuery6)}`);
    populateTableFrom(responseList,query6Table);
});


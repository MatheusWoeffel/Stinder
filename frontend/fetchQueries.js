const API_PATH = 'http://localhost:3232';
let buttonQuery1 = document.querySelector("#query1 button");
let inputUserQuery1 = document.querySelector("#userInput1");
let query1Table = document.querySelector(".query1Result");

let buttonQuery2 = document.querySelector("#query2 button");
let inputUserQuery2 = document.querySelector("#userInput2");
let query2Table = document.querySelector(".query2Result");

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
    let responseList = await getListFromRequest(`/mostPlayedGender/${inputUserQuery1.value}`);
    populateTableFrom(responseList,query1Table);
});

buttonQuery2.addEventListener("click", async ()=>{
    query2Table.innerHTML = "";
    let responseList = await getListFromRequest(`/suggestedUsersByGender/${inputUserQuery2.value}`);
    populateTableFrom(responseList,query2Table);
});
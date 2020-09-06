import  {getSanitizedInputFrom,getDataFromForm,
    getListFromRequest, populateTableFrom} from "./fetchQueries.js"

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

const activityFeed = document.querySelector('#activityFeed');
 
const userMessages = document.querySelector('#userMessages');

const noCommonGenres = document.querySelector('#noCommonGenresUsers');

const userGames = document.querySelector('#userGames');



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

activityFeed.querySelector('form').addEventListener('submit', async (e) => {
    e.preventDefault();
    const table = activityFeed.querySelector('table');
    table.innerHTML = '';

    const data = getDataFromForm(activityFeed.querySelector('form'));
    const response = await getListFromRequest(`/userActivityFeed/${data.userid}`);
    populateTableFrom(response, table);
});

userMessages.querySelector('form').addEventListener('submit', async (e) => {
    e.preventDefault();
    const table = userMessages.querySelector('table');
    table.innerHTML = '';

    const data = getDataFromForm(userMessages.querySelector('form'));
    const response = await getListFromRequest(`/userMessages/${data.userid}`);
    populateTableFrom(response, table);
});

noCommonGenres.querySelector('form').addEventListener('submit', async (e) => {
    e.preventDefault();
    const table = noCommonGenres.querySelector('table');
    table.innerHTML = '';

    const data = getDataFromForm(noCommonGenres.querySelector('form'));
    const response = await getListFromRequest(`/noCommonGenresUsers/${data.userid}`);
    populateTableFrom(response, table);
});

userGames.querySelector('form').addEventListener('submit', async (e) => {
    e.preventDefault();
    const table = userGames.querySelector('table');
    table.innerHTML = '';

    const data = getDataFromForm(userGames.querySelector('form'));
    const response = await getListFromRequest(`/userGames/${data.userid}`);
    populateTableFrom(response, table);
});

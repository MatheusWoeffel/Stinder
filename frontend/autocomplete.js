document.addEventListener('DOMContentLoaded', async () => {
  const users = await getListFromRequest('/usersBasicDetails');


  const inputs = document.querySelectorAll('input.autocomplete');

  inputs.forEach(input => {
    const listComplete = document.createElement('ul');
    listComplete.setAttribute('class', 'autocomplete-list hidden');
    listComplete.append(...users.map(user => {
      const option = document.createElement('li');
      option.textContent = user.name;

      option.addEventListener('click', event => {
        input.value = option.textContent;
      });

      return option; 
    }));
    input.after(listComplete);

    input.addEventListener('keyup', event => {
      const value = input.value.toLowerCase();
      const list = input.parentElement.querySelector('.autocomplete-list');

      list.querySelectorAll('li').forEach(elem => {
        const optionText = elem.textContent.toLowerCase()
        if (!optionText.startsWith(value)) {
          elem.classList.add('option-hidden');
        } else {
          elem.classList.remove('option-hidden');
        }
      });
    });

    input.addEventListener('focus', event => {
      const list = input.parentElement.querySelector('.autocomplete-list');
      list.classList.remove('hidden');
    });

    input.addEventListener('blur', event => {
      const list = input.parentElement.querySelector('.autocomplete-list');
      window.setTimeout(() => list.classList.add('hidden'), 100);
    });
  });
});
class Product {
    constructor(id, name, price, text, pic) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.text=text;
        this.pic = pic;
        this.catalogEl=document.querySelector('.catalog');
    }

    renderProduct() {
        let card=document.createElement('div');
        card.classList.add('card');

        let card_inset=document.createElement('div');
        card_inset.classList.add('card-inset');

        card_inset.innerHTML=`
            <div class="card-pic" style="background-image: url(/images/catalog/${this.pic});"></div>
            <div class="card-name">${this.name}</div>
            <div class="card-price">${this.price} руб.</div>
            <div class="add-to-basket" data-id="${this.id}">добавить в корзину</div>
        `;
        card.appendChild(card_inset);
        this.catalogEl.appendChild(card);
    }
}

let products=[];

class Catalog {
    constructor() {
        this.el = document.querySelector('.catalog');
        this.paginationEl=document.querySelector('.pagination');
    }

    renderCatalog(numPage=1) {
        this.el.innerHTML='';
        this.paginationEl.innerHTML='';

        let xhr = new XMLHttpRequest;
        xhr.open('GET', `/handlers/catalogHandler.php?numPage=${numPage}`);
        xhr.send();

        xhr.addEventListener('load', () => {
            let data = JSON.parse(xhr.responseText);
            data.products.forEach((value, index) => {
                products[index] = new Product(value.id, value.name, value.price, value.text, value.pic);
                products[index].renderProduct();
            });

            for(let i=1; i<=data.pagination.countPages; i++) {
                let page=document.createElement('div');
                page.classList.add('page');

                let page_inset=document.createElement('div');
                page_inset.classList.add('page_inset');

                page_inset.innerText=i;

                if(numPage==page_inset.innerText) {
                    page_inset.classList.add('page_inset_current');
                } else {
                    page_inset.classList.remove('page_inset_current');
                }

                page.appendChild(page_inset);

                this.paginationEl.appendChild(page);

                let that=this;
                page_inset.addEventListener('click', function() {
                    let num=this.innerText;
                    that.renderCatalog(num);
                });
            }
        });
    }
}

let catalog = new Catalog();
catalog.renderCatalog();



let choiceSectionEls=document.getElementsByClassName('choice_section');

for (let i=0; i<choiceSectionEls.length; i++) {
    let choiceNameEl=choiceSectionEls[i].querySelector('.choice_section_name');
    let choiceNameArrowEl=choiceNameEl.querySelector('.choice_section_name_arrow');
    let choiceListEl=choiceSectionEls[i].querySelector('.choice_section_list');

    choiceNameEl.addEventListener('click', ()=> {
        choiceNameArrowEl.classList.toggle('arrow-up');
        choiceListEl.classList.toggle('choice_appearance');
    });
}


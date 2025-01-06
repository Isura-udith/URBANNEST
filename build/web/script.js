
document.addEventListener('DOMContentLoaded', function() {
    // Featured Properties
    const properties = [
        {
            title: "Palace Hotel Spain meet 609",
            location: "Barcelona, Spain",
            price: "10,500",
            imageUrl: "https://i.ibb.co/bJWYDfM/1.jpg",
            beds: 4,
            baths: 3,
            sqft: 2500,
        },
        {
            title: "Main Steiner Night Owl Desert",
            location: "Dubai, UAE",
            price: "13,599",
            imageUrl: "https://i.ibb.co/cCss2pq/2.jpg",
            beds: 5,
            baths: 4,
            sqft: 3200,
        },
        {
            title: "Skyline Designer H374 Heads",
            location: "New York, USA",
            price: "12,999",
            imageUrl: "https://i.ibb.co/kGDPmTD/3.jpg",
            beds: 3,
            baths: 2,
            sqft: 1800,
        },
        {
            title: "Coastalista Residence PRO",
            location: "Miami, USA",
            price: "15,500",
            imageUrl: "https://i.ibb.co/XCWnMtj/4.jpg",
            beds: 4,
            baths: 3,
            sqft: 2800,
        },
        {
            title: "Alberto Residence Max Love",
            location: "Los Angeles, USA",
            price: "22,500",
            imageUrl: "https://i.ibb.co/8P2Y0C4/5.jpg",
            beds: 6,
            baths: 5,
            sqft: 4200,
        },
        {
            title: "Ancient Home Iceland 50",
            location: "Reykjavik, Iceland",
            price: "9,999",
            imageUrl: "https://i.ibb.co/TLmCRCX/6.jpg",
            beds: 3,
            baths: 2,
            sqft: 1600,
        },
    ];

    const propertyGrid = document.getElementById('property-grid');
    properties.forEach(property => {
        const propertyCard = document.createElement('div');
        propertyCard.className = 'bg-white rounded-lg overflow-hidden shadow-md';
        propertyCard.innerHTML = `
            <img src="${property.imageUrl}" alt="${property.title}" class="w-full h-48 object-cover">
            <div class="p-4">
                <h3 class="font-semibold text-lg">${property.title}</h3>
                <div class="flex items-center gap-1 text-gray-500 text-sm mt-1">
                    <i class="lucide-map-pin"></i>
                    <span>${property.location}</span>
                </div>
                <div class="flex justify-between items-center mt-2 text-sm text-gray-600">
                    <span>${property.beds} beds</span>
                    <span>${property.baths} baths</span>
                    <span>${property.sqft} sqft</span>
                </div>
                <div class="mt-3 font-bold">$${property.price}</div>
            </div>
        `;
        propertyGrid.appendChild(propertyCard);
    });

    // Pagination dots
    const paginationContainer = document.querySelector('#featured-properties .flex.justify-center');
    for (let i = 0; i < 7; i++) {
        const dot = document.createElement('div');
        dot.className = `h-2 w-2 rounded-full ${i === 0 ? 'bg-black' : 'bg-gray-200'}`;
        paginationContainer.appendChild(dot);
    }

    // Articles
    const articles = [
        {
            title: "Top 10 best properties in Italy",
            image: "https://i.ibb.co/g9bvJSt/9.jpg",
            readTime: "5 min read",
        },
        {
            title: "Best real estate market in 2023",
            image: "https://i.ibb.co/Yd3MFnL/8.jpg",
            readTime: "4 min read",
        },
        {
            title: "Top 100 cheapest properties",
            image: "https://i.ibb.co/0Jxfzdg/7.jpg",
            readTime: "6 min read",
        },
    ];

    const articlesGrid = document.getElementById('articles-grid');
    articles.forEach(article => {
        const articleCard = document.createElement('div');
        articleCard.className = 'space-y-3';
        articleCard.innerHTML = `
            <div class="relative h-48 rounded-lg overflow-hidden">
                <img src="${article.image}" alt="${article.title}" class="object-cover w-full h-full">
            </div>
            <h3 class="font-semibold">${article.title}</h3>
            <div class="flex justify-between items-center">
                <span class="text-sm text-gray-500">${article.readTime}</span>
                <a href="#" class="text-sm font-medium hover:underline">Read More</a>
            </div>
        `;
        articlesGrid.appendChild(articleCard);
    });

    // Set current year in footer
    document.getElementById('current-year').textContent = new Date().getFullYear();
});



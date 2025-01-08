<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product List with Filter</title>
        <!-- Include Tailwind CSS -->
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="font-sans bg-gray-500">
        <div class="flex">
            <!-- Filter Bar -->
            <div class="fixed top-5 left-5 w-64 p-5 bg-gray-100 border-r border-gray-300 z-10 shadow-lg rounded-md">
                <h2 class="text-lg font-semibold mb-4">Filters</h2>

                <!-- Search Filter (Text input) -->
                <h3 class="font-semibold mb-2">Search:</h3>
                <input type="text" id="search" placeholder="Search products" class="w-full p-2 mb-4 border border-gray-300 rounded">

                <!-- Sort by Price Filter (Radio buttons) -->
                <h3 class="font-semibold mb-2">Sort by Price:</h3>
                <div class="mb-4">
                    <label class="block">
                        <input type="radio" name="sort-price" value="none" class="sort-price-filter mr-2" checked /> None
                    </label>
                    <label class="block">
                        <input type="radio" name="sort-price" value="asc" class="sort-price-filter mr-2" /> Low to High
                    </label>
                    <label class="block">
                        <input type="radio" name="sort-price" value="desc" class="sort-price-filter mr-2" /> High to Low
                    </label>
                </div>

                <!-- Category Filter (Checkboxes) -->
                <h3 class="font-semibold mb-2">Category:</h3>
                <div class="mb-4">
                    <label class="block">
                        <input type="checkbox" value="buildings" class="category-filter mr-2" /> Buildings
                    </label>
                    <label class="block">
                        <input type="checkbox" value="fixtures" class="category-filter mr-2" /> Fixtures
                    </label>
                    <label class="block">
                        <input type="checkbox" value="roads" class="category-filter mr-2" /> Roads
                    </label>
                    <label class="block">
                        <input type="checkbox" value="structures" class="category-filter mr-2" /> Structures
                    </label>
                    <label class="block">
                        <input type="checkbox" value="utility-systems" class="category-filter mr-2" /> Utility Systems
                    </label>
                </div>

                <!-- Price Range Filter (Radio buttons) -->
                <h3 class="font-semibold mb-2">Price Range:</h3>
                <div class="mb-4">
                    <label class="block">
                        <input type="radio" name="price-range" value="all" class="price-range-filter mr-2" checked /> All
                    </label>
                    <label class="block">
                        <input type="radio" name="price-range" value="0-50" class="price-range-filter mr-2" /> $0 - $50
                    </label>
                    <label class="block">
                        <input type="radio" name="price-range" value="51-100" class="price-range-filter mr-2" /> $51 - $100
                    </label>
                    <label class="block">
                        <input type="radio" name="price-range" value="101-200" class="price-range-filter mr-2" /> $101 - $200
                    </label>
                    <label class="block">
                        <input type="radio" name="price-range" value="201" class="price-range-filter mr-2" /> $201 and above
                    </label>
                </div>
            </div>

            <!-- Main Container for Products -->
            <div class="ml-72 p-5 flex-grow">
                <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
                    <!-- Product 1 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="buildings" data-price="500">
                        <img src="https://cdn.pixabay.com/photo/2019/01/12/17/01/architecture-3928896_1280.jpg" alt="Building" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Modern Building</h3>
                        <p class="text-green-500 font-bold mb-2">$500</p>
                        <p class="text-sm text-gray-600 mb-3">State-of-the-art commercial building with high energy efficiency.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 2 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="fixtures" data-price="20">
                        <img src="https://cdn.pixabay.com/photo/2017/08/07/16/37/wire-2605512_1280.jpg" alt="Fixture" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Lighting Fixture</h3>
                        <p class="text-green-500 font-bold mb-2">$20</p>
                        <p class="text-sm text-gray-600 mb-3">Energy-efficient lighting fixture for modern homes.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 3 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="roads" data-price="150">
                        <img src="https://cdn.pixabay.com/photo/2020/05/25/05/40/road-5217022_960_720.jpg" alt="Road" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Asphalt Road</h3>
                        <p class="text-green-500 font-bold mb-2">$150</p>
                        <p class="text-sm text-gray-600 mb-3">High-quality asphalt for road construction and repairs.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 4 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="structures" data-price="1200">
                        <img src="https://cdn.pixabay.com/photo/2016/02/29/20/17/stairs-1229149_1280.jpg" alt="Structure" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Steel Structure</h3>
                        <p class="text-green-500 font-bold mb-2">$1200</p>
                        <p class="text-sm text-gray-600 mb-3">Durable steel structure for industrial buildings and warehouses.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 5 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="utility-systems" data-price="40">
                        <img src="https://cdn.pixabay.com/photo/2017/05/20/06/34/water-supply-2328260_1280.jpg" alt="Utility System" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Water Supply System</h3>
                        <p class="text-green-500 font-bold mb-2">$40</p>
                        <p class="text-sm text-gray-600 mb-3">Efficient water supply system for residential and commercial use.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 6 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="buildings" data-price="200">
                        <img src="https://cdn.pixabay.com/photo/2023/12/30/07/31/living-room-8477525_1280.jpg" alt="Building" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Luxury Apartment</h3>
                        <p class="text-green-500 font-bold mb-2">$200</p>
                        <p class="text-sm text-gray-600 mb-3">Spacious apartment with premium amenities in the city center.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 7 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="fixtures" data-price="60">
                        <img src="https://cdn.pixabay.com/photo/2015/09/05/19/59/chandelier-924906_1280.jpg" alt="Fixture" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Chandelier</h3>
                        <p class="text-green-500 font-bold mb-2">$60</p>
                        <p class="text-sm text-gray-600 mb-3">Elegant chandelier for luxury homes.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 8 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="roads" data-price="300">
                        <img src="https://cdn.pixabay.com/photo/2023/03/17/16/42/bridge-7859045_1280.jpg" alt="Road" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Highway Construction</h3>
                        <p class="text-green-500 font-bold mb-2">$300</p>
                        <p class="text-sm text-gray-600 mb-3">Asphalt and concrete road construction for high-speed highways.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 9 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="structures" data-price="1500">
                        <img src="https://cdn.pixabay.com/photo/2017/06/25/00/27/iron-2439297_1280.jpg" alt="Structure" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Reinforced Concrete Structure</h3>
                        <p class="text-green-500 font-bold mb-2">$1500</p>
                        <p class="text-sm text-gray-600 mb-3">Reinforced concrete used for building multi-story buildings.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 10 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="utility-systems" data-price="80">
                        <img src="https://cdn.pixabay.com/photo/2022/12/04/14/07/gas-7634559_1280.jpg" alt="Utility System" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Gas Supply System</h3>
                        <p class="text-green-500 font-bold mb-2">$80</p>
                        <p class="text-sm text-gray-600 mb-3">Reliable gas supply system for residential and commercial use.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 11 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="buildings" data-price="1000">
                        <img src="https://cdn.pixabay.com/photo/2018/02/08/10/22/desk-3139127_1280.jpg" alt="Building" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Corporate Office</h3>
                        <p class="text-green-500 font-bold mb-2">$1000</p>
                        <p class="text-sm text-gray-600 mb-3">Modern office building for corporate headquarters.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 12 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="fixtures" data-price="120">
                        <img src="https://cdn.pixabay.com/photo/2014/08/31/13/00/fan-housing-432100_1280.jpg" alt="Fixture" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Ceiling Fan</h3>
                        <p class="text-green-500 font-bold mb-2">$120</p>
                        <p class="text-sm text-gray-600 mb-3">Energy-efficient ceiling fan for residential and commercial spaces.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 13 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="roads" data-price="350">
                        <img src="https://cdn.pixabay.com/photo/2018/03/21/23/26/brick-3248755_960_720.jpg" alt="Road" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Paving Stones</h3>
                        <p class="text-green-500 font-bold mb-2">$350</p>
                        <p class="text-sm text-gray-600 mb-3">High-quality paving stones for road construction.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 14 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="structures" data-price="2000">
                        <img src="https://cdn.pixabay.com/photo/2017/05/05/15/06/architecture-2287327_1280.jpg" alt="Structure" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Bridge Construction</h3>
                        <p class="text-green-500 font-bold mb-2">$2000</p>
                        <p class="text-sm text-gray-600 mb-3">Construction of steel and concrete bridges for highways.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 15 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="utility-systems" data-price="60">
                        <img src="https://cdn.pixabay.com/photo/2014/04/02/14/18/gulli-306587_960_720.jpg" alt="Utility System" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Sewage System</h3>
                        <p class="text-green-500 font-bold mb-2">$60</p>
                        <p class="text-sm text-gray-600 mb-3">Sewage treatment and disposal systems for communities.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 16 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="buildings" data-price="1500">
                        <img src="https://cdn.pixabay.com/photo/2016/11/29/03/53/house-1867187_1280.jpg" alt="Building" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Residential Complex</h3>
                        <p class="text-green-500 font-bold mb-2">$1500</p>
                        <p class="text-sm text-gray-600 mb-3">Modern residential complex with luxury amenities.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 17 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="fixtures" data-price="80">
                        <img src="https://cdn.pixabay.com/photo/2017/08/22/06/02/wall-shelf-2667890_1280.jpg" alt="Fixture" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Wall Mounted Shelf</h3>
                        <p class="text-green-500 font-bold mb-2">$80</p>
                        <p class="text-sm text-gray-600 mb-3">Stylish and space-saving wall-mounted shelf for living rooms and offices.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 18 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="roads" data-price="100">
                        <img src="https://cdn.pixabay.com/photo/2016/09/13/13/35/stairs-1667235_960_720.jpg" alt="Road" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Concrete Slab</h3>
                        <p class="text-green-500 font-bold mb-2">$100</p>
                        <p class="text-sm text-gray-600 mb-3">High-quality concrete slabs for durable roads and pathways.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 19 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="structures" data-price="800">
                        <img src="https://cdn.pixabay.com/photo/2016/11/21/12/38/rock-wall-1845128_1280.jpg" alt="Structure" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Concrete Wall</h3>
                        <p class="text-green-500 font-bold mb-2">$800</p>
                        <p class="text-sm text-gray-600 mb-3">Strong concrete walls for residential and commercial use.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                    <!-- Product 20 -->
                    <div class="product-card bg-white border border-gray-200 p-5 rounded-md text-center shadow-md hover:shadow-lg hover:scale-105 transition-transform" data-category="utility-systems" data-price="500">
                        <img src="https://cdn.pixabay.com/photo/2017/09/12/13/21/photovoltaic-system-2742302_960_720.jpg" alt="Utility System" class="w-full h-40 object-cover rounded-md mb-3">
                        <h3 class="text-lg font-semibold mb-3">Solar Panel System</h3>
                        <p class="text-green-500 font-bold mb-2">$500</p>
                        <p class="text-sm text-gray-600 mb-3">Efficient solar panel system for homes and businesses.</p>
                        <div class="mt-4 flex justify-center gap-4">
                            <button class="bg-black text-white px-4 py-2 rounded-md hover:bg-blue-600">Buy</button>
                            <button class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600">Contact Us</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- JavaScript to Filter and Sort Products -->
        <script>
            const categoryFilters = document.querySelectorAll('.category-filter');
            const priceRangeFilters = document.querySelectorAll('.price-range-filter');
            const sortPriceFilters = document.querySelectorAll('.sort-price-filter');
            const searchInput = document.getElementById('search');
            const productCards = document.querySelectorAll('.product-card');

            // Filter products by category
            categoryFilters.forEach((filter) => {
                filter.addEventListener('change', filterProducts);
            });

            // Filter products by price range
            priceRangeFilters.forEach((filter) => {
                filter.addEventListener('change', filterProducts);
            });

            // Sort products by price
            sortPriceFilters.forEach((filter) => {
                filter.addEventListener('change', sortProducts);
            });

            // Search filter
            searchInput.addEventListener('input', filterProducts);

            function filterProducts() {
                const selectedCategories = Array.from(categoryFilters)
                        .filter((checkbox) => checkbox.checked)
                        .map((checkbox) => checkbox.value);
                const selectedPriceRange = document.querySelector('input[name="price-range"]:checked').value;
                const searchTerm = searchInput.value.toLowerCase();

                productCards.forEach((card) => {
                    const cardCategory = card.getAttribute('data-category');
                    const cardPrice = parseFloat(card.getAttribute('data-price'));
                    const cardName = card.querySelector('h3').textContent.toLowerCase();

                    let isCategoryMatch = selectedCategories.length === 0 || selectedCategories.includes(cardCategory);
                    let isPriceMatch = false;

                    if (selectedPriceRange === 'all') {
                        isPriceMatch = true;
                    } else {
                        const [minPrice, maxPrice] = selectedPriceRange.split('-').map((value) => parseFloat(value));
                        isPriceMatch = cardPrice >= minPrice && (maxPrice ? cardPrice <= maxPrice : true);
                    }

                    let isSearchMatch = cardName.includes(searchTerm);

                    if (isCategoryMatch && isPriceMatch && isSearchMatch) {
                        card.style.display = '';
                    } else {
                        card.style.display = 'none';
                    }
                });
            }

            function sortProducts() {
                const sortOrder = document.querySelector('input[name="sort-price"]:checked').value;

                const sortedProducts = Array.from(productCards)
                        .sort((a, b) => {
                            const priceA = parseFloat(a.getAttribute('data-price'));
                            const priceB = parseFloat(b.getAttribute('data-price'));

                            if (sortOrder === 'asc') {
                                return priceA - priceB;
                            } else if (sortOrder === 'desc') {
                                return priceB - priceA;
                            } else {
                                return 0;
                            }
                        });

                const container = document.querySelector('.grid');
                sortedProducts.forEach((product) => {
                    container.appendChild(product);
                });
            }
        </script>
    </body>
</html>
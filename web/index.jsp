<%-- 
    Document   : index
    Created on : Jan 4, 2025, 10:37:06 AM
    Author     : pansilu
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>URBANNEST</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/lucide-icons/dist/umd/lucide.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="min-h-screen bg-white">
    <nav class="flex items-center justify-between py-8 px-6">
        <a href="/" class="text-xl font-bold">URBANNEST</a>
        <div class="flex items-center gap-8">
            <a href="/about" class="text-sm hover:text-gray-600">About Us</a>
            <a href="/properties" class="text-sm hover:text-gray-600">Properties</a>
            <a href="/blogs" class="text-sm hover:text-gray-600">Blogs</a>
            <a href="<%= request.getAttribute("loginUrl") != null ? request.getAttribute("loginUrl") : "login.jsp" %>" class="bg-orange-500 text-white rounded-full px-4 py-2 text-sm">Login</a>
        </div>
    </nav>

    <main>
        <section class="grid md:grid-cols-2 gap-8 px-20 y-12">
            <div class="flex flex-col justify-center gap-8">
                <div class="space-y-4">
                    <h1 class="text-[3.8rem] font-bold leading-tight ">
                        Find Your Dream <br>Property with
                        <br>
                        <span class="text-5xl font-black">URBANNEST</span>
                    </h1>
                    <p class="text-gray-600 max-w-md">
                       "Discover a world of premium properties tailored to your needs. 
                       From luxurious apartments to cozy homes, explore top locations,
                       compare prices, and take the first step toward your perfect living space. 
                       URBANNEST—where your property search begins and dreams come true."







                    </p>
                </div>
                <div class="flex items-center gap-4">
                    <button class="bg-orange-500 text-white rounded-full px-6 py-2">Discover Now</button>
<!--                    <button class="rounded-full gap-2 flex items-center">
                        <i? class="lucide-play-circle"></i>
                        Watch Demo
                    </button>-->
                </div>
            </div>
            <div class="relative h-[400px] lg:h-[500px]">
               <img src="https://i.ibb.co/JKQfRNq/home.png" alt="home"  alt="Modern home with black roof" class="object-cover rounded-lg w-full h-full">
            </div>
        </section>

        <section class="px-4">
            <div class="flex flex-col justify-evenly md:flex-row gap-4 p-4 bg-white rounded-xl shadow-lg max-w-4xl mx-auto -mt-8 relative z-10">
                <select class="w-full md:w-[200px] p-2 border rounded-md">
                    <option>Los Angeles, California</option>
                    <option>New York, NY</option>
                    <option>San Francisco, CA</option>
                </select>
                <select class="w-full md:w-[200px] p-2 border rounded-md">
                    <option>Classic Apartment</option>
                    <option>House</option>
                    <option>Condo</option>
                </select>
                <select class="w-full md:w-[200px] p-2 border rounded-md">
                    <option>$6,000 - $12,000 /month</option>
                    <option>$12,000 - $24,000 /month</option>
                    <option>$24,000+ /month</option>
                </select>
                <button class="bg-black text-white rounded-full h-10 w-10 flex items-center justify-center">
                   <i class="bi bi-search text-white text-gray-600" style="width: 1.5rem; height: 1.5rem;"></i>

                </button>
            </div>
        </section>

        <section class="max-w-full  px-24 py-20">
            <div class="grid md:grid-cols-2 gap-20 items-center  ">
                <div class="grid grid-cols-2 gap-16">
                    <div class="bg-gray-50 p-4 rounded-xl text-center space-y-2">
                        <div class="text-2xl font-bold bg-black-200">18+</div>
                        <div class="text-xs text-gray-600">Years of Experience</div>
                    </div>
                    <div class="bg-gray-50 p-4 rounded-xl text-center space-y-2">
                        <div class="text-2xl font-bold">20K+</div>
                        <div class="text-xs text-gray-600">Satisfied Customers</div>
                    </div>
                    <div class="bg-gray-50 p-4 rounded-xl text-center space-y-2">
                        <div class="text-2xl font-bold">89+</div>
                        <div class="text-xs text-gray-600">Awards Winning</div>
                    </div>
                    <div class="bg-gray-50 p-4 rounded-xl text-center space-y-2">
                        <div class="text-2xl font-bold">29+</div>
                        <div class="text-xs text-gray-600">Property Collections</div>
                    </div>
                </div>
                <div class="space-y-6">
                    <h2 class="text-4xl font-bold">
                        Trusted Real Estate
                        <br>
                        <span class="font-black">Advisors</span>
                    </h2>
                    <p class="text-gray-600">
                        Discover unparalleled expertise and personalized guidance with our team
                        of trusted real estate advisors. Your journey to property success begins
                        here.
                    </p>
                    <div class="flex items-center gap-4">
                        <button class="bg-black text-white rounded-full px-6 py-2">Discover Now</button>
                        <button class="rounded-full gap-2 flex items-center">
                            <i class="lucide-play-circle"></i>
                            Watch Demo
                        </button>
                    </div>
                </div>
            </div>
        </section>

        <section id="featured-properties" class="py-16 px-24">
            <div class="max-w-full mx-auto">
                <div class="flex justify-between items-center mb-8">
                    <h2 class="text-5xl self-center font-bold">Featured Properties</h2>
                    <button class="border border-gray-300 rounded-full px-4 py-2">View All</button>
                </div>
                <div id="property-grid" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <!-- Properties will be dynamically inserted here -->
                </div>
                <div class="flex justify-center gap-2 mt-8">
                    <!-- Pagination dots will be inserted here by JavaScript -->
                </div>
            </div>
        </section>

        <section class="py-16 px-6 bg-gray-50">
            <div class="max-w-7xl mx-auto grid grid-cols-1 md:grid-cols-2 gap-8 items-center rounded-lg">
                <div class="space-y-4">
                    <h2 class="text-2xl font-bold">Subscribe our Newsletter</h2>
                    <p class="text-gray-600">
                        Subscribe to our newsletter and get the latest updates and offers.
                    </p>
                    <div class="flex gap-2">
                        <input type="email" placeholder="Enter your email" class="rounded-full px-4 py-2 w-full">
                        <button class="bg-black text-white rounded-full px-6 py-2">Submit</button>
                    </div>
                </div>
                <div class="relative h-[300px]">
                    <img src="https://i.ibb.co/9ThTSPG/frames-for-your-heart-vb-SRUr-Nm3-Ik-unsplash.jpg" alt="Buildings illustration" class="object-contain w-full h-full">
                </div>
            </div>
        </section>

        <section id="articles-section" class="py-16 px-6">
            <div class="max-w-6xl mx-auto">
                <h2 class="text-2xl font-bold mb-2">Read out our latest Articles</h2>
                <p class="text-gray-600 mb-8">
                    Explore our latest articles about property market and real estate news
                </p>
                <div id="articles-grid" class="grid grid-cols-1 md:grid-cols-3 gap-8">
                    <!-- Articles will be dynamically inserted here -->
                </div>
                <div class="text-center mt-8">
                    <button class="border border-gray-300 rounded-full px-6 py-2">View All Articles</button>
                </div>
            </div>
        </section>
    </main>

    <footer class="bg-gray-50 border-t">
        <div class="max-w-7xl mx-auto px-6 py-16">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-12">
                <div class="space-y-6">
                    <a href="/" class="text-xl font-bold">URBANNEST</a>
                    <p class="text-gray-600 text-sm">
                        Discover your dream home with our extensive collection of premium properties. 
                        We make finding the perfect property simple and personalized.
                    </p>
                    <div class="flex gap-4">
                        <a href="#" class="text-gray-600 hover:text-black"><i class="lucide-facebook"></i></a>
                        <a href="#" class="text-gray-600 hover:text-black"><i class="lucide-twitter"></i></a>
                        <a href="#" class="text-gray-600 hover:text-black"><i class="lucide-instagram"></i></a>
                        <a href="#" class="text-gray-600 hover:text-black"><i class="lucide-linkedin"></i></a>
                    </div>
                </div>

                <div class="space-y-6">
                    <h3 class="font-semibold text-lg">Quick Links</h3>
                    <nav class="flex flex-col space-y-3">
                        <a href="/about" class="text-gray-600 hover:text-black text-sm">About Us</a>
                        <a href="/properties" class="text-gray-600 hover:text-black text-sm">Properties</a>
                        <a href="/agents" class="text-gray-600 hover:text-black text-sm">Our Agents</a>
                        <a href="/pricing" class="text-gray-600 hover:text-black text-sm">Pricing Plans</a>
                        <a href="/contact" class="text-gray-600 hover:text-black text-sm">Contact Us</a>
                       
                    </nav>
                </div>

                <div class="space-y-6">
                    <h3 class="font-semibold text-lg">Contact Info</h3>
                    <ul class="space-y-3">
                        <li class="text-gray-600">123 Dream St, City, State</li>
                        <li class="text-gray-600">(123) 456-7890</li>
                        <li class="text-gray-600">info@URBANNEST.com</li>
                    </ul>
                </div>

                <div class="space-y-6">
                    <h3 class="font-semibold text-lg">Newsletter</h3>
                    <p class="text-gray-600">Get the latest updates and offers delivered to your inbox</p>
                    <div class="flex gap-4">
                        <input type="email" class="p-2 border border-gray-300 rounded-md w-full" placeholder="Enter your email">
                        <button class="bg-black text-white px-6 py-2 rounded-full">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </footer>
   <script src="${pageContext.request.contextPath}/script.js"></script>
</body>
</html>


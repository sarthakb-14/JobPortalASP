﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="JobPortal.LandingPage" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Portal</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Muli:wght@400;600&display=swap" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
    <link rel="stylesheet" href="StyleSheet/LandingPage.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navbar Section -->
        <nav class="navbar navbar-expand-lg">
            <div>
                <a class="navbar-brand" href="#">Job Portal</a>
            </div>
            <div class="navbar-collapse navlink" id="navbarNav">
                <ul class="navbar-nav gap text-center w-100">
                    <li>
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li>
                        <a class="nav-link" href="JobListings.aspx">Job Listings</a>
                    </li>
                    <li>
                        <a class="nav-link" href="#">Contact Us</a>
                    </li>
                </ul>
            </div>
            <div>
                <ul class="navbar-nav justify-content-end">
                    <li class="nav-item">
                        <asp:Button runat="server" CssClass="btn" Text="Register" OnClientClick="window.location.href='Registration.aspx'; return false;" />
                    </li>
                    <li class="nav-item">
                        <asp:Button runat="server" CssClass="btn" Text="Login" OnClientClick="window.location.href='JobPortalLogin.aspx'; return false;" />
                    </li>
                </ul>
            </div>
        </nav>

        <!-- Banner Section -->
        <div class="banner">
            <div class="w-75">
                <h1>Your Dream Job Awaits</h1>
                <p>Find jobs that fit your skills, preferences, and aspirations</p>
                <div class="row mb-5">
                    <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                        <input type="text" class="form-control form-control-lg sizeing" placeholder="Job title, keywords...">
                    </div>
                    <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                        <select class="form-select sizeing">
                            <option selected>Anywhere</option>
                            <option>San Francisco</option>
                            <option>Palo Alto</option>
                            <option>New York</option>
                            <option>Manhattan</option>
                            <option>Ontario</option>
                            <option>Toronto</option>
                            <option>Kansas</option>
                            <option>Mountain View</option>
                        </select>
                    </div>
                    <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                        <select class="form-select sizeing">
                            <option selected>Any</option>
                            <option>Full Time</option>
                            <option>Part Time</option>
                            <option>Internship</option>
                            <option>Freelancer</option>
                        </select>
                    </div>
                    <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                        <button type="submit" class="btn btn-primary btn-lg btn-block text-white btn-search sizeing">Search Job</button>
                    </div>
                </div> 
            </div>
        </div>

        <!-- Search Job Section -->
       <section class="py-5">
            <div class="section-container">
                <div class="row mb-5 justify-content-center">
                    <div class="col-md-7 text-center">
                        <h2 class="section-title mb-2 text-white">Careers Statistics</h2>
                        <p class="lead text-white">Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita unde officiis recusandae sequi excepturi corrupti.</p>
                    </div>
                </div>
                <div class="row section-counter">
                    <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
                        <div class="d-flex align-items-center justify-content-center mb-2">
                            <strong class="number" data-number="1930">1,930</strong>
                        </div>
                        <span class="caption">Candidates</span>
                    </div>
                    <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
                        <div class="d-flex align-items-center justify-content-center mb-2">
                            <strong class="number" data-number="54">54</strong>
                        </div>
                        <span class="caption">Jobs Posted</span>
                    </div>
                    <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
                        <div class="d-flex align-items-center justify-content-center mb-2">
                            <strong class="number" data-number="120">120</strong>
                        </div>
                        <span class="caption">Jobs Filled</span>
                    </div>
                    <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
                        <div class="d-flex align-items-center justify-content-center mb-2">
                            <strong class="number" data-number="550">550</strong>
                        </div>
                        <span class="caption">Companies</span>
                    </div>
                </div>
            </div>
        </section>






        <!-- Browse Categories Section -->
        <section class="browse-categories">
            <h3>Browse Top Categories</h3>
            <div class="categories">
                <div class="category-box">
                    <i class="fas fa-laptop-code"></i>
                    <h5>Technology</h5>
                </div>
                <div class="category-box">
                    <i class="fas fa-briefcase-medical"></i>
                    <h5>Healthcare</h5>
                </div>
                <div class="category-box">
                    <i class="fas fa-hammer"></i>
                    <h5>Construction</h5>
                </div>
                <div class="category-box">
                    <i class="fas fa-paint-brush"></i>
                    <h5>Design</h5>
                </div>
            </div>
            <asp:Button runat="server" CssClass="show-all-btn" Text="Show All" />
        </section>

        <!-- Resume Upload Section -->
        <%--<section class="resume-section container">
            <h3>Upload Your Resume</h3>
            <p>Upload your resume to be found by top companies.</p>
            <asp:FileUpload runat="server" CssClass="form-control" />
            <asp:Button runat="server" CssClass="btn btn-primary mt-3" Text="Upload Resume" />
        </section>--%>

        <!-- How It Works Section -->
        <section class="how-it-works-section container">
            <h3>How the Portal Works</h3>
            <div class="row">
                <div class="col-md-4">
                    <div class="how-it-works-card">
                        <i class="fas fa-user-plus fa-3x mb-3"></i>
                        <h5>Create an Account</h5>
                        <p>Sign up and create a profile to start applying.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="how-it-works-card">
                        <i class="fas fa-search fa-3x mb-3"></i>
                        <h5>Search Jobs</h5>
                        <p>Browse thousands of jobs that match your profile.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="how-it-works-card">
                        <i class="fas fa-handshake fa-3x mb-3"></i>
                        <h5>Get Hired</h5>
                        <p>Apply and get hired by top companies!</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer Section -->
        <footer class="footer">
            <div class="footer-content container">
                <div>
                    <h5>About Us</h5>
                    <p>Job Portal is a leading platform connecting employers with top talent. We help individuals find their dream jobs while enabling companies to hire the best candidates.</p>
                </div>
                <div>
                    <h5>Contact Info</h5>
                    <p>Email: <a href="mailto:info@jobportal.com">info@jobportal.com</a></p>
                    <p>Phone: +123-456-7890</p>
                    <p>Address: 15th Floor, Finthrive Global, Unitech CyberPark, Gurugram</p>
                </div>
            </div>
            <p>&copy; 2024 Job Portal. All Rights Reserved.</p>
        </footer>
    </form>

    <!-- Including Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
<a id="readme-top"></a>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
      </ul>
    </li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

Bolt Cover (https://www.boltcover.com/) helps UK retailers offer insurance at the point of sale.

This is an example of how to retrieve an insurance price for a specific insurance category and product price.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

You will need a test API key to make this script work, head over to https://app.boltcover.com/request-test-api and request one.

### Prerequisites

You will need to have Ruby installed along with various gems.  The script has been tested against Ruby 3.2.3 only.


## Usage

1. Create a YAML file called get_boltcover_insurance_price.yml and insert the two attributes BOLT_BASE_URL and BOLT_API_KEY. If you are new to YAML see lines 20 onwards in the code file.  The base url will be https://api.boltcover.com/test if you are just getting started.
2. Adjust the variables category and product_price to your needs, here are some categories you might use (note you can only use one at a time):

   "Baby & Toddler Furniture", "Beds & Accessories", "Benches", "Cabinets & Storage", "Chairs", "Entertainment Centers & TV Stands", "Furniture Sets", "Futon Frames", "Futon Pads", "Futons", "Office Furniture", "Ottomans", "Sofa Accessories", "Sofas", "Table Accessories", "Tables"
3. Run ruby get_boltcover_insurance_price.rb at your command prompt.
4. You should now get a price, if you have any issues submit an issue or email us at info@boltcover.com
<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

Any contributions you make are **greatly appreciated** by the team at Bolt Cover.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>




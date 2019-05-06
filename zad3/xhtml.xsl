<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output indent="yes" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" />

  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <link rel="stylesheet" href="xhtmlStyle.css"/>
        <title>Movie Catalog</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
      </head>
      <body>
        <h1>Movie Catalog</h1>
        <p>
          <a id="reportRef" href="#ref" title="To report">
            <b>to report</b>
          </a>
        </p>
        <div class="movies">
          <xsl:for-each select="/movie_catalog/movies/Movie">
            <div class="movie">
              <h2>
                <xsl:value-of select="Title"/>
              </h2>
              <ul>
                <li>
                  <b>Company: </b>
                  <xsl:value-of select="@Company"/>
                </li>
                <li>
                  <b>Countries: </b>
                  <xsl:for-each select="Countries/Country">
                    <xsl:value-of select="concat(.,' ')"/>
                  </xsl:for-each>
                </li>
                <li>
                  <b>Date: </b>
                  <xsl:value-of select="Date"/>
                </li>
                <li>
                  <b>Worldwide gross: </b>
                  <xsl:value-of select="concat(Worldwide_gross,' ', Worldwide_gross/@currency)"/>
                </li>
                <li>
                  <b>Budget: </b>
                  <xsl:value-of select="concat(Budget,' ', Budget/@currency)"/>
                </li>
                <li>
                  <b>Total earning: </b>
                  <xsl:value-of select="Total_earning"/>
                </li>
                <li>
                  <b>Runtime: </b>
                  <xsl:value-of select="concat(Runtime,' ', Runtime/@timeFormat)"/>
                </li>
                <li>
                  <b>Rate: </b>
                  <xsl:value-of select="Rate"/>
                </li>
                <li>
                  <b>Categories: </b>
                  <xsl:for-each select="Categories/Category">
                    <xsl:value-of select="concat(.,' ')"/>
                  </xsl:for-each>
                </li>
              </ul>
            </div>
          </xsl:for-each>
        </div>
        <hr/>
        <div class="report">
          <h2>Report</h2>
          <div class="movies_">
            <p>
              <b>Count of movies: </b>
              <xsl:value-of select="/movie_catalog/report/movies_/countOfMovies"/>
            </p>
            <div class="result categories">
              <h3>Categories</h3>
              <p>
                <b>Drama: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/drama"/>
              </p>
              <p>
                <b>Comedy: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/comedy"/>
              </p>
              <p>
                <b>Action: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/action"/>
              </p>
              <p>
                <b>Adventure: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/adventure"/>
              </p>
              <p>
                <b>Horror: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/horror"/>
              </p>
              <p>
                <b>Crime: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/crime"/>
              </p>
              <p>
                <b>Scifi: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/scifi"/>
              </p>
              <p>
                <b>Romance: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/romance"/>
              </p>
              <p>
                <b>Thriller: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/thriller"/>
              </p>
              <p>
                <b>Fantasy: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/fantasy"/>
              </p>
              <p>
                <b>Mystery: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/mystery"/>
              </p>
              <p>
                <b>History: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/history"/>
              </p>
              <p>
                <b>Biography: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/biography"/>
              </p>
              <p>
                <b>Sport: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/sport"/>
              </p>
              <p>
                <b>Documentary: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/documentary"/>
              </p>
              <p>
                <b>Animation: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/animation"/>
              </p>
              <p>
                <b>Music: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/music"/>
              </p>
              <p>
                <b>Count of categories: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/categories/countOfCategories"/>
              </p>
            </div>
            <div class="result">
              <h3>Companies</h3>
              <p>
                <b>Castle Rock: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/companies/Castle_Rock"/>
              </p>
              <p>
                <b>Paramount Pictures: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/companies/Paramount_Pictures"/>
              </p>
              <p>
                <b>Warner Bros: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/companies/Warner_Bros"/>
              </p>
              <p>
                <b>Legendary: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/companies/Legendary"/>
              </p>
              <p>
                <b>20th Century Fox: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/companies/Century_Fox_20th"/>
              </p>
              <p>
                <b>Universal Pictures: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/companies/Universal_Pictures"/>
              </p>
              <p>
                <b>Lionsgate Films: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/companies/Lionsgate_Films"/>
              </p>
            </div>
            <div class="result">
              <h3>Countries</h3>
              <p>
                <b>USA: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/countries/USA"/>
              </p>
              <p>
                <b>Canada: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/countries/Canada"/>
              </p>
              <p>
                <b>UK: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/countries/UK"/>
              </p>
              <p>
                <b>Australia: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/countries/Australia"/>
              </p>
              <p>
                <b>China: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/countries/China"/>
              </p>
              <p>
                <b>HongKong: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/countries/HongKong"/>
              </p>
              <p>
                <b>Ireland: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/countries/Ireland"/>
              </p>
              <p>
                <b>Japan: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/countries/Japan"/>
              </p>
              <p>
                <b>France: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/countries/France"/>
              </p>
            </div>
            <div class="result">
              <h3>Money</h3>
              <p>
                <b>Average budget: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/money/average_budget"/>
                   usd
              </p>
              <p>
                <b>Average worldwide gross: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/money/average_worldwide_gross"/>
                   usd
              </p>
              <p>
                <b>Max budget: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/money/max_budget"/>
              </p>
              <p>
                <b>Min budget: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/money/min_budget"/>
              </p>
              <p>
                <b>Max worldwide gross: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/money/max_worldwide_gross"/>
              </p>
              <p>
                <b>Min worldwide gross: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/money/min_worldwide_gross"/>
              </p>
              <p>
                <b>Max earning: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/money/max_earning"/>
              </p>
              <p>
                <b>Min earning: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/money/min_earning"/>
              </p>
              <p>
                <b>Max losing: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/money/max_losing"/>
              </p>
            </div>
            <div class="result">
              <h3>Time</h3>
              <p>
                <b>Average movies time: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/time/average_movies_time"/>
                   min
              </p>
              <p>
                <b>Max runtime: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/time/max_runtime"/>
              </p>
              <p>
                <b>Min runtime: </b>
                <xsl:value-of select="/movie_catalog/report/movies_/time/min_runtime"/>
              </p>
            </div>
            <div class="reportDate">
              <h3>Date of create report</h3>
              <p>
                <xsl:value-of select="/movie_catalog/report/movies_/ReportDate"/>
              </p>
            </div>
          </div>
        </div>
        <hr />
        <div class="authors">
          <h3>Athors</h3>
          <p>
            <xsl:value-of select="/movie_catalog/authors/first"/>
          </p>
          <p>
            <xsl:value-of select="/movie_catalog/authors/second"/>
          </p>
        </div>
        <p>
          <a id="ref" href="#" title="To the top of this page">
            <b>TO TOP</b>
          </a>
        </p>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
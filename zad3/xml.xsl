<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:key use="@IdCompany" name="company_founder" match="movie_catalog/companies/company"/>

  <xsl:template match="/">
    <xsl:element name="movie_catalog">
      <xsl:apply-templates select="/movie_catalog/movies"/>
      <report>
        <movies_>
          <countOfMovies>
            <xsl:value-of select="count(//movie)"/>
          </countOfMovies>
          <categories>
            <countOfCategories>
              <xsl:value-of select="count(/movie_catalog/categories/category)"/>
            </countOfCategories>
            <drama>
              <xsl:value-of select="count(//movie/categories/category[text()='Drama'])"/>
            </drama>
            <comedy>
              <xsl:value-of select="count(//movie/categories/category[text()='Comedy'])"/>
            </comedy>
            <action>
              <xsl:value-of select="count(//movie/categories/category[text()='Action'])"/>
            </action>
            <adventure>
              <xsl:value-of select="count(//movie/categories/category[text()='Adventure'])"/>
            </adventure>
            <horror>
              <xsl:value-of select="count(//movie/categories/category[text()='Horror'])"/>
            </horror>
            <crime>
              <xsl:value-of select="count(//movie/categories/category[text()='Crime'])"/>
            </crime>
            <scifi>
              <xsl:value-of select="count(//movie/categories/category[text()='Sci-Fi'])"/>
            </scifi>
            <romance>
              <xsl:value-of select="count(//movie/categories/category[text()='Romance'])"/>
            </romance>
            <thriller>
              <xsl:value-of select="count(//movie/categories/category[text()='Thriller'])"/>
            </thriller>
            <fantasy>
              <xsl:value-of select="count(//movie/categories/category[text()='Fantasy'])"/>
            </fantasy>
            <mystery>
              <xsl:value-of select="count(//movie/categories/category[text()='Mystery'])"/>
            </mystery>
            <history>
              <xsl:value-of select="count(//movie/categories/category[text()='History'])"/>
            </history>
            <biography>
              <xsl:value-of select="count(//movie/categories/category[text()='Biography'])"/>
            </biography>
            <sport>
              <xsl:value-of select="count(//movie/categories/category[text()='Sport'])"/>
            </sport>
            <documentary>
              <xsl:value-of select="count(//movie/categories/category[text()='Documentary'])"/>
            </documentary>
            <animation>
              <xsl:value-of select="count(//movie/categories/category[text()='Animation'])"/>
            </animation>
            <music>
              <xsl:value-of select="count(//movie/categories/category[text()='Music'])"/>
            </music>
          </categories>
          <companies>
            <Castle_Rock>
              <xsl:value-of select="count(//movie[@IdCompany='c1'])"/>
            </Castle_Rock>
            <Paramount_Pictures>
              <xsl:value-of select="count(//movie[@IdCompany='c2'])"/>
            </Paramount_Pictures>
            <Warner_Bros>
              <xsl:value-of select="count(//movie[@IdCompany='c3'])"/>
            </Warner_Bros>
            <Legendary>
              <xsl:value-of select="count(//movie[@IdCompany='c4'])"/>
            </Legendary>
            <Century_Fox_20th>
              <xsl:value-of select="count(//movie[@IdCompany='c5'])"/>
            </Century_Fox_20th>
            <Universal_Pictures>
              <xsl:value-of select="count(//movie[@IdCompany='c6'])"/>
            </Universal_Pictures>
            <Lionsgate_Films>
              <xsl:value-of select="count(//movie[@IdCompany='c7'])"/>
            </Lionsgate_Films>
          </companies>
          <countries>
            <USA>
              <xsl:value-of select="count(//movie/countries/country[text()='USA'])"/>
            </USA>
            <Canada>
              <xsl:value-of select="count(//movie/countries/country[text()='Canada'])"/>
            </Canada>
            <UK>
              <xsl:value-of select="count(//movie/countries/country[text()='UK'])"/>
            </UK>
            <Australia>
              <xsl:value-of select="count(//movie/countries/country[text()='Australia'])"/>
            </Australia>
            <China>
              <xsl:value-of select="count(//movie/countries/country[text()='China'])"/>
            </China>
            <HongKong>
              <xsl:value-of select="count(//movie/countries/country[text()='Hong Kong'])"/>
            </HongKong>
            <Ireland>
              <xsl:value-of select="count(//movie/countries/country[text()='Ireland'])"/>
            </Ireland>
            <Japan>
              <xsl:value-of select="count(//movie/countries/country[text()='Japan'])"/>
            </Japan>
            <France>
              <xsl:value-of select="count(//movie/countries/country[text()='France'])"/>
            </France>
          </countries>
          <money>
            <average_budget>
              <xsl:value-of select="format-number((avg(//movie/budget)), '#')"/>
            </average_budget>
            <average_worldwide_gross>
              <xsl:value-of select="format-number((avg(//movie/worldwide_gross)), '#')"/>
            </average_worldwide_gross>
            <max_budget>
              <xsl:apply-templates select="//movie/budget[text()=$maxBudget]"/>
            </max_budget>
            <min_budget>
              <xsl:apply-templates select="//movie/budget[text()=$minBudget]"/>
            </min_budget>
            <max_worldwide_gross>
              <xsl:apply-templates select="//movie/worldwide_gross[text()=$maxW]"/>
            </max_worldwide_gross>
            <min_worldwide_gross>
              <xsl:apply-templates select="//movie/worldwide_gross[text()=$minW]"/>
            </min_worldwide_gross>
          </money>
          <time>
            <average_movies_time>
              <xsl:apply-templates select="format-number((avg(//movie/runtime)), '#')"/>
            </average_movies_time>
            <max_runtime>
              <xsl:apply-templates select="//movie/runtime[text()=$maxT]"/>
            </max_runtime>
            <min_runtime>
              <xsl:apply-templates select="//movie/runtime[text()=$minT]"/>
            </min_runtime>
          </time>

          <ReportDate>
            <xsl:value-of select="format-dateTime(current-dateTime(), '[M01]/[D01]/[Y0001] [H00]:[m00]:[s00]')"/>
          </ReportDate>
        </movies_>
      </report>

      <xsl:element name="authors">
        <first>
          <xsl:value-of select="normalize-space(movie_catalog/document_information/proj_authors/author1)"/>
        </first>
        <second>
          <xsl:value-of select="normalize-space(movie_catalog/document_information/proj_authors/author2)"/>
        </second>
      </xsl:element>

    </xsl:element>
  </xsl:template>

  <xsl:variable name="maxBudget" select="max(/movie_catalog/movies/movie/budget)"/>
  <xsl:template match="//movie/budget[text()=$maxBudget]">
    <xsl:value-of select="../title" />
    <xsl:text> (Budget: </xsl:text>
    <xsl:value-of select="concat(.,' ', @currency)" />
    <xsl:text>)</xsl:text>
  </xsl:template>

  <xsl:variable name="minBudget" select="min(/movie_catalog/movies/movie/budget)"/>
  <xsl:template match="//movie/budget[text()=$minBudget]">
    <xsl:value-of select="../title" />
    <xsl:text> (Budget: </xsl:text>
    <xsl:value-of select="concat(.,' ', @currency)" />
    <xsl:text>)</xsl:text>
  </xsl:template>

  <xsl:variable name="maxW" select="max(/movie_catalog/movies/movie/worldwide_gross)"/>
  <xsl:template match="//movie/worldwide_gross[text()=$maxW]">
    <xsl:value-of select="../title" />
    <xsl:text> (Worldwide gross: </xsl:text>
    <xsl:value-of select="concat(.,' ', @currency)" />
    <xsl:text>)</xsl:text>
  </xsl:template>

  <xsl:variable name="minW" select="min(/movie_catalog/movies/movie/worldwide_gross)"/>
  <xsl:template match="//movie/worldwide_gross[text()=$minW]">
    <xsl:value-of select="../title" />
    <xsl:text> (Worldwide gross: </xsl:text>
    <xsl:value-of select="concat(.,' ', @currency)" />
    <xsl:text>)</xsl:text>
  </xsl:template>

  <xsl:variable name="maxT" select="max(/movie_catalog/movies/movie/runtime)"/>
  <xsl:template match="//movie/runtime[text()=$maxT]">
    <xsl:value-of select="../title" />
    <xsl:text> (Run time: </xsl:text>
    <xsl:value-of select="concat(.,' ', @timeFormat)" />
    <xsl:text>)</xsl:text>
  </xsl:template>

  <xsl:variable name="minT" select="min(/movie_catalog/movies/movie/runtime)"/>
  <xsl:template match="//movie/runtime[text()=$minT]">
    <xsl:value-of select="../title" />
    <xsl:text> (Run time: </xsl:text>
    <xsl:value-of select="concat(.,' ', @timeFormat)" />
    <xsl:text>)</xsl:text>
  </xsl:template>

  <xsl:template match="/movie_catalog/movies">
    <xsl:element name="movies">
      <xsl:apply-templates select="/movie_catalog/movies/movie">
        <xsl:sort select="rate" order="descending"/>
      </xsl:apply-templates>
    </xsl:element>
  </xsl:template>

  <xsl:template match="//movie">

    <xsl:element name="Movie">
      <xsl:attribute name="Company">
        <xsl:variable name="CompanyFounder" select="key('company_founder',@IdCompany)"/>
        <xsl:value-of select="normalize-space($CompanyFounder/companyTitle)"/>
      </xsl:attribute>

      <xsl:element name="Title">
        <xsl:attribute name="Language">
          <xsl:value-of select="title/@lang"/>
        </xsl:attribute>
        <xsl:value-of select="title"/>
      </xsl:element>

      <xsl:element name="Countries">
        <xsl:for-each select="countries/country">
          <xsl:element name="Country">
            <xsl:value-of select="."/>
          </xsl:element>
        </xsl:for-each>
      </xsl:element>

      <xsl:element name="Date">
        <xsl:value-of select="date"/>
      </xsl:element>

      <xsl:element name="Worldwide_gross">
        <xsl:attribute name="currency">
          <xsl:value-of select="worldwide_gross/@currency"/>
        </xsl:attribute>
        <xsl:value-of select="worldwide_gross"/>
      </xsl:element>

      <xsl:element name="Budget">
        <xsl:attribute name="currency">
          <xsl:value-of select="budget/@currency"/>
        </xsl:attribute>
        <xsl:value-of select="budget"/>
      </xsl:element>

      <xsl:element name="Total_earning">
        <xsl:variable name="diff" select="number(worldwide_gross)-number(budget)" />
        <xsl:choose>
          <xsl:when test="$diff&gt;0">
            <xsl:text>earning(</xsl:text>
            <xsl:value-of select="concat(format-number(($diff), '#'), ' ', budget/@currency)" />
            <xsl:text>)</xsl:text>
          </xsl:when>
          <xsl:otherwise>
            <xsl:text>losing(</xsl:text>
            <xsl:value-of select="concat(format-number((abs($diff)), '#'), ' ', budget/@currency)" />
            <xsl:text>)</xsl:text>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:element>

      <xsl:element name="Runtime">
        <xsl:attribute name="timeFormat">
          <xsl:value-of select="runtime/@timeFormat"/>
        </xsl:attribute>
        <xsl:value-of select="runtime"/>
      </xsl:element>

      <xsl:element name="Rate">
        <xsl:value-of select="rate"/>
      </xsl:element>

      <xsl:element name="Categories">
        <xsl:for-each select="categories/category">
          <xsl:element name="Category">
            <xsl:value-of select="."/>
          </xsl:element>
        </xsl:for-each>
      </xsl:element>

    </xsl:element>
  </xsl:template>
</xsl:stylesheet>
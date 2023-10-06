Characterizing Neighborhood Using 311 Calls: A Case Study of Kansas City
================

<center>

Thao Tran

October 2023

</center>
<!-- **Abstracts** -->
<!-- TBD  -->

### Intro

From Evicted - Mathew Desmond, we learned that in Milwaukee at the time
multiple nuisance activities 911 calls on a property can lead to police
service charges to property owners. This might lead to landlord eviction
renters. Nuisance activities are especially concentrated in low income,
deep poverty neighborhoods. These calls are reported under “Trouble with
Subjects”, noise complaints, and domestic violence.

Connecting this to the above literature of using 311 calls as indicators
of neighborhood distress and characteristics of urban neighborhoods. In
another way, 311 calls can be used as a real time indicator of
neighborhood characteristics in addition to much lagged
socio-demographic estimates.

### Data

#### About 311 data

![](README_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

| CATEGORY                            | Neighborhood_Count | Min | Mean | Median |  SD |   Max |  Total |
|:------------------------------------|-------------------:|----:|-----:|-------:|----:|------:|-------:|
| Animals / Pets                      |                238 |   2 |   50 |     30 |  54 |   383 | 11,906 |
| Capital Projects                    |                201 |   1 |    6 |      4 |   7 |    48 |  1,223 |
| City Facilities                     |                 19 |   1 |    3 |      1 |   6 |    27 |     55 |
| Government                          |                174 |   1 |    5 |      3 |   9 |    86 |    841 |
| Lights / Signals                    |                238 |   1 |   22 |     16 |  32 |   388 |  5,218 |
| Mowing / Weeds                      |                229 |   1 |   26 |     17 |  29 |   158 |  5,979 |
| Parks & Recreation                  |                160 |   1 |    8 |      5 |   8 |    46 |  1,270 |
| Property / Buildings / Construction |                236 |   1 |   61 |     36 | 105 | 1,219 | 14,502 |
| Public Health                       |                225 |   1 |   12 |      9 |  12 |    58 |  2,804 |
| Public Safety                       |                121 |   1 |    3 |      2 |   4 |    21 |    398 |
| Sidewalks / Curbs / Ditch           |                213 |   1 |   10 |      7 |  12 |   102 |  2,083 |
| Signs                               |                233 |   1 |   13 |      9 |  16 |   180 |  3,042 |
| Storm Water / Sewer                 |                237 |   1 |   26 |     21 |  22 |   129 |  6,263 |
| Streets / Roadways / Alleys         |                240 |   5 |  112 |     80 | 122 | 1,036 | 26,798 |
| Trash / Recycling                   |                239 |   1 |  144 |     93 | 237 | 3,355 | 34,344 |

#### About demographic and socioeconomic data

| Socioeconomic_Demographic                                         | Neighborhood_Count |    Min |    Mean |  Median |      SD |       Max |
|:------------------------------------------------------------------|-------------------:|-------:|--------:|--------:|--------:|----------:|
| Asian.alone                                                       |                240 |      0 |      26 |      10 |      39 |       330 |
| Black.or.African.American.alone                                   |                240 |      0 |     320 |     226 |     286 |     1,393 |
| Hispanic.or.Latino                                                |                240 |      0 |     107 |      74 |     107 |       769 |
| Median.home.value                                                 |                240 |  9,999 | 164,046 | 126,442 | 142,405 | 1,035,700 |
| Median.income                                                     |                240 | 14,615 |  58,877 |  51,874 |  33,941 |   250,001 |
| Number.of.Households                                              |                240 |    191 |     495 |     448 |     208 |     1,496 |
| Total.population.age.25+.years.with.a.bachelor’s.degree.or.higher |                240 |      6 |     288 |     224 |     242 |     1,501 |
| Total.Renter.Occupied                                             |                240 |      0 |     233 |     188 |     181 |     1,211 |
| Total.Vacant                                                      |                240 |      0 |      68 |      63 |      51 |       250 |
| White.alone                                                       |                240 |     10 |     649 |     595 |     501 |     2,360 |

### Classification based on 311 service categories

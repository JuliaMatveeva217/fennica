---
title: "Preprocessing overview"
author: "Helsinki Computational History Group (COMHIS)"
date: "2021-01-15"
output: markdown_document
---

# Preprocessing summary

The data spanning years 1575-1917 has been included and contains 990 documents (also other filter may apply depending on the data collection, see the source code for details.



## Specific fields

  * [Author info](author.md)
  * [Gender info](gender.md)
  * [Publisher info](publisher.md)
  * [Publication geography](publicationplace.md)
  * [Publication year info](publicationyear.md)
  * [Titles](title.md)  
  * [Page counts](pagecount.md)
  * [Physical dimension](dimension.md)    
  * [Document and subject topics](topic.md)
  * [Languages](language.md)


## Annotated documents

  * 1000 documents in the original raw data
  * 1000 documents in the final preprocessed data (100%)

Fraction of documents with data:


```
## Error in field_availability(df): could not find function "field_availability"
```

```
## Error in print(availability$plot): object 'availability' not found
```

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


```
## Error in arrange(., n): object 'availability' not found
```

```
## Error in tab[, c(1, 3, 2, 4, 5)]: incorrect number of dimensions
```

```
##            used  (Mb) gc trigger  (Mb)  max used   (Mb)
## Ncells  1822357  97.4    5677502 303.3   6189056  330.6
## Vcells 20505803 156.5   50180501 382.9 239223416 1825.2
```


## Field conversions

This documents the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of all summary tables is [here](output.tables/).

Brief description of the fields:

 * [Description of the original MARC fields](https://github.com/COMHIS/fennica/blob/master/inst/extdata/fieldnames.csv)

 * [Description of the preprocessed fields](https://github.com/COMHIS/fennica/blob/master/inst/extdata/fieldname_table.csv)


## Histograms of all entries for numeric variables


```
## Error in which(num): argument to 'which' is not logical
```

```
## Error in eval(expr, envir, enclos): object 'numeric.fields' not found
```


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.


```
## Error in which(fac): argument to 'which' is not logical
```

```
## Error in eval(expr, envir, enclos): object 'factor.fields' not found
```



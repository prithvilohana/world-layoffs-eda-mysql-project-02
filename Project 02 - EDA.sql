SELECT *
FROM layoffs_staging2;

SELECT COUNT(*)
FROM layoffs_staging2;

SELECT min(total_laid_off), min(percentage_laid_off)
FROM layoffs_staging2;

SELECT company, total_laid_off, `date`, percentage_laid_off, industry
FROM layoffs_staging2
WHERE total_laid_off = 3;

SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;

SELECT *
FROM layoffs_staging2
WHERE company = 'amazon';

SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;

SELECT SUM(total_laid_off)
FROM layoffs_staging2;

UPDATE layoffs_staging2
SET percentage_laid_off = 0.04
WHERE total_laid_off = 150
AND company = 'amazon';


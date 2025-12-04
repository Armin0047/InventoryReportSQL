# Inventory Aging Report (SQL)

این کوئری برای استخراج اطلاعات داروها و موجودی انبار طراحی شده است.  
- آخرین ورود (state=1) و خروج (state=6) هر کالا بررسی می‌شود  
- فاصله زمانی بین ورود و خروج محاسبه می‌شود  
- فقط کالاهایی که موجودی مثبت دارند نمایش داده می‌شوند  

## Features
- Calculate the time interval (in months) between last product entry and last product exit  
- Show only items with positive inventory  
- Link products to drug categories and groups for analytical reporting  

## کاربرد
این گزارش به مدیران انبار کمک می‌کند تا:
- میزان دپو کالاها را بررسی کنند  
- اقلام راکد را شناسایی کنند  
- تصمیمات بهتری برای مدیریت موجودی بگیرند  

## Use Case
This report helps warehouse managers to:
- Monitor stockpiled items  
- Identify stagnant products  
- Make better inventory management decisions  

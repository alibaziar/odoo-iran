FROM odoo:18.0

# کپی کردن ماژول‌های ایرانی به پوشه addons
COPY ./addons /mnt/extra-addons

# نصب احتمالی پکیج‌ها (اگر نیاز داری)
# RUN pip install -r /mnt/extra-addons/requirements.txt || true

# باز کردن پورت پیش‌فرض اودو
EXPOSE 8069

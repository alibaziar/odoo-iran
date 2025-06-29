FROM odoo:18

USER root
RUN pip3 install --upgrade pip && pip3 install -r /mnt/extra-addons/requirements.txt || true

# کپی ماژول‌های محلی
COPY ./addons /mnt/extra-addons

# تنظیمات odoo.conf
COPY ./odoo.conf /etc/odoo/odoo.conf

USER odoo

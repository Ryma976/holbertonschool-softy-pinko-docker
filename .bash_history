# 1. الانتقال إلى مجلد المستودع المخزن
cd ~/holbertonschool-softy-pinko-docker
# 2. تهيئة المستودع كـ Git Repository (لأنه فارغ)
git init
# 3. إنشاء المجلد task0 والملف Dockerfile
mkdir -p task0
cat << 'EOF' > task0/Dockerfile
FROM ubuntu:latest

RUN apt-get update
RUN apt-get upgrade -y

CMD ["echo", "Hello, World!"]
EOF

# 4. ضبط الفرع الرئيسي ليكون main
git branch -M main
# 5. ربط المجلد المحلي بمستودع GitHub
git remote remove origin 2>/dev/null
git remote add origin https://github.com/Ryma976/holbertonschool-softy-pinko-docker.git
# 6. إضافة الملفات والتأكيد
git add .
git commit -m "Task 0: Create Dockerfile with Ubuntu latest"
# 7. رفع الملفات إلى GitHub
git push -u origin main

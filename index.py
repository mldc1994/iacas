from flask import Flask, render_template, url_for, flash, redirect, request
from werkzeug import secure_filename
from psycopg2.extras import RealDictCursor
from datetime import date
from datetime import time
from datetime import datetime
import psycopg2, os

app = Flask(__name__)
UPLOAD_FOLDER = 'static/images'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
conn = psycopg2.connect("dbname='iacas' host='localhost' user='postgres' password='!p@ssword' port='5432'")

@app.route("/")
def home():
    cursor = conn.cursor(cursor_factory=RealDictCursor)
    psql = "select author, title, content, datee, imagee, id from blog ORDER BY datee2 DESC, datee2 DESC"
    cursor.execute(psql)
    posts = cursor.fetchall()[:3]
    return render_template('home.html', posts=posts)

@app.route("/about")
def about():
    return render_template('about.html', title='About')

@app.route("/create", methods=['GET','POST'])
def createblog():
    if request.method == 'POST':
        now = datetime.now()
        cursor = conn.cursor()
        author = request.form['author']
        title = request.form['title']
        content = request.form['content']
        datee = now.strftime("%x")
        datee2 = now.strftime("%X")
        file = request.files['imagee']
        if file:
            filename = secure_filename(file.filename)
            file.save(os.path.join(app.config['UPLOAD_FOLDER'],filename))
        FileImage = file.filename
        image_string = format(FileImage)
        psql = 'INSERT INTO blog (author, title, content, datee, datee2, imagee) VALUES (%s,%s,%s,%s,%s,%s)'
        data = (author, title, content, datee, datee2, image_string)
        cursor.execute(psql, data)
        conn.commit()
        cursor.close()
        return "<script>alert('Inserted Successfully!');window.location.href='/';</script>"
    return render_template('blogdb.html', title='create a blog')

@app.route("/readmore/<id>", methods=['GET'])
def readmore(id):
    cursor = conn.cursor(cursor_factory=RealDictCursor)
    psql = "select * from blog where id=%s"
    cursor.execute(psql, id)
    blog = cursor.fetchone()
    return render_template('blogtemplate.html', title="Blog", blog=blog)

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")    

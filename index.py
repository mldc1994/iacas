from flask import Flask, render_template, request
from werkzeug import secure_filename
import MySQLdb.cursors, os
from datetime import datetime

app = Flask(__name__)
UPLOAD_FOLDER = 'static/images'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
db = MySQLdb.connect(host='localhost', db='trymysql', user='marc', passwd='123')

@app.route("/")
def home():
    dict_cursor = db.cursor(MySQLdb.cursors.DictCursor)
    dict_cursor.execute("select author, title, content, datee, imagee, id from blog ORDER BY datee2 DESC, datee2 DESC")
    posts = dict_cursor.fetchall()[:3]
    return render_template('home.html', posts=posts)

@app.route("/about")
def about():
    return render_template('about.html', title='About')

@app.route("/create", methods=['GET','POST'])
def createblog():
    if request.method == 'POST':
        now = datetime.now()
        req = request.form
        dict_cursor = db.cursor(MySQLdb.cursors.DictCursor)
        author = req['author']
        title = req['title']
        content = req['content']
        datee = now.strftime("%x")
        datee2 = now.strftime("%X")
        file = request.files['imagee']
        if file:
            filename = secure_filename(file.filename)
            file.save(os.path.join(app.config['UPLOAD_FOLDER'],filename))
        FileImage = file.filename
        image_string = format(FileImage)
        dict_cursor.execute('INSERT INTO blog (author, title, content, datee, datee2, imagee) VALUES (%s,%s,%s,%s,%s,%s)', (author, title, content, datee, datee2, image_string))
        db.commit()
        dict_cursor.close()
        return "<script>alert('Inserted Successfully!');window.location.href='/';</script>"
    return render_template('blogdb.html', title='create a blog')

@app.route("/readmore/<id>", methods=['GET'])
def readmore(id):
    dict_cursor = db.cursor(MySQLdb.cursors.DictCursor)
    dict_cursor.execute("select * from blog where id=%s")
    blog = dict_cursor.fetchone()
    return render_template('blogtemplate.html', title="Blog", blog=blog)

if __name__ == "__main__":
    app.run(debug=True)    

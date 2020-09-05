from flask import flask, render_template 

app = FLASK(__name__) 

@app.route('/')
@app.route('/index')
def index():



if __name__ == "__main__":
	app.run(debug=True)
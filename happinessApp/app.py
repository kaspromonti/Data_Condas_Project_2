from flask import Flask, render_template, jsonify, request
from sqlalchemy.ext.automap import automap_base 
from sqlalchemy.ext.declarative import declarative_base 
from sqlalchemy import create_engine
from sqlalchemy.orm import Session

app = Flask(__name__) 

engine = create_engine(f"postgresql+psycopg2://postgres:postgres@localhost/happiness_db")
Base = automap_base()
Base.prepare(engine,reflect=True)
CountryReference = Base.classes.countryreference
Alcohol = Base.classes.alcohol
Fitness = Base.classes.fitness 
Happiness = Base.classes.happiness 
Healthcare = Base.classes.healthcare 
Marijuana = Base.classes.marijuana
Sports = Base.classes.sports
Workhours = Base.classes.workhours

@app.route('/')
@app.route('/index')
def index():
	return render_template('index.html')

@app.route("/chlorandlinedata", methods=["GET","POST"]) 
def chlorandlinedata(): 
	session = Session(engine)
	sel = [CountryReference.countryname,Happiness.happinessrating,Happiness.year]

	if request.method == "POST":
		year = returnData[0]

		data = session.query(*sel).\
					filter(CountryReference.incountryid == Happiness.excountryid).\
					filter(Happiness.year == year).all()
	else: 
		data = session.query(*sel).\
					filter(CountryReference.incountryid == Happiness.excountryid).all()

	session.close()
	return jsonify(data)
@app.route("/scatterdata", methods=["GET","POST"])
def scatterdata():
	session = Session(engine)
	sel = [CountryReference.countryname, CountryReference.region, Happiness.happinessrating,
			   Happiness.gdppercapita, Happiness.socialsupport, Happiness.healthylifeexpectancy, 
			   Happiness.freedomlifechoice, Happiness.generosity, Happiness.perceptionofcorruption, 
			   Happiness.dystopiaresidual, Happiness.year]

	if request.method == "POST":
		year = returnData[0]

		data = session.query(*sel).\
					  filter(CountryReference.incountryid == Happiness.excountryid).\
					  filter(Happiness.year == year).all()
	else: 
		data = session.query(*sel).\
					filter(CountryReference.incountryid == Happiness.excountryid).all()
	
	session.close()
	return jsonify(data)



if __name__ == "__main__":
	app.run(debug=True)
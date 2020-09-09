from flask import Flask, render_template, jsonify, request
from sqlalchemy.ext.automap import automap_base 
from sqlalchemy.ext.declarative import declarative_base 
from sqlalchemy import create_engine, and_
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
UserData = Base.classes.userdata

@app.route('/')
@app.route('/index')
def index():
	return render_template('index.html')

@app.route("/linedata", methods=["GET","POST"]) 
def chorandlinedata(): 
	session = Session(engine)
	sel = [CountryReference.countryname,Happiness.happinessrating,Happiness.year]

	if request.method == "POST":
		year = request.get_json()
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
		year = request.get_json()
		data = session.query(*sel).\
					  filter(CountryReference.incountryid == Happiness.excountryid).\
					  filter(Happiness.year == year).all()
	else: 
		data = session.query(*sel).\
					filter(CountryReference.incountryid == Happiness.excountryid).all()
	
	session.close()
	return jsonify(data)

@app.route("/survey", methods=["GET", "POST"])
def survey():
	session = Session(engine)
	if request.method == "POST":
		if request.form.get("firstname") != "":
			fName = request.form.get("firstname") 
			lName = request.form.get("lastname")
			zipcode = request.form.get("zipcode")
			email = request.form.get("email")
			gender = request.form.get("gender")
			age = request.form.get("age")
			income = request.form.get("income")
			region = request.form.get("region")
			sport = request.form.get("sports")

			alcohol = ""
			if request.form.get("beer") != None:
				alcohol = "beer"
			elif request.form.get("wine") != None:
				alcohol = "wine"
			elif request.form.get("spirits") != None:
				alcohol = "spirits"
			elif request.form.get("dontdrink") != None:
				alcohol = "none"

			fit = ""
			if request.form.get("fitextreme") != None:
				fit = "Extremely Important"
			elif request.form.get("fitsomewhat") != None:
				fit = "Somewhat Important"
			elif request.form.get("fitnot") != None:
				fit = "Not Very Important"

			maryMed = ""
			if request.form.get("medlegal") != None:
				maryMed = "Legal"
			elif request.form.get("meddecrim") != None:
				maryMed = "Decriminalize"
			elif request.form.get("medillegal") != None:
				maryMed = "Illegal"

			maryRec = ""
			if request.form.get("reclegal") != None:
				maryRec = "Legal"
			elif request.form.get("recdecrim") != None:
				maryRec = "Decriminalize"
			elif request.form.get("recillegal") != None:
				maryRec = "Illegal"

			healthcare = "" 
			if request.form.get("htrue") != None:
				healthcare = True
			else:
				healthcare = False

			hoursworked = request.form.get("workhours")

			gdppercapita = ""
			if request.form.get("gdpextreme") != None:
				gdppercapita = "Extremely Impactful"
			elif request.form.get("gdpsomewhat") != None:
				gdppercapita = "Somewhat Impactful"
			elif request.form.get("gdpnot") != None:
				gdppercapita = "Not Very Impactful"

			social = ""
			if request.form.get("socialextreme") != None:
				social = "Extremely Impactful"
			elif request.form.get("socialsomewhat") != None:
				social = "Somewhat Impactful"
			elif request.form.get("socialnot") != None:
				social = "Not Very Impactful"

			lifechoices = ""
			if request.form.get("lifeextreme") != None:
				lifechoices = "Extremely Impactful"
			elif request.form.get("lifesomewhat") != None:
				lifechoices = "Somewhat Impactful"
			elif request.form.get("lifenot") != None:
				lifechoices = "Not Very Impactful"

			generosity = ""
			if request.form.get("genextreme") != None:
				generosity = "Extremely Impactful"
			elif request.form.get("gensomewhat") != None:
				generosity = "Somewhat Impactful"
			elif request.form.get("gennot") != None:
				generosity = "Not Very Impactful"

			govTrust = ""
			if request.form.get("govextreme") != None:
				govTrust  = "Extremely Impactful"
			elif request.form.get("govsomewhat") != None:
				govTrust  = "Somewhat Impactful"
			elif request.form.get("govnot") != None:
				govTrust  = "Not Very Impactful"




			newUserData = UserData(firstname=fName,lastname=lName,zipcode=zipcode, email=email, gender=gender,age=age,
								   income=income, favregion=region,favsport=sport,favalcohol=alcohol,fitness=fit, 
								   marijuanamedical=maryMed, marijuanarec=maryRec, unihealthcare=healthcare, hoursworked=hoursworked, 
								   gdppercap=gdppercapita, socialenv=social, lifechoices=lifechoices,generosity=generosity, govtrust=govTrust)
			session.add(newUserData)
			session.commit()

	session.close()
	return render_template("survey.html")

@app.route("/calculatescore") 
def calculatescore():
	session = Session(engine)

	countryDict = {}
	countries = session.query(CountryReference.countryname).all()
	for row in countries: 
		countryDict.update({row[0]:0})

	userData = session.query(UserData).\
					filter(UserData.id == 1).first()

	countryDict = calculateAlcoholScore(userData, countryDict)
	countryDict = calculateFitnessScore(userData, countryDict)

	session.close()
	return jsonify(countryDict)

def calculateAlcoholScore(userData, countryDict):
	session = Session(engine)

	if userData.favalcohol == "beer":
		countries = session.query(CountryReference.countryname, Alcohol.beer).\
						   filter(CountryReference.incountryid == Alcohol.excountryid).\
						   filter(and_(Alcohol.beer > Alcohol.wine, Alcohol.beer > Alcohol.spirits)).all()

		for row in countries: 
			if row[1] > 90: 
				score = countryDict[row[0]]
				score += 10 
				countryDict.update({row[0]:score})
			elif row[1] > 70: 
				score = countryDict[row[0]]
				score += 5
				countryDict.update({row[0]:score})
			elif row[1] > 55: 
				score = countryDict[row[0]]
				score += 1
				countryDict.update({row[0]:score})

	elif userData.favalcohol == "wine":
		countries = session.query(CountryReference.countryname, Alcohol.wine).\
						   filter(CountryReference.incountryid == Alcohol.excountryid).\
						   filter(and_(Alcohol.wine > Alcohol.beer, Alcohol.wine > Alcohol.spirits)).all()

		for row in countries: 
			if row[1] > 90: 
				score = countryDict[row[0]]
				score += 10 
				countryDict.update({row[0]:score})
			elif row[1] > 70: 
				score = countryDict[row[0]]
				score += 5
				countryDict.update({row[0]:score})
			elif row[1] > 55: 
				score = countryDict[row[0]]
				score += 1
				countryDict.update({row[0]:score})

	elif userData.favalcohol == "spirits":
		countries = session.query(CountryReference.countryname, Alcohol.spirits).\
						   filter(CountryReference.incountryid == Alcohol.excountryid).\
						   filter(and_(Alcohol.spirits > Alcohol.beer, Alcohol.spirits > Alcohol.wine)).all()

		for row in countries: 
			if row[1] > 90: 
				score = countryDict[row[0]]
				score += 10 
				countryDict.update({row[0]:score})
			elif row[1] > 70: 
				score = countryDict[row[0]]
				score += 5
				countryDict.update({row[0]:score})
			elif row[1] > 55: 
				score = countryDict[row[0]]
				score += 1
				countryDict.update({row[0]:score})
	return countryDict

def calculateFitnessScore(userData, countryDict): 
	session = Session(engine)

	if userData.fitness == "Extremely Important":
		countries = session.query(CountryReference.countryname, Fitness.healthgrade).\
						   filter(CountryReference.incountryid == Fitness.excountryid).\
						   filter(Fitness.healthgrade > 90).all()
		for row in countries: 
			score = countryDict[row[0]] 
			score += 10 
			countryDict.update({row[0]:score})
	elif userData.fitness == "Somewhat Important": 
		countries = session.query(CountryReference.countryname, Fitness.healthgrade).\
						   filter(CountryReference.incountryid == Fitness.excountryid).\
						   filter(and_(Fitness.healthgrade > 70, Fitness.healthgrade < 90)).all()
		for row in countries: 
			score = countryDict[row[0]] 
			score += 5
			countryDict.update({row[0]:score})

	elif userData.fitness == "Not Very Important": 
		for key in countryDict:
			score = countryDict[key]
			score += 1
			countryDict.update({key:score})
	return countryDict

if __name__ == "__main__":
	app.run(debug=True)
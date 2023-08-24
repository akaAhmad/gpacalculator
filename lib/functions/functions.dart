int i = 0;
int numMaterials = 0;
double maxDegree = 0.0; //max degree
List<double> degree = []; // to store dgree you submit
List<int> hours = []; //to store hours you submit
List<String> grades = [];
List<double> points = [];

void reset() {
  i = 0;
  numMaterials = 0;
  maxDegree = 0.0;
  degree.clear();
  hours.clear();
  grades.clear();
  points.clear();
  
}

double checkPoints(double deg) {
  if (deg < 50) {
    return 0.0;
  } else if (deg >= 50 && deg < 60) {
    return 2.0;
  } else if (deg >= 60 && deg < 65) {
    return 2.2;
  } else if (deg >= 65 && deg < 70) {
    return 2.4;
  } else if (deg >= 70 && deg < 75) {
    return 2.6;
  } else if (deg >= 75 && deg < 80) {
    return 3.0;
  } else if (deg >= 80 && deg < 85) {
    return 3.3;
  } else if (deg >= 85 && deg < 90) {
    return 3.6;
  } else if (deg >= 90) {
    return 4.0;
  }
  return 0.0;
}

double calcInPrecent(double deg, double maxDeg) {
  return ((deg * 100) / maxDeg);
}

String checkGrade(double deg) {
  if (deg < 50) {
    return "F";
  } else if (deg >= 50 && deg < 60) {
    return "D";
  } else if (deg >= 60 && deg < 65) {
    return "D+";
  } else if (deg >= 65 && deg < 70) {
    return "C";
  } else if (deg >= 70 && deg < 75) {
    return "C+";
  } else if (deg >= 75 && deg < 80) {
    return "B";
  } else if (deg >= 80 && deg < 85) {
    return "B+";
  } else if (deg >= 85 && deg < 90) {
    return "A";
  } else if (deg >= 90) {
    return "A+";
  }
  return " ";
}

double calcTotalDegree(List<double> g) {
  double t = 0;
  for (int i = 0; i < g.length; i++) {
    t += g[i];
  }
  double ans = calcInPrecent(t, (maxDegree * numMaterials));
  ans = (ans * 100).floorToDouble() / 100;
  return ans;
}

int calcTotalHours(List<int> h) {
  int t = 0;
  for (int i = 0; i < h.length; i++) {
    t += h[i];
  }
  return t;
}

double calcResult(List<double> pt, List<int> hrs) {
  double totalPoints = 0.0;
  int totalHours = 0;
  for (int i = 0; i < pt.length; i++) {
    totalPoints += (pt[i] * hrs[i]);
    totalHours += hrs[i];
  }
  double ans = ((totalPoints / totalHours) * 100).floorToDouble() / 100;
  return ans;
}

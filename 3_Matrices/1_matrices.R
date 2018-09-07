
# There are three ways (functions) to create a matrix:

# ---------- matrix()--------------
?matrix(data, nrow = rows, ncol = cols)

# First we create our data
my.data <- 1:20
my.data

# Creation of the matrix (if not specified the matrix is filled by columns)
A <- matrix(my.data, nrow = 4, ncol = 5)
A

# Creation of the matrix by rows
B <- matrix(my.data, nrow = 4, ncol = 5, byrow = T)
B

# Get the value 10 from the matrix
B[2,5]



# ------------------ rbind() -----------------
?rbind()

# We create three vectors
v1 <- c("I", "Love","Soccer")
v2 <- c("Is", "So","Nice")
v3 <- c(1,2,3)

M <- rbind(v1, v2, v3)
M

# ---------------- cbind() ------------------
c1 <- 1:5
c2 <- -5:-10

D <- cbind(c1, c2)
D

# ---------------- rename the dimensions of a matrix -----------
colnames(D) <- c("alpha", "beta")
rownames(D) <- c("a", "b", "d", "e", "f","g")
D

# Now we try to get some value from the renamed matrix
D["a", "beta"]

D[,"beta"]
# ------------------- More complex matrix -----------------

#Seasons
Seasons <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")

#Players
Players <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")

#Salaries
KobeBryant_Salary <- c(15946875,17718750,19490625,21262500,23034375,24806250,25244493,27849149,30453805,23500000)
JoeJohnson_Salary <- c(12000000,12744189,13488377,14232567,14976754,16324500,18038573,19752645,21466718,23180790)
LeBronJames_Salary <- c(4621800,5828090,13041250,14410581,15779912,14500000,16022500,17545000,19067500,20644400)
CarmeloAnthony_Salary <- c(3713640,4694041,13041250,14410581,15779912,17149243,18518574,19450000,22407474,22458000)
DwightHoward_Salary <- c(4493160,4806720,6061274,13758000,15202590,16647180,18091770,19536360,20513178,21436271)
ChrisBosh_Salary <- c(3348000,4235220,12455000,14410581,15779912,14500000,16022500,17545000,19067500,20644400)
ChrisPaul_Salary <- c(3144240,3380160,3615960,4574189,13520500,14940153,16359805,17779458,18668431,20068563)
KevinDurant_Salary <- c(0,0,4171200,4484040,4796880,6053663,15506632,16669630,17832627,18995624)
DerrickRose_Salary <- c(0,0,0,4822800,5184480,5546160,6993708,16402500,17632688,18862875)
DwayneWade_Salary <- c(3031920,3841443,13041250,14410581,15779912,14200000,15691000,17182000,18673000,15000000)


# Creation of the matrix using rbind() function
Salary <- rbind(KobeBryant_Salary, JoeJohnson_Salary, LeBronJames_Salary, CarmeloAnthony_Salary, DwightHoward_Salary, ChrisBosh_Salary, ChrisPaul_Salary, KevinDurant_Salary, DerrickRose_Salary, DwayneWade_Salary)
# Removing the previouse objects 
rm(KobeBryant_Salary, JoeJohnson_Salary, CarmeloAnthony_Salary, DwightHoward_Salary, ChrisBosh_Salary, LeBronJames_Salary, ChrisPaul_Salary, DerrickRose_Salary, DwayneWade_Salary, KevinDurant_Salary)
# Rename columns and rows
colnames(Salary) <- Seasons
rownames(Salary) <- Players

Salary

# Access the matrix

# First row, second column
Salary[1,2]

# Third row , third column
Salary[3,3]

# Only the first row
Salary[1,]

# Only the first column
Salary[,1]






# Copyright 2015, Jernej Kovacic
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


#
# A short demo of "public" functions in the file 'stepwise.R'
#

path <- "";              # Append a path to 'rfile' if necessary
rfile <- "stepwise.R";   # The actual name of the file

# Load the "library" file
source( paste(path, rfile, sep="") );

# Load the data frame
data(mtcars);
dframe <- mtcars;
resp <- "mpg";
inc <- list("drat", "vs");

cat(" = = = Forward selection, adjusted R^2 as criteria = = =\n");

cat("\nA list of \"significant\" variables, with \'drat\' and \'vs\' required:\n");
mdl <- stepwise.fwd.adjR2(dframe, resp, inc);
print(mdl);

cat("A fitted model with no required expl. variables:\n");
mdl <- stepwise.fwd.adjR2(dframe, resp, ret.expl.vars=FALSE);
print(mdl);
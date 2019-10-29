
# coby

### Clone the project :

-  Make sure using the option "--recursive" when cloning the project, this allows include the submodules

   `  git clone -b coby-jaxy --recursive https://github.com/ecoinfo-ore/coby.git . `
  
  [![Watch the video](https://user-images.githubusercontent.com/7684497/36728847-7668397a-1bc2-11e8-9050-27858bb3b343.png)](https://www.youtube.com/embed/ruZTuK-ui2s)

----------------------------------------------------------------------------------

## 1. Coby standard_build ( 4 Options ) 

### if you want to :

#### 1.1 Consult help Install : 

 ` ./01_coby_standard_builder.sh help `
 
#### 1.2 Generate the Only Coby Package ( without downloading and compiling the java projects )

   `  ./01_coby_standard_builder.sh `
    
  - to **install libs**, just run the command : 
   
   `  ./coby_standard_bin/pipeline/scripts/00_install_libs.sh `
   

#### 1.3 install only coby

   `  ./01_coby_standard_builder.sh -i coby `


#### 1.4 install only jaxy  ( secured service web )

   `  ./01_coby_standard_builder.sh -i jaxy  `
   
#### 1.5 install  both coby & jaxy 

   `  ./01_coby_standard_builder.sh -i coby jaxy  `
    
      
 <p><a href="https://www.youtube.com/embed/l08JIPcqgrI" rel="nofollow"><img src="https://user-images.githubusercontent.com/7684497/36728847-7668397a-1bc2-11e8-9050-27858bb3b343.png" alt="Intro" data-canonical-src="https://i.ytimg.com/vi/20KVZ0ZnCl4/mqdefault.jpg" style="max-width:10%;"></a></p>
  
   
#####  Coby standard_build Example :

-  Make sure Copy **"SI"** + **"orchestrators"** to the **coby_standard_bin directory** ( created by the previous script )

   `   cp -r src/SI/ coby_standard_bin/pipeline/ `
   
   `   cp -r src/orchestrators/ coby_standard_bin/pipeline/`
   
   
   `  ./coby_standard_bin/pipeline/orchestrators/synthesis_extractor_entry.sh `  

----------------------------------------------------------------------------------

### 2. Coby docker_build :

   `  ./02_coby_docker_builder.sh `
   
#####   Example : Run coby_docker using orcherstrators ( located in src ) + SI modelization ( locate in src ) :
  
   `  ./docker_runner.sh `
   
----------------------------------------------------------------------------------

### 3. Example of how calling scripts that are provided by coby Using Coby standard_build :

#### - 06_gen_mapping.sh

-  Without CSV

   ` ./coby_standard_bin/pipeline/scripts/06_gen_mapping.sh input=$(pwd)/Demo/Demo_1/ output=$(pwd)/Demo/Demo_1/mapping.obda `
-  USING CSV 

   ` ./coby_standard_bin/pipeline/scripts/06_gen_mapping.sh input=$(pwd)/Demo/Demo_2/physicochimie/ output=$(pwd)/Demo/Demo_2/mapping.obda class="physico chimie" column="12" csvFile="$(pwd)/Demo/Demo_2/csv/semantic_si.csv"
 `
   


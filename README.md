# 1. Metro 2022
## Purpose(What we have to answer)
- 사람이 많을수록 지하철 역의 갯수도 많을까?
- 도시를 건설할 때 지하철 몇 개의 역을 놓아야할까?(세계 표준)
- 소비자의 입장에선 역의 갯수가 적을 수록 빨리가고, 철도 공사의 입장에선 많으면 소득이 많아진다. 몇 개가 국제 표준일까?
- 송도와 비교

### EDA - 변수 summary로 파악 후 과정 설계

### 1. Data Wrangling - (group_by 국가) 인구 수, 인구 밀도와 도시에 있는 지하철 역의 갯수 데이터 정제

### 2. Data Visualization - 국가 별 데이터 비교 

### 3. Linear regression -  lm function으로 '전 세계에는 x명의 사람일 때 y개의 역이 있음'

### 4. statistical inference - 송도와 비교, 'x 명당 n개가 국제 표준이다.' (statistical inference)적용해서 점검 (신뢰구간, bootstrap)

### 5. Conclusion - 지하철역이 많은(또는 적은)편이다.

### 6. Interactive Visualization & Dashboard - 송도, 국가 별 데이터, 국제 표준과 비교한 statistical inference 포함한 dashboard 작성

## Data
Central cities population
- https://worldpopulationreview.com/world-cities
- The number of stations in central cities
- Population density of central cities

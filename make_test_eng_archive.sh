# From within the hg eng_archive repo
# source make_test_eng_archive.csh

export ENG_ARCHIVE=$PWD/test/eng_archive
mkdir -p test/eng_archive
rm -rf test/eng_archive/*

rm -f test/make_eng_archive.log
touch test/make_eng_archive.log

# To make the data from scratch use the following.  BUT NORMALLY just use the
# existing copy of the flight eng archive as the baseline start point.

# echo "Making regr data..."
# ./make_regr_data.py --start 2012:290 --stop 2012:300 --data-root test/eng_archive >>& test/make_eng_archive.log
# 
# echo "Tarring..."
# cd test
# tar zcf eng_archive.tar.gz eng_archive
# cd ..

cd test
tar xvf /proj/sot/ska/data/eng_archive/regr/flight_eng_archive.tar.gz
cd ..

CONTENTS="--content=acis2eng --content=acis3eng --content=acisdeahk --content=ccdm4eng --content=dp_acispow128 --content=orbitephem0 --content=simcoor --content=thm1eng"
DATAROOT="--data-root=test/eng_archive"
UPDATE_OPTS="$DATAROOT $CONTENTS"

echo "Updating archive..."
./update_archive.py --date-now 2012:301 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:302 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:303 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:304 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:305 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:306 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:307 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:308 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:309 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:310 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:311 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:312 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:313 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:314 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:315 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:316 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:317 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:318 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:319 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1
./update_archive.py --date-now 2012:320 $UPDATE_OPTS >> test/make_eng_archive.log 2>&1




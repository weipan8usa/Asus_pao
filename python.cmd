sudo emerge dev-python/pip --ask
/usr/portage/profiles/base/make.defaults:PYTHON_TARGETS="python3_8"
python -m pip install pip --user
python -m pip install --upgrade pip
python -m pip install librosa --user
pip install librosa --user
pip list --outdated
pip install --upgrade --user decorator
python3 -c "import sys; print('\n'.join(sys.path))"
#export PYTHONPATH=/usr/lib/python3.9/site-packages:${PYTHONPATH}


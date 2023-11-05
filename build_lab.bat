docker build --tag urfum_mlops_3_1/base-image .

docker build --tag urfum_mlops_3_1/data-srv ./data_server
docker run -itd -p 2255:22 -v .\data_folder:/opt/datasets --network="bridge" urfum_mlops_3_1/data-srv:latest

docker build --tag urfum_mlops_3_1/ml-srv ./ml_server
docker run -itd -p 8890:8888 -v .\project_folder:/home/ml/projects --network="bridge" urfum_mlops_3_1/ml-srv:latest jupyter lab /home/ml/projects --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.password='' --NotebookApp.token=''

echo ""
echo "Lab build complete!"
echo ""
echo "Data-server ssh: data@localhost -p 2255 pass: data"
echo "!!! CHANGE PASSWORDS AFTER LOGIN !!!"

echo "ML-server jupyter: localhost:8890"

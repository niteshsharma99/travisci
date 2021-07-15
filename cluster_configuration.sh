#curl https://sdk.cloud.google.com | bash > /dev/null;
#source $HOME/google-cloud-sdk/path.bash.inc
#gcloud components update kubectl
#gcloud auth activate-service-account --key-file  gcp-credentials.json 
#gcloud container clusters get-credentials my-k8s-cluster --zone us-central1-c --project nitesh-project-1

echo "-------------------------"
echo "Installing gcloud CLI "
curl https://sdk.cloud.google.com | bash > /dev/null;
source $HOME/google-cloud-sdk/path.bash.inc
gcloud components update kubectl
echo "--------------------------"
echo "--------------------------"

echo "-------------------------"
echo "Installing Kubectl....."
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
echo "-------------------------"

echo "------------------------"
echo "setup cluster..........."
gcloud auth activate-service-account --key-file gcp-credentials.json 
gcloud container clusters get-credentials my-k8s-cluster --zone us-central1-c --project nitesh-project-1
gcloud config set project project-nitesh1
echo "--------------------------"
echo "--------------------------"

 

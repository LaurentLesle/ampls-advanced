function error {
    local parent_lineno="$1"
    local message="$2"
    local code="${3:-1}"
    local line_message=""
    local source="${3:-${BASH_SOURCE[1]}}"
    if [ "$parent_lineno" != "" ]; then
        line_message="on or near line ${parent_lineno}"
    fi

    if [[ -n "$message" ]]; then
        error_message="\e[41mError $source $line_message: ${message}; exiting with status ${code}\e[0m"
    else
        error_message="\e[41mError $source $line_message; exiting with status ${code}\e[0m"
    fi
    echo >&2 -e ${error_message}
    echo ""

    exit ${code}
}


function tf_execute {
  local var_obj=""
  var_obj="$1"
  action=$2

  IFS=',' read -r lz_path key <<< "$var_obj"

  /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
    -var-folder "$lz_path" \
    -tfstate $key.tfstate \
    -env scp \
    -p ${TF_DATA_DIR}/$key.tfplan \
    -a plan ${action}

  /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
    -var-folder "$lz_path" \
    -tfstate $key.tfstate \
    -env scp \
    -p ${TF_DATA_DIR}/$key.tfplan \
    -a apply
}

function deploy {
  for stage in "${global[@]}"; do
    tf_execute $stage ${action}
  done

  for stage in "${uksouth[@]}"; do
    tf_execute $stage ${action}
  done

  for stage in "${eastasia[@]}"; do
    tf_execute $stage ${action}
  done

  for stage in "${applz[@]}"; do
    tf_execute $stage ${action}
  done

}

function destroy {

  length=${#applz[@]}
  # Loop through the array indices in reverse
  for ((i = length - 1; i >= 0; i--)); do
    stage="${applz[i]}"
    tf_execute $stage ${action}
  done

  length=${#eastasia[@]}
  # Loop through the array indices in reverse
  for ((i = length - 1; i >= 0; i--)); do
    stage="${eastasia[i]}"
    tf_execute $stage ${action}
  done

  length=${#uksouth[@]}
  # Loop through the array indices in reverse
  for ((i = length - 1; i >= 0; i--)); do
    stage="${uksouth[i]}"
    tf_execute $stage ${action}
  done

  length=${#global[@]}
  # Loop through the array indices in reverse
  for ((i = length - 1; i >= 0; i--)); do
    stage="${global[i]}"
    tf_execute $stage ${action}
  done

}

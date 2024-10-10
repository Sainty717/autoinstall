
**1. Current CPD version  
4.8

**2. Target CPD version  
  
5.0.3 (or latest)

**3. Current OCP version  
```
Client Version: 4.8.0-202204101845.p0.g41ff67e.assembly.stream-41ff67e
Server Version: 4.10.62
Kubernetes Version: v1.23.17+16bcd69
```


Check the OpenShift cluster version with oc client  _`oc get clusterversion`  
  
_**4.****Target OCP version  Latest Supported 4.15
  
NAME      VERSION   AVAILABLE   PROGRESSING   SINCE   STATUS
version   4.10.62   True        False         462d    Error while reconciling 4.10.62: the cluster operator monitoring has not yet successfully rolled out



**5. Current storage type and version (ODF/OCS, Fusion Data Foundation, Spectrum Scale, Portworx, NFS, etc)  
  
**

1) If the storage is ODF (renamed from OCS), get more details of the ODF storage with the command:

_`oc describe cephcluster ocs-storagecluster-cephcluster -n openshift-storage`  

``` [root@e1n1 ~]# clear
[root@e1n1 ~]# oc describe cephcluster ocs-storagecluster-cephcluster -n openshift-storage
Name:         ocs-storagecluster-cephcluster
Namespace:    openshift-storage
Labels:       app=ocs-storagecluster
Annotations:  <none>
API Version:  ceph.rook.io/v1
Kind:         CephCluster
Metadata:
  Creation Timestamp:  2022-03-03T19:26:53Z
  Finalizers:
    cephcluster.ceph.rook.io
  Generation:  5
  Managed Fields:
    API Version:  ceph.rook.io/v1
    Fields Type:  FieldsV1
    fieldsV1:
      f:metadata:
        f:labels:
          .:
          f:app:
        f:ownerReferences:
          .:
          k:{"uid":"bda35bb1-1279-47f4-9945-6caf58721a08"}:
      f:spec:
        .:
        f:cephVersion:
          .:
          f:image:
        f:cleanupPolicy:
          .:
          f:sanitizeDisks:
        f:continueUpgradeAfterChecksEvenIfNotHealthy:
        f:crashCollector:
        f:dashboard:
        f:dataDirHostPath:
        f:disruptionManagement:
          .:
          f:machineDisruptionBudgetNamespace:
          f:managePodBudgets:
        f:external:
        f:healthCheck:
          .:
          f:daemonHealth:
            .:
            f:mon:
            f:osd:
            f:status:
        f:labels:
          .:
          f:monitoring:
            .:
            f:rook.io/managedBy:
        f:logCollector:
          .:
          f:enabled:
          f:maxLogSize:
          f:periodicity:
        f:mgr:
          .:
          f:modules:
        f:mon:
          .:
          f:count:
        f:monitoring:
          .:
          f:enabled:
          f:rulesNamespace:
        f:network:
        f:placement:
          .:
          f:all:
            .:
            f:nodeAffinity:
              .:
              f:requiredDuringSchedulingIgnoredDuringExecution:
                .:
                f:nodeSelectorTerms:
            f:tolerations:
          f:arbiter:
          f:mon:
            .:
            f:nodeAffinity:
              .:
              f:requiredDuringSchedulingIgnoredDuringExecution:
                .:
                f:nodeSelectorTerms:
            f:podAntiAffinity:
              .:
              f:preferredDuringSchedulingIgnoredDuringExecution:
        f:priorityClassNames:
          .:
          f:mgr:
          f:mon:
          f:osd:
        f:resources:
          .:
          f:mds:
          f:mgr:
            .:
            f:limits:
              .:
              f:cpu:
              f:memory:
            f:requests:
              .:
              f:cpu:
              f:memory:
          f:mon:
            .:
            f:limits:
              .:
              f:cpu:
              f:memory:
            f:requests:
              .:
              f:cpu:
              f:memory:
          f:rgw:
        f:security:
          .:
          f:kms:
        f:storage:
          .:
          f:storageClassDeviceSets:
    Manager:      ocs-operator
    Operation:    Update
    Time:         2023-07-06T12:02:08Z
    API Version:  ceph.rook.io/v1
    Fields Type:  FieldsV1
    fieldsV1:
      f:status:
        f:ceph:
          f:capacity:
            f:bytesAvailable:
            f:bytesTotal:
            f:bytesUsed:
            f:lastUpdated:
          f:health:
          f:lastChanged:
          f:lastChecked:
          f:previousHealth:
          f:versions:
            .:
            f:mds:
              .:
              f:ceph version 16.2.7-126.el8cp (fe0af61d104d48cb9d116cde6e593b5fc8c197e4) pacific (stable):
            f:mgr:
              .:
              f:ceph version 16.2.7-126.el8cp (fe0af61d104d48cb9d116cde6e593b5fc8c197e4) pacific (stable):
            f:mon:
              .:
              f:ceph version 16.2.7-126.el8cp (fe0af61d104d48cb9d116cde6e593b5fc8c197e4) pacific (stable):
            f:osd:
              .:
              f:ceph version 16.2.7-126.el8cp (fe0af61d104d48cb9d116cde6e593b5fc8c197e4) pacific (stable):
            f:overall:
              .:
              f:ceph version 16.2.7-126.el8cp (fe0af61d104d48cb9d116cde6e593b5fc8c197e4) pacific (stable):
        f:conditions:
        f:message:
        f:phase:
        f:state:
        f:version:
          f:image:
          f:version:
    Manager:      rook
    Operation:    Update
    Subresource:  status
    Time:         2024-10-09T06:17:40Z
  Owner References:
    API Version:           ocs.openshift.io/v1
    Block Owner Deletion:  true
    Controller:            true
    Kind:                  StorageCluster
    Name:                  ocs-storagecluster
    UID:                   bda35bb1-1279-47f4-9945-6caf58721a08
  Resource Version:        1821281637
  UID:                     e14d7842-eba3-483a-ae99-b44132779788
Spec:
  Ceph Version:
    Image:  registry.redhat.io/rhceph/rhceph-5-rhel8@sha256:fc25524ccb0ea78526257778ab54bfb1a25772b75fcc97df98eb06a0e67e1bf6
  Cleanup Policy:
    Sanitize Disks:
  Continue Upgrade After Checks Even If Not Healthy:  true
  Crash Collector:
  Dashboard:
  Data Dir Host Path:  /var/lib/rook
  Disruption Management:
    Machine Disruption Budget Namespace:  openshift-machine-api
    Manage Pod Budgets:                   true
  External:
  Health Check:
    Daemon Health:
      Mon:
      Osd:
      Status:
  Labels:
    Monitoring:
      rook.io/managedBy:  ocs-storagecluster
  Log Collector:
    Enabled:       true
    Max Log Size:  500Mi
    Periodicity:   daily
  Mgr:
    Modules:
      Enabled:  true
      Name:     pg_autoscaler
      Enabled:  true
      Name:     balancer
  Mon:
    Count:  3
  Monitoring:
    Enabled:          true
    Rules Namespace:  openshift-storage
  Network:
  Placement:
    All:
      Node Affinity:
        Required During Scheduling Ignored During Execution:
          Node Selector Terms:
            Match Expressions:
              Key:       cluster.ocs.openshift.io/openshift-storage
              Operator:  Exists
      Tolerations:
        Effect:    NoSchedule
        Key:       icp4data
        Operator:  Equal
        Value:     database-db2wh
        Effect:    NoSchedule
        Key:       icp4data
        Operator:  Equal
        Value:     database-db2oltp
        Effect:    NoSchedule
        Key:       icp4data
        Operator:  Equal
        Value:     database-db2eventstore
        Effect:    NoSchedule
        Key:       icp4data
        Operator:  Equal
        Value:     opsmanager-mongodb
        Effect:    NoSchedule
        Key:       icp4data
        Operator:  Equal
        Value:     database-mongodb
        Effect:    NoSchedule
        Key:       nps
        Operator:  Equal
        Value:     host
        Effect:    PreferNoSchedule
        Key:       nps
        Operator:  Equal
        Value:     host
        Effect:    NoExecute
        Key:       node.nodeos.io/disabled
        Operator:  Exists
    Arbiter:
      Tolerations:
        Effect:    NoSchedule
        Key:       node-role.kubernetes.io/master
        Operator:  Exists
    Mon:
      Node Affinity:
        Required During Scheduling Ignored During Execution:
          Node Selector Terms:
            Match Expressions:
              Key:       cluster.ocs.openshift.io/openshift-storage
              Operator:  Exists
      Pod Anti Affinity:
        Required During Scheduling Ignored During Execution:
          Label Selector:
            Match Expressions:
              Key:       app
              Operator:  In
              Values:
                rook-ceph-mon
          Topology Key:  topology.rook.io/rack
  Priority Class Names:
    Mgr:  system-node-critical
    Mon:  system-node-critical
    Osd:  system-node-critical
  Resources:
    Mds:
      Limits:
        Cpu:     3
        Memory:  8Gi
      Requests:
        Cpu:     3
        Memory:  8Gi
    Mgr:
      Limits:
        Cpu:     1
        Memory:  3Gi
      Requests:
        Cpu:     1
        Memory:  3Gi
    Mon:
      Limits:
        Cpu:     1
        Memory:  2Gi
      Requests:
        Cpu:     1
        Memory:  2Gi
    Rgw:
      Limits:
        Cpu:     2
        Memory:  4Gi
      Requests:
        Cpu:     2
        Memory:  4Gi
  Security:
    Kms:
  Storage:
    Storage Class Device Sets:
      Count:  12
      Name:   ocs-deviceset-0
      Placement:
        Node Affinity:
          Required During Scheduling Ignored During Execution:
            Node Selector Terms:
              Match Expressions:
                Key:       cluster.ocs.openshift.io/openshift-storage
                Operator:  Exists
        Tolerations:
          Effect:    NoSchedule
          Key:       icp4data
          Operator:  Equal
          Value:     database-db2wh
          Effect:    NoSchedule
          Key:       icp4data
          Operator:  Equal
          Value:     database-db2oltp
          Effect:    NoSchedule
          Key:       icp4data
          Operator:  Equal
          Value:     database-db2eventstore
          Effect:    NoSchedule
          Key:       icp4data
          Operator:  Equal
          Value:     opsmanager-mongodb
          Effect:    NoSchedule
```
  
_2) If the storage is Spectrum Scale, is the Spectrum Scale Container Native (with CSI driver) used? If yes, what's the version of the Spectrum Scale storage cluster (remote cluster)?

3) If the storage is Portwox, get more details of the Portworx storage with the command

`_PX_POD=$(kubectl get pods -l name=portworx -n kube-system -o jsonpath='{.items[0].metadata.name}')_`

_`kubectl exec $PX_POD -n kube-system -- /opt/pwx/bin/pxctl status`  
  
_**Note:**Separate license (Portworx Enterprise) is required starting from CP4D 4.54) If the storage is NFS, what's the version of the NFS protocol in use ? **6. Target storage type and version**  
  
**7. Number of CPD instances**  
How many CPD instances are sharing the same OCP cluster?  1
  

**8. List of CPD services (and version of each) installed in each CPD instance’s namespace**  
zen namespace 



1) If the current CPD version is **3.5.x**, get a list of all current CPD services and their versions with below command.  

`_cpd-cli status -n <cpd-namespace>_`

**Note:** You need to replace the placeholder accordingly when running this command.

2) If the current CPD version is **4.0.x** or above, get a list of all current CPD services and their versions with below command.  

Log into OCP

_`cpd-cli manage login-to-ocp / --username=${OCP_USERNAME} / --password=${OCP_PASSWORD} / --server=${OCP_URL}`_

or

`_cpd-cli manage login-to-ocp / --server=${OCP_URL} / --token=${OCP_TOKEN}_`

Get CPD components status

_`cpd-cli manage get-cr-status / --cpd_instance_ns=${PROJECT_CPD_INSTANCE}`_

``` Component           CR-kind              CR-name                         Namespace    Status      Version    Creationtimestamp     Reconciled-version       Operator-info
------------------  -------------------  ------------------------------  -----------  ----------  ---------  --------------------  -----------------------  ----------------------------------
cpfs                CommonService        zen-common-service              zen          Succeeded              2023-07-06T18:20:49Z  N/A                      N/A
zen                 ZenService           lite-cr                         zen          Completed   4.8.4      2023-07-06T18:11:55Z  4.8.4                    zen operator 1.8.4 build 21
cpd_platform        Ibmcpd               ibmcpd-cr                       zen          Completed   4.6.6      2023-07-06T18:09:07Z                           cpdPlatform operator 3.8.0 build 3
ccs                 CCS                  ccs-cr                          zen          InProgress  6.5.0      2023-07-06T23:12:55Z  6.5.0                    123
analyticsengine     AnalyticsEngine      analyticsengine-sample          zen          Completed   4.6.5      2023-07-07T10:39:39Z  4.6.5                    1507
datarefinery        DataRefinery         datarefinery-sample             zen          InProgress  6.5.0      2023-07-06T23:56:33Z                           744
mantaflow           MantaFlow            mantaflow-wkc                   zen          Completed   39.1.12    2023-07-07T13:46:02Z                           N/A
dmc                 Dmcaddon             dmc-addon                       zen          Completed   4.6.4      2023-07-07T00:59:21Z  N/A                      N/A
db2aaservice        Db2aaserviceService  db2aaservice-cr                 zen          Completed   4.6.4      2023-07-07T10:39:58Z  4.6.4+11.5.8.0-cn2+2039  4.6.4+11.5.8.0-cn2+2039
ws                  WS                   ws-cr                           zen          InProgress  6.5.0      2023-07-06T23:11:55Z  6.5.0                    20
spss                Spss                 spss-sample                     zen          InProgress  6.5.0      2023-07-12T15:49:46Z  6.5.0                    6.5.0+20230406.182943.12
rstudio             RStudioAddon         rstudio-cr                      zen          InProgress  6.5.0      2023-07-14T09:55:58Z  6.5.0                    27
wml                 WmlBase              wml-cr                          zen          InProgress  4.6.5      2023-07-12T14:27:23Z  4.6.5                    4.6.5-4816
wkc                 WKC                  wkc-cr                          zen          InProgress  4.6.5      2023-07-07T10:38:46Z  N/A                      N/A
dv                  DvService            dv-service                      zen          InProgress  2.0.4      2023-07-07T00:57:30Z  N/A                      N/A
cognos_analytics    CAService            ca-addon-cr                     zen          InProgress  23.5.0     2023-07-07T09:22:00Z  23.5.0                   23.5.0+20230412.184926.4166
datastage_ent       DataStage            datastage                       zen          Completed   4.6.6      2023-07-07T10:05:50Z  N/A                      N/A
datastage_ent_plus  DataStage            datastage                       zen          Completed   4.6.6      2023-07-07T10:05:50Z  N/A                      N/A
db2oltp             Db2oltpService       db2oltp-cr                      zen          Completed   4.6.4      2023-07-12T13:59:38Z  4.6.4+11.5.8.0-cn2+2039  4.6.4+11.5.8.0-cn2+2039
dods                DODS                 dods-cr                         zen          InProgress  6.5.0      2023-07-13T10:07:21Z                           6.5.0+b172
edb_cp4d            CPDEdbService        cpd-edb-service                 zen          Completed   4.13.0     2023-07-10T10:23:07Z  4.11.0                   4.11.0
planning_analytics  PAService            ibm-planning-analytics-service  zen          Completed   4.6.5      2023-07-13T13:56:55Z  4.6.5                    4.6.5-770
ws_runtimes         NotebookRuntime      ibm-cpd-ws-runtime-222-py       zen          Completed   6.5.0      2023-07-07T00:15:28Z  6.5.0                    6.5.0012
ws_runtimes         NotebookRuntime      ibm-cpd-ws-runtime-py39         zen          Completed   6.5.0      2023-07-13T10:08:26Z  6.5.0                    6.5.0012

The get_cr_status.py script ran successfully. End of the log.
================================================================
```

If you have problem with cpd-cli command, use this alternative command to get CPD components status

`_oc project <cpd-namespace>_`

`_for i in $(oc get crd | grep cpd.ibm.com | awk '{ print $1 }'); do oc get $i | grep -v "NAME" ; oc get $i $(oc get $i | grep -v "NAME" | awk '{ print $1 }') -o jsonpath="{.spec.scaleConfig}{'\n'}" ; oc get $i $(oc get $i | grep -v "NAME" | awk '{ print $1 }') -o jsonpath="{.status}{'\n'}";echo "---------$i------------" ;done_` 

**9. Is CPD System installed? If yes, please run "ap version" and share the output.** 
``` [root@e1n1 cpd-cli-linux-EE-14.0.3-875]# ap version
Appliance software version is 2.0.2.1
```
**Note: CPDS may need to be upgraded first if it is running at an incompatible version with the target CPD version.**

**10. Is it in-place upgrade or the upgrade on 2 separate clusters with one acting as staging environment?** in place

**11. Collect Cloud Pak for Data usage information  
**

For production upgrade, there's high chance that the upgrade has to be completed within a time window. The prioritization of the services to be upgraded can help to reduce the risk of upgrade failure. The following table as an example can help to have an overview of the Cloud Pak for Data usage information. Based on this table, you can upgrade the services of high importance firstly and then proceed with the upgrade for other services.  
  

|                                          |                |                                       |                                                       |
| ---------------------------------------- | -------------- | ------------------------------------- | ----------------------------------------------------- |
| **Service name**                         | **Used (Y/N)** | **Size (Default/Small/Medium/Large)** | **Level of importance** **（****High/Medium/Low****）** |
| WS (sample)                              | Y              | Default                               | High                                                  |
| WKC                                      | Y              | Small                                 | High                                                  |
| PA                                       | Y              | Small                                 | High                                                  |
| WSL                                      | Y              | Small                                 | High                                                  |
| Cognos                                   | Y              | Small                                 | Medium                                                |
| SPSS                                     | Y              | Default                               | Medium                                                |
| Rstudio                                  | Y              | Default                               | Medium                                                |
| WS                                       | Y              | Default                               | Medium                                                |
| Datastage                                | Y              | Small                                 | High                                                  |
| Data refinery                            | Y              | Default                               | Medium                                                |
| Decision Optimization                    | Y              | Small                                 | High                                                  |
| DB2                                      | Y              | Small                                 | High                                                  |
| Analytics Engine powered by Apache Spark | Y              | Small                                 | Low                                                   |

  

**12. Number of OpenShift nodes** 

Collect information about the number of master nodes and worker nodes in your OpenShift cluster.

_`oc get nodes --show-labels`_
``` root@e1n1 cpd-cli-linux-EE-14.0.3-875]# oc get nodes --show-labels
NAME                STATUS   ROLES               AGE      VERSION            LABELS
e1n1-master.fbond   Ready    master              2y221d   v1.23.17+16bcd69   beta.kubernetes.io/arch=amd64,beta.kubernetes.io/os=linux,kubernetes.io/arch=amd64,kubernetes.io/hostname=e1n1-master.fbond,kubernetes.io/os=linux,node-role.kubernetes.io/master=,node.openshift.io/os_id=rhcos
e1n2-master.fbond   Ready    master              2y221d   v1.23.17+16bcd69   beta.kubernetes.io/arch=amd64,beta.kubernetes.io/os=linux,kubernetes.io/arch=amd64,kubernetes.io/hostname=e1n2-master.fbond,kubernetes.io/os=linux,node-role.kubernetes.io/master=,node.openshift.io/os_id=rhcos
e1n3-master.fbond   Ready    master              2y221d   v1.23.17+16bcd69   beta.kubernetes.io/arch=amd64,beta.kubernetes.io/os=linux,kubernetes.io/arch=amd64,kubernetes.io/hostname=e1n3-master.fbond,kubernetes.io/os=linux,node-role.kubernetes.io/master=,node.openshift.io/os_id=rhcos
e1n4.fbond          Ready    worker              2y221d   v1.23.17+16bcd69   beta.kubernetes.io/arch=amd64,beta.kubernetes.io/os=linux,cluster.ocs.openshift.io/openshift-storage=,kubernetes.io/arch=amd64,kubernetes.io/hostname=e1n4.fbond,kubernetes.io/os=linux,node-role.kubernetes.io/worker=,node.openshift.io/os_id=rhcos,nodeos.io/role=worker,topology.rook.io/rack=rack0
e2n1.fbond          Ready    worker              2y221d   v1.23.17+16bcd69   beta.kubernetes.io/arch=amd64,beta.kubernetes.io/os=linux,cluster.ocs.openshift.io/openshift-storage=,kubernetes.io/arch=amd64,kubernetes.io/hostname=e2n1.fbond,kubernetes.io/os=linux,node-role.kubernetes.io/worker=,node.openshift.io/os_id=rhcos,nodeos.io/role=worker,topology.rook.io/rack=rack1
e2n2.fbond          Ready    worker              2y221d   v1.23.17+16bcd69   beta.kubernetes.io/arch=amd64,beta.kubernetes.io/os=linux,cluster.ocs.openshift.io/openshift-storage=,kubernetes.io/arch=amd64,kubernetes.io/hostname=e2n2.fbond,kubernetes.io/os=linux,node-role.kubernetes.io/worker=,node.openshift.io/os_id=rhcos,nodeos.io/role=worker,topology.rook.io/rack=rack2
e2n3.fbond          Ready    nps-shared,worker   2y221d   v1.23.17+16bcd69   beta.kubernetes.io/arch=amd64,beta.kubernetes.io/os=linux,kubernetes.io/arch=amd64,kubernetes.io/hostname=e2n3.fbond,kubernetes.io/os=linux,node-role.kubernetes.io/nps-shared=,node-role.kubernetes.io/worker=,node.openshift.io/os_id=rhcos,nodeos.io/role=worker,npsHostSysctlVer=v1.0,npsnodetype=hostworker
e2n4.fbond          Ready    nps-shared,worker   2y216d   v1.23.17+16bcd69   beta.kubernetes.io/arch=amd64,beta.kubernetes.io/os=linux,kubernetes.io/arch=amd64,kubernetes.io/hostname=e2n4.fbond,kubernetes.io/os=linux,node-role.kubernetes.io/nps-shared=,node-role.kubernetes.io/worker=,node.openshift.io/os_id=rhcos,nodeos.io/role=worker,npsHostSysctlVer=v1.0,npsnodetype=hostworker
[root@e1n1 cpd-cli-linux-EE-14.0.3-875]#
```
**13. The location of your Cloud Pak for Data installation (On-premise, which cloud, etc)  On-premise
  
14. Operating System of the Bastion node**   
Bastion node is also known as the client workstation on which you can run the oc client to operate the OpenShift cluster.  
**Note:** RHEL V8 or equivalent is recommended.
Bastion is e1n1 
``` NAME="Red Hat Enterprise Linux"
VERSION="8.8 (Ootpa)"
ID="rhel"
ID_LIKE="fedora"
VERSION_ID="8.8"
PLATFORM_ID="platform:el8"
PRETTY_NAME="Red Hat Enterprise Linux 8.8 (Ootpa)"
ANSI_COLOR="0;31"
CPE_NAME="cpe:/o:redhat:enterprise_linux:8::baseos"
HOME_URL="https://www.redhat.com/"
DOCUMENTATION_URL="https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8"
BUG_REPORT_URL="https://bugzilla.redhat.com/"

REDHAT_BUGZILLA_PRODUCT="Red Hat Enterprise Linux 8"
REDHAT_BUGZILLA_PRODUCT_VERSION=8.8
REDHAT_SUPPORT_PRODUCT="Red Hat Enterprise Linux"
REDHAT_SUPPORT_PRODUCT_VERSION="8.8"
```

**  
15. Private container registry , we have migrated to a online repo after issues 
**1)Is there an private container registry available to be used by the Cloud Pak for Data?Strongly recommend the use of private container registry. If you already have one, please indicate amount of available free storage space, 500GB ~ 800G is recommended, and the required storage space is vary from the CPD componenets and services to be upgraded.  
    
**Note**: You cannot use the integrated OpenShift Container Platform registry. It does not support multi-architecture images and is not compliant with the Docker Image Manifest Version 2, Schema 2.  
  
**16. Internet access  
**Does the OpenShift cluster have internet access?  If not, is there a proxy for accessing white-listed sites? It does have internet access 
**17. Type of environment(s) (Dev/Test, Staging or Production)**  Production
  
**18. Any application that uses CPD services?  Databases 
**

For any questions about the above must gather information, you can engage IBM Support by opening a CSP (Salesforce) case either using the [CSP Console](http://ibmsf.lightning.force.com/) or [IBM Support.](https://www.ibm.com/mysupport/) 

**19. Target starting date and expected ending date of the upgrade?** asap 

**20. Please share relevant information if applicable (optional):**

- Any RSI patches or Hotfixes applied in the cluster? no
- If Db2 Warehouse or Db2 OLTP installed, any dedicated worker nodes used? yes install not dedicated
- If Data Virtualization (renamed as Watson Query since CPD 4.6) service is deployed, is it using external JDBC driver? no
- Any custom images used? If yes, please share the detailed information accordingly. No

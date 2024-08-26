---
title: Overview of Inbox Service
---
# What is Inbox Service

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="128:3:3" line-data="    public InboxService(InboxConfiguration config, ServiceRequestRepository serviceRequestRepository,">`InboxService`</SwmToken> class is a core component in the Inbox module responsible for handling various operations related to fetching and processing inbox data. It interacts with other services and repositories to retrieve and manipulate data, ensuring that the inbox functionality works seamlessly.

## <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="36:4:4" line-data="public class WorkflowService {">`WorkflowService`</SwmToken> Example

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="36:4:4" line-data="public class WorkflowService {">`WorkflowService`</SwmToken> class is another Spring service component responsible for handling workflow-related operations. It is autowired with dependencies like <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="38:3:3" line-data="	private InboxConfiguration config;">`InboxConfiguration`</SwmToken>, <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="40:3:3" line-data="	private ServiceRequestRepository serviceRequestRepository;">`ServiceRequestRepository`</SwmToken>, and <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="42:3:3" line-data="	private ObjectMapper mapper;">`ObjectMapper`</SwmToken>.

<SwmSnippet path="/municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" line="35">

---

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="36:4:4" line-data="public class WorkflowService {">`WorkflowService`</SwmToken> class is defined with its dependencies injected via the constructor.

```java
@Service
public class WorkflowService {

	private InboxConfiguration config;

	private ServiceRequestRepository serviceRequestRepository;

	private ObjectMapper mapper;

	@Autowired
	public WorkflowService(InboxConfiguration config, ServiceRequestRepository serviceRequestRepository,
			ObjectMapper mapper) {
		this.config = config;
		this.serviceRequestRepository = serviceRequestRepository;
		this.mapper = mapper;
	}
```

---

</SwmSnippet>

## Using <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="36:4:4" line-data="public class WorkflowService {">`WorkflowService`</SwmToken> in <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="128:3:3" line-data="    public InboxService(InboxConfiguration config, ServiceRequestRepository serviceRequestRepository,">`InboxService`</SwmToken>

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="128:3:3" line-data="    public InboxService(InboxConfiguration config, ServiceRequestRepository serviceRequestRepository,">`InboxService`</SwmToken> class autowires the <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="36:4:4" line-data="public class WorkflowService {">`WorkflowService`</SwmToken> to utilize its functionalities for processing inbox data. This integration allows <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="128:3:3" line-data="    public InboxService(InboxConfiguration config, ServiceRequestRepository serviceRequestRepository,">`InboxService`</SwmToken> to leverage workflow operations seamlessly.

<SwmSnippet path="/municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" line="128">

---

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="128:3:3" line-data="    public InboxService(InboxConfiguration config, ServiceRequestRepository serviceRequestRepository,">`InboxService`</SwmToken> constructor shows how <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="129:6:6" line-data="            ObjectMapper mapper, WorkflowService workflowService) {">`WorkflowService`</SwmToken> is autowired and used.

```java
    public InboxService(InboxConfiguration config, ServiceRequestRepository serviceRequestRepository,
            ObjectMapper mapper, WorkflowService workflowService) {
        this.config = config;
```

---

</SwmSnippet>

## Main Functions

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="128:3:3" line-data="    public InboxService(InboxConfiguration config, ServiceRequestRepository serviceRequestRepository,">`InboxService`</SwmToken> class contains several main functions, including <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="52:5:5" line-data="	public Integer getProcessCount(String tenantId, RequestInfo requestInfo, ProcessInstanceSearchCriteria criteria) {">`getProcessCount`</SwmToken>, <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="76:5:5" line-data="	public Integer getNearingSlaProcessCount(String tenantId, RequestInfo requestInfo, ProcessInstanceSearchCriteria criteria) {">`getNearingSlaProcessCount`</SwmToken>, <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="262:14:14" line-data="        Map&lt;String,List&lt;BusinessService&gt;&gt; tenantIdToBuisnessSevicesMap =  getTenantIdToBuisnessSevicesMap(businessServices);">`getTenantIdToBuisnessSevicesMap`</SwmToken>, and <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="263:14:14" line-data="        Map&lt;String,Set&lt;String&gt;&gt; stateToRoleMap = getStateToRoleMap(businessServices);">`getStateToRoleMap`</SwmToken>. Here, we will focus on <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="52:5:5" line-data="	public Integer getProcessCount(String tenantId, RequestInfo requestInfo, ProcessInstanceSearchCriteria criteria) {">`getProcessCount`</SwmToken> and <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="76:5:5" line-data="	public Integer getNearingSlaProcessCount(String tenantId, RequestInfo requestInfo, ProcessInstanceSearchCriteria criteria) {">`getNearingSlaProcessCount`</SwmToken>.

### <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="52:5:5" line-data="	public Integer getProcessCount(String tenantId, RequestInfo requestInfo, ProcessInstanceSearchCriteria criteria) {">`getProcessCount`</SwmToken>

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="52:5:5" line-data="	public Integer getProcessCount(String tenantId, RequestInfo requestInfo, ProcessInstanceSearchCriteria criteria) {">`getProcessCount`</SwmToken> function retrieves the count of process instances for a given tenant and criteria. It iterates through the list of business services, builds the workflow URL, and fetches the result using the <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="40:3:3" line-data="	private ServiceRequestRepository serviceRequestRepository;">`ServiceRequestRepository`</SwmToken>. The response is parsed and accumulated to get the total process count.

<SwmSnippet path="/municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" line="52">

---

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="52:5:5" line-data="	public Integer getProcessCount(String tenantId, RequestInfo requestInfo, ProcessInstanceSearchCriteria criteria) {">`getProcessCount`</SwmToken> function implementation in <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="36:4:4" line-data="public class WorkflowService {">`WorkflowService`</SwmToken>.

```java
	public Integer getProcessCount(String tenantId, RequestInfo requestInfo, ProcessInstanceSearchCriteria criteria) {
		List<String> listOfBusinessServices = new ArrayList<>(criteria.getBusinessService());
		Integer processCount = 0;
		for(String businessSrv : listOfBusinessServices) {
			criteria.setBusinessService(Collections.singletonList(businessSrv));
			StringBuilder url = new StringBuilder(config.getWorkflowHost());
			url.append(config.getProcessCountPath());
			criteria.setIsProcessCountCall(true);
			url = this.buildWorkflowUrl(criteria, url, Boolean.FALSE);

			RequestInfoWrapper requestInfoWrapper = RequestInfoWrapper.builder().requestInfo(requestInfo).build();
			Object result = serviceRequestRepository.fetchIntResult(url, requestInfoWrapper);
			Integer response = null;
			try {
				response = mapper.convertValue(result, Integer.class);
			} catch (IllegalArgumentException e) {
				throw new CustomException(ErrorConstants.PARSING_ERROR, "Failed to parse response of ProcessInstance Count");
			}
			processCount += response;
		}
		criteria.setBusinessService(listOfBusinessServices);
```

---

</SwmSnippet>

### <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="76:5:5" line-data="	public Integer getNearingSlaProcessCount(String tenantId, RequestInfo requestInfo, ProcessInstanceSearchCriteria criteria) {">`getNearingSlaProcessCount`</SwmToken>

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="76:5:5" line-data="	public Integer getNearingSlaProcessCount(String tenantId, RequestInfo requestInfo, ProcessInstanceSearchCriteria criteria) {">`getNearingSlaProcessCount`</SwmToken> function retrieves the count of process instances that are nearing their SLA (Service Level Agreement) for a given tenant and criteria. Similar to <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="52:5:5" line-data="	public Integer getProcessCount(String tenantId, RequestInfo requestInfo, ProcessInstanceSearchCriteria criteria) {">`getProcessCount`</SwmToken>, it iterates through the list of business services, builds the workflow URL, and fetches the result using the <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="40:3:3" line-data="	private ServiceRequestRepository serviceRequestRepository;">`ServiceRequestRepository`</SwmToken>. The response is parsed and accumulated to get the total count of processes nearing SLA.

<SwmSnippet path="/municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" line="76">

---

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="76:5:5" line-data="	public Integer getNearingSlaProcessCount(String tenantId, RequestInfo requestInfo, ProcessInstanceSearchCriteria criteria) {">`getNearingSlaProcessCount`</SwmToken> function implementation in <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/WorkflowService.java" pos="36:4:4" line-data="public class WorkflowService {">`WorkflowService`</SwmToken>.

```java
	public Integer getNearingSlaProcessCount(String tenantId, RequestInfo requestInfo, ProcessInstanceSearchCriteria criteria) {
		List<String> listOfBusinessServices = new ArrayList<>(criteria.getBusinessService());
		Integer processCount = 0;
		for(String businessSrv : listOfBusinessServices) {
			criteria.setBusinessService(Collections.singletonList(businessSrv));
			StringBuilder url = new StringBuilder(config.getWorkflowHost());
			url.append(config.getNearingSlaProcessCountPath());
			criteria.setIsProcessCountCall(true);
			url = this.buildWorkflowUrl(criteria, url, Boolean.FALSE);

			RequestInfoWrapper requestInfoWrapper = RequestInfoWrapper.builder().requestInfo(requestInfo).build();
			Object result = serviceRequestRepository.fetchIntResult(url, requestInfoWrapper);
			Integer response = null;
			try {
				response = mapper.convertValue(result, Integer.class);
			} catch (IllegalArgumentException e) {
				throw new CustomException(ErrorConstants.PARSING_ERROR, "Failed to parse response of ProcessInstance Count");
			}
```

---

</SwmSnippet>

## Service Endpoints

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="128:3:3" line-data="    public InboxService(InboxConfiguration config, ServiceRequestRepository serviceRequestRepository,">`InboxService`</SwmToken> class provides several endpoints to interact with the inbox data. Two of the main endpoints are <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="138:5:5" line-data="    public InboxResponse fetchInboxData(InboxSearchCriteria criteria, RequestInfo requestInfo) {">`fetchInboxData`</SwmToken> and <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="903:8:8" line-data="	public List&lt;VehicleTripDetail&gt; fetchVehicleTripDetailsByReferenceNo(VehicleTripSearchCriteria vehicleTripSearchCriteria, RequestInfo requestInfo) {">`fetchVehicleTripDetailsByReferenceNo`</SwmToken>.

### <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="138:5:5" line-data="    public InboxResponse fetchInboxData(InboxSearchCriteria criteria, RequestInfo requestInfo) {">`fetchInboxData`</SwmToken>

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="138:5:5" line-data="    public InboxResponse fetchInboxData(InboxSearchCriteria criteria, RequestInfo requestInfo) {">`fetchInboxData`</SwmToken> method in the <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="128:3:3" line-data="    public InboxService(InboxConfiguration config, ServiceRequestRepository serviceRequestRepository,">`InboxService`</SwmToken> class is responsible for fetching inbox data based on the provided search criteria and request information. It interacts with various services and repositories to retrieve and process the data.

<SwmSnippet path="/municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" line="138">

---

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="138:5:5" line-data="    public InboxResponse fetchInboxData(InboxSearchCriteria criteria, RequestInfo requestInfo) {">`fetchInboxData`</SwmToken> method implementation in <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="128:3:3" line-data="    public InboxService(InboxConfiguration config, ServiceRequestRepository serviceRequestRepository,">`InboxService`</SwmToken>.

```java
    public InboxResponse fetchInboxData(InboxSearchCriteria criteria, RequestInfo requestInfo) {
    	
        ProcessInstanceSearchCriteria processCriteria = criteria.getProcessSearchCriteria();
        HashMap moduleSearchCriteria = criteria.getModuleSearchCriteria();
        processCriteria.setTenantId(criteria.getTenantId());
        Integer flag=0;
        if (processCriteria.getModuleName().equalsIgnoreCase(BS_WS)) {
        	flag=1;
        	processCriteria.setModuleName(BS_WS_MODULENAME);
        } else if(processCriteria.getModuleName().equalsIgnoreCase(BS_SW)) {
        	flag=2;
        	processCriteria.setModuleName(BS_SW_MODULENAME);
        }

        Integer totalCount = 0;
        if(!(processCriteria.getModuleName().equals(SW) || processCriteria.getModuleName().equals(WS)))
            totalCount = workflowService.getProcessCount(criteria.getTenantId(), requestInfo, processCriteria);
        Integer nearingSlaProcessCount = workflowService.getNearingSlaProcessCount(criteria.getTenantId(), requestInfo, processCriteria);
        List<String> inputStatuses = new ArrayList<>();
        if (!CollectionUtils.isEmpty(processCriteria.getStatus()))
            inputStatuses = new ArrayList<>(processCriteria.getStatus());
```

---

</SwmSnippet>

### <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="903:8:8" line-data="	public List&lt;VehicleTripDetail&gt; fetchVehicleTripDetailsByReferenceNo(VehicleTripSearchCriteria vehicleTripSearchCriteria, RequestInfo requestInfo) {">`fetchVehicleTripDetailsByReferenceNo`</SwmToken>

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="903:8:8" line-data="	public List&lt;VehicleTripDetail&gt; fetchVehicleTripDetailsByReferenceNo(VehicleTripSearchCriteria vehicleTripSearchCriteria, RequestInfo requestInfo) {">`fetchVehicleTripDetailsByReferenceNo`</SwmToken> method in the <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="128:3:3" line-data="    public InboxService(InboxConfiguration config, ServiceRequestRepository serviceRequestRepository,">`InboxService`</SwmToken> class is used to fetch vehicle trip details based on the provided search criteria and request information. It constructs a URL using the vehicle host configuration and makes a request to retrieve the data.

<SwmSnippet path="/municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" line="903">

---

The <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="903:8:8" line-data="	public List&lt;VehicleTripDetail&gt; fetchVehicleTripDetailsByReferenceNo(VehicleTripSearchCriteria vehicleTripSearchCriteria, RequestInfo requestInfo) {">`fetchVehicleTripDetailsByReferenceNo`</SwmToken> method implementation in <SwmToken path="municipal-services/inbox/src/main/java/org/egov/inbox/service/InboxService.java" pos="128:3:3" line-data="    public InboxService(InboxConfiguration config, ServiceRequestRepository serviceRequestRepository,">`InboxService`</SwmToken>.

```java
	public List<VehicleTripDetail> fetchVehicleTripDetailsByReferenceNo(VehicleTripSearchCriteria vehicleTripSearchCriteria, RequestInfo requestInfo) {
		StringBuilder url = new StringBuilder(config.getVehicleHost());
		url.append( config.getVehicleSearchTripPath());
		Object result = serviceRequestRepository.fetchResult(url, vehicleTripSearchCriteria);
		VehicleTripDetailResponse response =null;
		try {
			response = mapper.convertValue(result, VehicleTripDetailResponse.class);
			if(null != response && null != response.getVehicleTripDetail()) {
				System.out.println("size ::::  "+response.getVehicleTripDetail().size());;
				return response.getVehicleTripDetail();
			}
		} catch (IllegalArgumentException e) {
			throw new CustomException(ErrorConstants.PARSING_ERROR, "Failed to parse response of ProcessInstance");
		}
		return new ArrayList<>();
	}
```

---

</SwmSnippet>

&nbsp;

*This is an auto-generated document by Swimm AI 🌊 and has not yet been verified by a human*

<SwmMeta version="3.0.0" repo-id="Z2l0aHViJTNBJTNBRElHSVQtT1NTJTNBJTNBU3dpbW0tRGVtbw==" repo-name="DIGIT-OSS" doc-type="overview"><sup>Powered by [Swimm](/)</sup></SwmMeta>

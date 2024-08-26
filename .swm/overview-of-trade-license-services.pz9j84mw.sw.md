---
title: Overview of Trade License Services
---
```mermaid
graph TD;
 A[Client] -->|POST /v1/{servicename}/_create| B[TradeLicenseController.create];
 A -->|POST /v1/{servicename}/_search| C[TradeLicenseController.search];
 B --> D[TradeLicenseService.create];
 C --> E[TradeLicenseService.search];
```

# What is Trade License Services

Trade License Services (TL services) are used to issue licenses to users after verification. The service is designed to handle different types of licenses, including trade licenses, stakeholder registration, and lockdown passes. The service is integrated with a workflow where the steps for approval of the application can be defined.

## Service Details

This section explains the purpose and usage of TL services, including the types of licenses it handles and its integration with workflow steps. TL services are integrated with workflow steps, allowing for multiple internal states or actions to be performed on the applications, which are configurable. The license is generated once the application is approved, and notifications are sent at every step in the workflow.

## Workflow Integration

This section details how TL services are integrated with workflow steps, allowing for configurable internal states and actions on applications. The integration ensures that the application process is streamlined and that all necessary steps are followed before a license is issued.

## Create

The <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="60:8:8" line-data="    public ResponseEntity&lt;TradeLicenseResponse&gt; create(@Valid @RequestBody TradeLicenseRequest tradeLicenseRequest,">`create`</SwmToken> endpoint is used to create a new trade license. It accepts a <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="60:16:16" line-data="    public ResponseEntity&lt;TradeLicenseResponse&gt; create(@Valid @RequestBody TradeLicenseRequest tradeLicenseRequest,">`TradeLicenseRequest`</SwmToken> object and returns a <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="60:5:5" line-data="    public ResponseEntity&lt;TradeLicenseResponse&gt; create(@Valid @RequestBody TradeLicenseRequest tradeLicenseRequest,">`TradeLicenseResponse`</SwmToken> object containing the created licenses and response information.

<SwmSnippet path="/municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" line="59">

---

The <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="60:8:8" line-data="    public ResponseEntity&lt;TradeLicenseResponse&gt; create(@Valid @RequestBody TradeLicenseRequest tradeLicenseRequest,">`create`</SwmToken> method in <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="31:5:5" line-data="    public class TradeLicenseController {">`TradeLicenseController`</SwmToken> handles the creation of a new trade license. It processes the <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="60:16:16" line-data="    public ResponseEntity&lt;TradeLicenseResponse&gt; create(@Valid @RequestBody TradeLicenseRequest tradeLicenseRequest,">`TradeLicenseRequest`</SwmToken>, creates the licenses, and returns a <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="60:5:5" line-data="    public ResponseEntity&lt;TradeLicenseResponse&gt; create(@Valid @RequestBody TradeLicenseRequest tradeLicenseRequest,">`TradeLicenseResponse`</SwmToken> with the created licenses and response information.

```java
    @PostMapping({"/{servicename}/_create", "/_create"})
    public ResponseEntity<TradeLicenseResponse> create(@Valid @RequestBody TradeLicenseRequest tradeLicenseRequest,
                                                       @PathVariable(required = false) String servicename) {
        List<TradeLicense> licenses = tradeLicenseService.create(tradeLicenseRequest, servicename);
        TradeLicenseResponse response = TradeLicenseResponse.builder().licenses(licenses).responseInfo(
                responseInfoFactory.createResponseInfoFromRequestInfo(tradeLicenseRequest.getRequestInfo(), true))
                .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
```

---

</SwmSnippet>

## Search

The <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="70:8:8" line-data="    public ResponseEntity&lt;TradeLicenseResponse&gt; search(@Valid @RequestBody RequestInfoWrapper requestInfoWrapper,">`search`</SwmToken> endpoint is used to search for trade licenses based on given criteria. It accepts a <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="70:16:16" line-data="    public ResponseEntity&lt;TradeLicenseResponse&gt; search(@Valid @RequestBody RequestInfoWrapper requestInfoWrapper,">`RequestInfoWrapper`</SwmToken> and <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="71:7:7" line-data="                                                       @Valid @ModelAttribute TradeLicenseSearchCriteria criteria,">`TradeLicenseSearchCriteria`</SwmToken> and returns a <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="60:5:5" line-data="    public ResponseEntity&lt;TradeLicenseResponse&gt; create(@Valid @RequestBody TradeLicenseRequest tradeLicenseRequest,">`TradeLicenseResponse`</SwmToken> object containing the found licenses and response information.

<SwmSnippet path="/municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" line="69">

---

The <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="70:8:8" line-data="    public ResponseEntity&lt;TradeLicenseResponse&gt; search(@Valid @RequestBody RequestInfoWrapper requestInfoWrapper,">`search`</SwmToken> method in <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="31:5:5" line-data="    public class TradeLicenseController {">`TradeLicenseController`</SwmToken> handles searching for trade licenses based on the provided criteria. It processes the <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="70:16:16" line-data="    public ResponseEntity&lt;TradeLicenseResponse&gt; search(@Valid @RequestBody RequestInfoWrapper requestInfoWrapper,">`RequestInfoWrapper`</SwmToken> and <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="71:7:7" line-data="                                                       @Valid @ModelAttribute TradeLicenseSearchCriteria criteria,">`TradeLicenseSearchCriteria`</SwmToken>, retrieves the matching licenses, and returns a <SwmToken path="municipal-services/tl-services/src/main/java/org/egov/tl/web/controllers/TradeLicenseController.java" pos="70:5:5" line-data="    public ResponseEntity&lt;TradeLicenseResponse&gt; search(@Valid @RequestBody RequestInfoWrapper requestInfoWrapper,">`TradeLicenseResponse`</SwmToken> with the found licenses and response information.

```java
    @RequestMapping(value = {"/{servicename}/_search", "/_search"}, method = RequestMethod.POST)
    public ResponseEntity<TradeLicenseResponse> search(@Valid @RequestBody RequestInfoWrapper requestInfoWrapper,
                                                       @Valid @ModelAttribute TradeLicenseSearchCriteria criteria,
                                                       @PathVariable(required = false) String servicename
            , @RequestHeader HttpHeaders headers) {
        List<TradeLicense> licenses = tradeLicenseService.search(criteria, requestInfoWrapper.getRequestInfo(), servicename, headers);
        
        int count = tradeLicenseService.countLicenses(criteria, requestInfoWrapper.getRequestInfo(), servicename, headers);
        
        int applicationsIssued = tradeLicenseService.countApplications(criteria, requestInfoWrapper.getRequestInfo(), servicename, headers).get(TLConstants.ISSUED_COUNT);
        int applicationsRenewed = tradeLicenseService.countApplications(criteria, requestInfoWrapper.getRequestInfo(), servicename, headers).get(TLConstants.RENEWED_COUNT);
        int validity = tradeLicenseService.getApplicationValidity();

        TradeLicenseResponse response = TradeLicenseResponse.builder().licenses(licenses).responseInfo(
                responseInfoFactory.createResponseInfoFromRequestInfo(requestInfoWrapper.getRequestInfo(), true)).count(count).applicationsIssued(applicationsIssued)
        		.applicationsRenewed(applicationsRenewed).validity(validity).build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
```

---

</SwmSnippet>

&nbsp;

*This is an auto-generated document by Swimm AI 🌊 and has not yet been verified by a human*

<SwmMeta version="3.0.0" repo-id="Z2l0aHViJTNBJTNBRElHSVQtT1NTJTNBJTNBU3dpbW0tRGVtbw==" repo-name="DIGIT-OSS" doc-type="overview"><sup>Powered by [Swimm](/)</sup></SwmMeta>

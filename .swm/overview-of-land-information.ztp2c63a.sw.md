---
title: Overview of Land Information
---
# Overview of Land Information

Land information encompasses data related to land, including details about the land itself, owner information, units, addresses, and associated documents. This data is essential for the functioning of the `bpa-services`, which rely on comprehensive land information to perform various operations.

# <SwmToken path="municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/landinfo/LandInfo.java" pos="25:3:3" line-data=" * LandInfo">`LandInfo`</SwmToken> Class

The <SwmToken path="municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/landinfo/LandInfo.java" pos="25:3:3" line-data=" * LandInfo">`LandInfo`</SwmToken> class in the `bpa-calculator` module encapsulates this information, ensuring that all relevant land data is available for processing. The `land-services` module supports the `bpa-services` by managing and providing access to this land data.

<SwmSnippet path="/municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/landinfo/LandInfo.java" line="24">

---

The <SwmToken path="municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/landinfo/LandInfo.java" pos="25:3:3" line-data=" * LandInfo">`LandInfo`</SwmToken> class is defined with various properties to hold land-related data. This class is annotated with <SwmToken path="municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/landinfo/LandInfo.java" pos="27:0:1" line-data="@Validated">`@Validated`</SwmToken>, <SwmToken path="municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/landinfo/LandInfo.java" pos="29:0:1" line-data="@Builder">`@Builder`</SwmToken>, <SwmToken path="municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/landinfo/LandInfo.java" pos="30:0:1" line-data="@NoArgsConstructor">`@NoArgsConstructor`</SwmToken>, and <SwmToken path="municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/landinfo/LandInfo.java" pos="31:0:1" line-data="@AllArgsConstructor">`@AllArgsConstructor`</SwmToken> to ensure proper validation and construction of its instances.

```java
/**
 * LandInfo
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.SpringCodegen", date = "2020-06-23T05:54:07.373Z[GMT]")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class LandInfo   {
```

---

</SwmSnippet>

# <SwmToken path="municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/landinfo/LandInfo.java" pos="25:3:3" line-data=" * LandInfo">`LandInfo`</SwmToken> Usage in BPA

The <SwmToken path="municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/landinfo/LandInfo.java" pos="25:3:3" line-data=" * LandInfo">`LandInfo`</SwmToken> class is imported and used in the <SwmToken path="municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/bpa/BPA.java" pos="12:6:6" line-data="import org.egov.bpa.calculator.web.models.Document;">`bpa`</SwmToken> class to encapsulate land information. This integration demonstrates how land information is utilized within the BPA process.

<SwmSnippet path="/municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/bpa/BPA.java" line="12">

---

The <SwmToken path="municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/bpa/BPA.java" pos="12:6:6" line-data="import org.egov.bpa.calculator.web.models.Document;">`bpa`</SwmToken> class imports the <SwmToken path="municipal-services/bpa-calculator/src/main/java/org/egov/bpa/calculator/web/models/bpa/BPA.java" pos="13:14:14" line-data="import org.egov.bpa.calculator.web.models.landinfo.LandInfo;">`landinfo`</SwmToken> class, indicating its dependency on land information for its operations.

```java
import org.egov.bpa.calculator.web.models.Document;
import org.egov.bpa.calculator.web.models.landinfo.LandInfo;
import org.egov.bpa.calculator.web.models.landinfo.Workflow;
```

---

</SwmSnippet>

&nbsp;

*This is an auto-generated document by Swimm AI 🌊 and has not yet been verified by a human*

<SwmMeta version="3.0.0" repo-id="Z2l0aHViJTNBJTNBRElHSVQtT1NTJTNBJTNBU3dpbW0tRGVtbw==" repo-name="DIGIT-OSS" doc-type="overview"><sup>Powered by [Swimm](/)</sup></SwmMeta>

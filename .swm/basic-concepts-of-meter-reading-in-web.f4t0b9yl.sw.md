---
title: Basic concepts of Meter Reading in Web
---
# Overview

Meter Reading refers to the process of recording the consumption of a utility service, such as water, gas, or electricity, by reading the meter installed at the user's premises. This document will cover the basic concepts of meter reading in a web application, focusing on the <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="30:7:7" line-data=" * definitions needing meterreading linking.">`meterreading`</SwmToken> class and its usage.

# The <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="30:7:7" line-data=" * definitions needing meterreading linking.">`meterreading`</SwmToken> Class

The <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="30:7:7" line-data=" * definitions needing meterreading linking.">`meterreading`</SwmToken> class is a lightweight object used to represent meter readings. It includes properties such as <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="38:5:5" line-data="	@JsonProperty(&quot;id&quot;)">`id`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="42:5:5" line-data="	@JsonProperty(&quot;billingPeriod&quot;)">`billingPeriod`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="46:9:9" line-data="	 * Gets or Sets meterStatus">`meterStatus`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="87:5:5" line-data="	@JsonProperty(&quot;lastReading&quot;)">`lastReading`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="90:5:5" line-data="	@JsonProperty(&quot;lastReadingDate&quot;)">`lastReadingDate`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="93:5:5" line-data="	@JsonProperty(&quot;currentReading&quot;)">`currentReading`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="96:5:5" line-data="	@JsonProperty(&quot;currentReadingDate&quot;)">`currentReadingDate`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="100:5:5" line-data="	@JsonProperty(&quot;connectionNo&quot;)">`connectionNo`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="103:5:5" line-data="	@JsonProperty(&quot;consumption&quot;)">`consumption`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="106:5:5" line-data="	@JsonProperty(&quot;generateDemand&quot;)">`generateDemand`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="109:5:5" line-data="	@JsonProperty(&quot;auditDetails&quot;)">`auditDetails`</SwmToken>, and <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="113:5:5" line-data="	@JsonProperty(&quot;tenantId&quot;)">`tenantId`</SwmToken>.

<SwmSnippet path="/municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" line="37">

---

The <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="38:5:5" line-data="	@JsonProperty(&quot;id&quot;)">`id`</SwmToken> property is used to get or set the unique identifier of the meter reading for internal reference.

```java
	@SafeHtml
	@JsonProperty("id")
	private String id = null;
```

---

</SwmSnippet>

# Meter Status Enumeration

The <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="30:7:7" line-data=" * definitions needing meterreading linking.">`meterreading`</SwmToken> class defines an enumeration <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="48:5:5" line-data="	public enum MeterStatusEnum {">`MeterStatusEnum`</SwmToken> to represent various statuses of the meter, such as <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="49:1:1" line-data="		WORKING(&quot;Working&quot;),">`WORKING`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="51:1:1" line-data="		LOCKED(&quot;Locked&quot;),">`LOCKED`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="53:1:1" line-data="		BREAKDOWN(&quot;Breakdown&quot;),">`BREAKDOWN`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="55:1:1" line-data="		NO_METER(&quot;No-meter&quot;),">`NO_METER`</SwmToken>, <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="57:1:1" line-data="		RESET(&quot;Reset&quot;),">`RESET`</SwmToken>, and <SwmToken path="municipal-services/ws-calculator/src/main/java/org/egov/wscalculation/web/models/MeterReading.java" pos="59:1:1" line-data="		REPLACEMENT(&quot;Replacement&quot;);">`REPLACEMENT`</SwmToken>.

&nbsp;

*This is an auto-generated document by Swimm AI 🌊 and has not yet been verified by a human*

<SwmMeta version="3.0.0" repo-id="Z2l0aHViJTNBJTNBRElHSVQtT1NTJTNBJTNBU3dpbW0tRGVtbw==" repo-name="DIGIT-OSS" doc-type="overview"><sup>Powered by [Swimm](/)</sup></SwmMeta>

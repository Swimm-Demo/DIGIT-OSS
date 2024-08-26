---
title: Overview of Turn io Adapter Service
---
# What is Turn io Adapter Service

The Turn io adapter service is responsible for creating complaints and transforming data to the PGR (Public Grievance Redressal) service. It keeps track of the complaints and depends on several other services including user, ID-GEN, <SwmToken path="municipal-services/turn-io-adapter/src/main/resources/application.properties" pos="25:8:10" line-data="egov.pgr.create.endpoint=rainmaker-pgr/v1/requests/_create">`rainmaker-pgr`</SwmToken>, MDMS, Location, and localisation.

## Service Details

The Turn io adapter service includes APIs for transforming data and creating and reading data from another service. It also includes methods for sending messages and updating profiles using the [Turn.io](http://Turn.io) platform.

## API Details

The transform API can be used to create and read data from another service.

<SwmSnippet path="/municipal-services/turn-io-adapter/src/main/java/org/egov/rb/TurnIoAdapterApplication.java" line="12">

---

## Main Class

The <SwmToken path="municipal-services/turn-io-adapter/src/main/java/org/egov/rb/TurnIoAdapterApplication.java" pos="15:4:4" line-data="public class TurnIoAdapterApplication">`TurnIoAdapterApplication`</SwmToken> class is the main entry point for the Turn io adapter service. It uses Spring Boot to run the application.

```java
@SpringBootApplication
@PropertySource("classpath:application.properties")
@Import({ TracerConfiguration.class })
public class TurnIoAdapterApplication
{
	public static void main(String[] args) {
	
		SpringApplication.run(TurnIoAdapterApplication.class, args);
	}
	
	
}
```

---

</SwmSnippet>

<SwmSnippet path="/municipal-services/turn-io-adapter/src/main/java/org/egov/rb/service/TurnIoService.java" line="76">

---

## Sending Messages

The <SwmToken path="municipal-services/turn-io-adapter/src/main/java/org/egov/rb/service/TurnIoService.java" pos="76:5:5" line-data="	public void sendTurnMessage(String message, String mobileNumber) {">`sendTurnMessage`</SwmToken> method in the <SwmToken path="municipal-services/turn-io-adapter/src/main/java/org/egov/rb/service/TurnIoService.java" pos="34:4:4" line-data="public class TurnIoService {">`TurnIoService`</SwmToken> class is used to send messages via the [Turn.io](http://Turn.io) platform. It constructs a request with the message and recipient details, sets the necessary headers, and sends the request using <SwmToken path="municipal-services/turn-io-adapter/src/main/java/org/egov/rb/service/TurnIoService.java" pos="95:5:5" line-data="			response = restTemplate.exchange(propertyConfiguration.getTurnIoMessageAPI(), HttpMethod.POST,">`restTemplate`</SwmToken>.

```java
	public void sendTurnMessage(String message, String mobileNumber) {
		Map<String, Object> request = new HashMap<>();
		Map<String, String> textBody = new HashMap<>();
		Object response = null;

		textBody.put("body", message);
		request.put("preview_url", true);
		request.put("recipient_type", "individual");
		request.put("to", mobileNumber);
		request.put("type", "text");
		request.put("text", textBody);

		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + propertyConfiguration.getAuthorizationToken());
		headers.add("Content-Type", "application/json");

		HttpEntity requestEntity = new HttpEntity<>(request, headers);

		try {
			response = restTemplate.exchange(propertyConfiguration.getTurnIoMessageAPI(), HttpMethod.POST,
					requestEntity, Map.class);
```

---

</SwmSnippet>

<SwmSnippet path="/municipal-services/turn-io-adapter/src/main/java/org/egov/rb/service/TurnIoService.java" line="105">

---

## Updating Profiles

The <SwmToken path="municipal-services/turn-io-adapter/src/main/java/org/egov/rb/service/TurnIoService.java" pos="105:5:5" line-data="	public void setProfileField(String mobileNumber) {">`setProfileField`</SwmToken> method in the <SwmToken path="municipal-services/turn-io-adapter/src/main/java/org/egov/rb/service/TurnIoService.java" pos="34:4:4" line-data="public class TurnIoService {">`TurnIoService`</SwmToken> class is used to update profiles on the [Turn.io](http://Turn.io) platform. It constructs a request with the profile details, sets the necessary headers, and sends the request using <SwmToken path="municipal-services/turn-io-adapter/src/main/java/org/egov/rb/service/TurnIoService.java" pos="95:5:5" line-data="			response = restTemplate.exchange(propertyConfiguration.getTurnIoMessageAPI(), HttpMethod.POST,">`restTemplate`</SwmToken>.

```java
	public void setProfileField(String mobileNumber) {
		String url = propertyConfiguration.getTurnIoProfileUpdateAPI();
		Map<String, Object> request = new HashMap<>();
		Object response = null;

		request.put("city", null);
		request.put("cityseteg", false);
		request.put("locality", null);
		request.put("localityseteg", false);
		request.put("complaint_category", null);
		request.put("complaint_image", null);
		request.put("complaint_sub_category", null);
		request.put("complaintsetvalue", null);
		//request.put("complaintset", false);

		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + propertyConfiguration.getAuthorizationToken());
		headers.add("Content-Type", "application/json");
		headers.add("Accept", "application/vnd.v1+json");

		HttpEntity requestEntity = new HttpEntity<>(request, headers);
```

---

</SwmSnippet>

## Turn io Adapter Endpoints

The Turn io adapter service uses specific endpoints defined in the <SwmPath>[municipal-services/turn-io-adapter/src/main/resources/application.properties](municipal-services/turn-io-adapter/src/main/resources/application.properties)</SwmPath> file to interact with the [Turn.io](http://Turn.io) platform.

<SwmSnippet path="/municipal-services/turn-io-adapter/src/main/resources/application.properties" line="38">

---

### <SwmToken path="municipal-services/turn-io-adapter/src/main/resources/application.properties" pos="38:0:6" line-data="turn.io.message.api=https://whatsapp.turn.io/v1/messages">`turn.io.message.api`</SwmToken>

The <SwmToken path="municipal-services/turn-io-adapter/src/main/resources/application.properties" pos="38:0:6" line-data="turn.io.message.api=https://whatsapp.turn.io/v1/messages">`turn.io.message.api`</SwmToken> endpoint is used to send messages via the [Turn.io](http://Turn.io) platform. This endpoint is defined in the <SwmPath>[municipal-services/turn-io-adapter/src/main/resources/application.properties](municipal-services/turn-io-adapter/src/main/resources/application.properties)</SwmPath> file and is used in the service to send messages to users.

```ini
turn.io.message.api=https://whatsapp.turn.io/v1/messages
```

---

</SwmSnippet>

<SwmSnippet path="/municipal-services/turn-io-adapter/src/main/resources/application.properties" line="39">

---

### <SwmToken path="municipal-services/turn-io-adapter/src/main/resources/application.properties" pos="39:0:6" line-data="turn.io.profile.api=https://whatsapp.turn.io/v1/contacts/{phoneNumber}/profile">`turn.io.profile.api`</SwmToken>

The <SwmToken path="municipal-services/turn-io-adapter/src/main/resources/application.properties" pos="39:0:6" line-data="turn.io.profile.api=https://whatsapp.turn.io/v1/contacts/{phoneNumber}/profile">`turn.io.profile.api`</SwmToken> endpoint is used to update user profiles on the [Turn.io](http://Turn.io) platform. This endpoint is defined in the <SwmPath>[municipal-services/turn-io-adapter/src/main/resources/application.properties](municipal-services/turn-io-adapter/src/main/resources/application.properties)</SwmPath> file and is used in the service to manage user profiles.

```ini
turn.io.profile.api=https://whatsapp.turn.io/v1/contacts/{phoneNumber}/profile
```

---

</SwmSnippet>

&nbsp;

*This is an auto-generated document by Swimm AI 🌊 and has not yet been verified by a human*

<SwmMeta version="3.0.0" repo-id="Z2l0aHViJTNBJTNBRElHSVQtT1NTJTNBJTNBU3dpbW0tRGVtbw==" repo-name="DIGIT-OSS" doc-type="overview"><sup>Powered by [Swimm](/)</sup></SwmMeta>

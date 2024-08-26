---
title: Overview of Property Models
---
# Overview

Models in Property services represent the structure and data of properties within the system. They define the attributes and behaviors of property-related entities.

# OldProperty Class

The `OldProperty` class is a model that extends `PropertyInfo` and includes various attributes such as `auditDetails`, `creationReason`, `occupancyDate`, `propertyDetails`, and `additionalDetails`. It also contains methods for adding property details and building property instances.

The `OldProperty` class extends `PropertyInfo` and includes attributes like `auditDetails`, `creationReason`, `occupancyDate`, `propertyDetails`, and `additionalDetails`.

The `OldProperty` class contains methods for adding property details and building property instances.

# PropertyDetail Class

The `PropertyDetail` class is another model that represents detailed information about a property. It includes attributes like `institution`, `tenantId`, `citizenInfo`, `source`, `status`, `usage`, `noOfFloors`, `landArea`, and `buildUpArea`.

The `PropertyDetail` class includes attributes like `institution`, `tenantId`, `citizenInfo`, `source`, `status`, `usage`, `noOfFloors`, `landArea`, and `buildUpArea`.

# Usage in Services

`OldProperty` instances are created and processed in services like `MigrationService` and mapped from database results in `OldPropertyRowMapper`.

`OldProperty` instances are created and processed in services like `MigrationService`.

`OldProperty` instances are mapped from database results in `OldPropertyRowMapper`.

&nbsp;

*This is an auto-generated document by Swimm AI 🌊 and has not yet been verified by a human*

<SwmMeta version="3.0.0" repo-id="Z2l0aHViJTNBJTNBRElHSVQtT1NTJTNBJTNBU3dpbW0tRGVtbw==" repo-name="DIGIT-OSS" doc-type="overview"><sup>Powered by [Swimm](/)</sup></SwmMeta>

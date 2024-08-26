---
title: Getting started with Enums in Web Module
---
# Introduction

Enums are used to define a set of named constants that can be used to represent a fixed set of values. They provide a way to define and use these constants in a type-safe manner, ensuring that only valid values are used.

# Purpose of Enums in the Web Module

In the web module, enums are used to represent various states and types, such as `Source`, `Status`, `Type`, `Channel`, `Relationship`, `OccupancyType`, and `CreationReason`. These enums are defined in the `org.egov.wscalculation.web.models.enums` package and are used throughout the web module to ensure consistency and type safety.

# Example of Enums

For example, the `Channel` enum includes constants like `CITIZEN`, `DATA_ENTRY`, and `MIGRATION`, which represent different channels through which data can be entered or migrated.

# Main Enums in the Web Module

There are several main enums in this package. Some of them are `Channel`, `Type`, `OccupancyType`, `Source`, `Status`, and `CreationReason`. Below, we will dive a little into `Channel`, `Type`, and `OccupancyType`.

## Channel Enum

The `Channel` enum includes constants like `CITIZEN`, `DATA_ENTRY`, and `MIGRATION`, which represent different channels through which data can be entered or migrated.

## Type Enum

The `Type` enum is used to define various types that are used within the web module. This ensures that only predefined types are used, maintaining consistency and type safety.

&nbsp;

*This is an auto-generated document by Swimm AI 🌊 and has not yet been verified by a human*

<SwmMeta version="3.0.0" repo-id="Z2l0aHViJTNBJTNBRElHSVQtT1NTJTNBJTNBU3dpbW0tRGVtbw==" repo-name="DIGIT-OSS" doc-type="overview"><sup>Powered by [Swimm](/)</sup></SwmMeta>

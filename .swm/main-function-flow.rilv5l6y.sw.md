---
title: Main Function Flow
---
This document explains the initialization and execution flow of the main function. It covers the steps from environment variable checks to Kubernetes client connection and service listing.

The flow starts with the main function checking if the <SwmToken path="utilities/zuul-kubernetes-discovery/main.go" pos="114:15:15" line-data="	if _, ok := os.LookupEnv(&quot;OUTPUT_FILE_PATH&quot;); !ok {">`OUTPUT_FILE_PATH`</SwmToken> environment variable is set. If not, it logs an error and exits. Next, it checks for the NAMESPACE environment variable, defaulting to cluster-wide if not set. The function then establishes a Kubernetes client connection and calls <SwmToken path="utilities/zuul-kubernetes-discovery/main.go" pos="60:2:2" line-data="func listAllServices(clientset *kubernetes.Clientset, namespace string) (s *v1.ServiceList) {">`listAllServices`</SwmToken> to retrieve all services in the specified namespace. The retrieved services are then processed to get Zuul routes, which are finally written to a template.

# Flow drill down

```mermaid
graph TD;
      96641971782e5c9843fd2137e0ff5defed182c597ef200125824b7dff5473ea1(main):::mainFlowStyle --> 136546a952aa5c7365f2de4c71357a7d2fbf24fdadad8f713693378c7a20c666(listAllServices):::mainFlowStyle

136546a952aa5c7365f2de4c71357a7d2fbf24fdadad8f713693378c7a20c666(listAllServices):::mainFlowStyle --> d7aa902a297258a4b6fcc024b032bc9432e18584ca1e7bc813ed5f8aa40d17fb(List):::mainFlowStyle

d7aa902a297258a4b6fcc024b032bc9432e18584ca1e7bc813ed5f8aa40d17fb(List):::mainFlowStyle --> 77fdea12ec926b960ae2b496c5d897074a5fc189e52e0544143791c6b6e30329(renderListItems):::mainFlowStyle

subgraph finance/egov/egov-egiweb/src/main/webapp/resources
77fdea12ec926b960ae2b496c5d897074a5fc189e52e0544143791c6b6e30329(renderListItems):::mainFlowStyle --> aa9f64a61641fcb0f4bb1c54d15d2feea9e1c797621d88af3ab20549c2a5a5bf(onItemClick):::mainFlowStyle
end

subgraph finance/egov/egov-egiweb/src/main/webapp/resources
aa9f64a61641fcb0f4bb1c54d15d2feea9e1c797621d88af3ab20549c2a5a5bf(onItemClick):::mainFlowStyle --> 1b99fefd7cd3f05b67b4cbe07e56f7b8361321058a9c8009033d71dd15868ade(multilevelpushmenu):::mainFlowStyle
end

subgraph finance/egov/egov-egiweb/src/main/webapp/resources
1b99fefd7cd3f05b67b4cbe07e56f7b8361321058a9c8009033d71dd15868ade(multilevelpushmenu):::mainFlowStyle --> f841a90ee05dae8416180c646e594e34507bf62a32f480373583d13df199bf51(updateDOMStructure)
end

subgraph finance/egov/egov-egiweb/src/main/webapp/resources
1b99fefd7cd3f05b67b4cbe07e56f7b8361321058a9c8009033d71dd15868ade(multilevelpushmenu):::mainFlowStyle --> 1c9f1e2a974bbfd6770bef0c262344f206a697c5927f46d7d62431ac9ed4e586(updateNestedDOMStructure)
end

subgraph finance/egov/egov-egiweb/src/main/webapp/resources
1b99fefd7cd3f05b67b4cbe07e56f7b8361321058a9c8009033d71dd15868ade(multilevelpushmenu):::mainFlowStyle --> f5202bb4ef9ad5b52958d070f45a3ea1842d8ca950fb9baa38758a55629c7aea(createDOMStructure):::mainFlowStyle
end

subgraph finance/egov/egov-egiweb/src/main/webapp/resources
f5202bb4ef9ad5b52958d070f45a3ea1842d8ca950fb9baa38758a55629c7aea(createDOMStructure):::mainFlowStyle --> ff513e290dd64604e1153774883c0607860c39fe01f07f967d7fcddfcda3fae2(createNestedDOMStructure):::mainFlowStyle
end

subgraph finance/egov/egov-egiweb/src/main/webapp/resources
f841a90ee05dae8416180c646e594e34507bf62a32f480373583d13df199bf51(updateDOMStructure) --> 1c9f1e2a974bbfd6770bef0c262344f206a697c5927f46d7d62431ac9ed4e586(updateNestedDOMStructure)
end


      classDef mainFlowStyle color:#000000,fill:#7CB9F4
classDef rootsStyle color:#000000,fill:#00FFF4
classDef Style1 color:#000000,fill:#00FFAA
classDef Style2 color:#000000,fill:#FFFF00
classDef Style3 color:#000000,fill:#AA7CB9

%% Swimm:
%% graph TD;
%%       96641971782e5c9843fd2137e0ff5defed182c597ef200125824b7dff5473ea1(main):::mainFlowStyle --> 136546a952aa5c7365f2de4c71357a7d2fbf24fdadad8f713693378c7a20c666(listAllServices):::mainFlowStyle
%% 
%% 136546a952aa5c7365f2de4c71357a7d2fbf24fdadad8f713693378c7a20c666(listAllServices):::mainFlowStyle --> d7aa902a297258a4b6fcc024b032bc9432e18584ca1e7bc813ed5f8aa40d17fb(List):::mainFlowStyle
%% 
%% d7aa902a297258a4b6fcc024b032bc9432e18584ca1e7bc813ed5f8aa40d17fb(List):::mainFlowStyle --> 77fdea12ec926b960ae2b496c5d897074a5fc189e52e0544143791c6b6e30329(renderListItems):::mainFlowStyle
%% 
%% subgraph <SwmPath>[finance/egov/egov-egiweb/src/main/webapp/resources/](finance/egov/egov-egiweb/src/main/webapp/resources/)</SwmPath>
%% 77fdea12ec926b960ae2b496c5d897074a5fc189e52e0544143791c6b6e30329(renderListItems):::mainFlowStyle --> aa9f64a61641fcb0f4bb1c54d15d2feea9e1c797621d88af3ab20549c2a5a5bf(onItemClick):::mainFlowStyle
%% end
%% 
%% subgraph <SwmPath>[finance/egov/egov-egiweb/src/main/webapp/resources/](finance/egov/egov-egiweb/src/main/webapp/resources/)</SwmPath>
%% aa9f64a61641fcb0f4bb1c54d15d2feea9e1c797621d88af3ab20549c2a5a5bf(onItemClick):::mainFlowStyle --> 1b99fefd7cd3f05b67b4cbe07e56f7b8361321058a9c8009033d71dd15868ade(multilevelpushmenu):::mainFlowStyle
%% end
%% 
%% subgraph <SwmPath>[finance/egov/egov-egiweb/src/main/webapp/resources/](finance/egov/egov-egiweb/src/main/webapp/resources/)</SwmPath>
%% 1b99fefd7cd3f05b67b4cbe07e56f7b8361321058a9c8009033d71dd15868ade(multilevelpushmenu):::mainFlowStyle --> f841a90ee05dae8416180c646e594e34507bf62a32f480373583d13df199bf51(updateDOMStructure)
%% end
%% 
%% subgraph <SwmPath>[finance/egov/egov-egiweb/src/main/webapp/resources/](finance/egov/egov-egiweb/src/main/webapp/resources/)</SwmPath>
%% 1b99fefd7cd3f05b67b4cbe07e56f7b8361321058a9c8009033d71dd15868ade(multilevelpushmenu):::mainFlowStyle --> 1c9f1e2a974bbfd6770bef0c262344f206a697c5927f46d7d62431ac9ed4e586(updateNestedDOMStructure)
%% end
%% 
%% subgraph <SwmPath>[finance/egov/egov-egiweb/src/main/webapp/resources/](finance/egov/egov-egiweb/src/main/webapp/resources/)</SwmPath>
%% 1b99fefd7cd3f05b67b4cbe07e56f7b8361321058a9c8009033d71dd15868ade(multilevelpushmenu):::mainFlowStyle --> f5202bb4ef9ad5b52958d070f45a3ea1842d8ca950fb9baa38758a55629c7aea(createDOMStructure):::mainFlowStyle
%% end
%% 
%% subgraph <SwmPath>[finance/egov/egov-egiweb/src/main/webapp/resources/](finance/egov/egov-egiweb/src/main/webapp/resources/)</SwmPath>
%% f5202bb4ef9ad5b52958d070f45a3ea1842d8ca950fb9baa38758a55629c7aea(createDOMStructure):::mainFlowStyle --> ff513e290dd64604e1153774883c0607860c39fe01f07f967d7fcddfcda3fae2(createNestedDOMStructure):::mainFlowStyle
%% end
%% 
%% subgraph <SwmPath>[finance/egov/egov-egiweb/src/main/webapp/resources/](finance/egov/egov-egiweb/src/main/webapp/resources/)</SwmPath>
%% f841a90ee05dae8416180c646e594e34507bf62a32f480373583d13df199bf51(updateDOMStructure) --> 1c9f1e2a974bbfd6770bef0c262344f206a697c5927f46d7d62431ac9ed4e586(updateNestedDOMStructure)
%% end
%% 
%% 
%%       classDef mainFlowStyle color:#000000,fill:#7CB9F4
%% classDef rootsStyle color:#000000,fill:#00FFF4
%% classDef Style1 color:#000000,fill:#00FFAA
%% classDef Style2 color:#000000,fill:#FFFF00
%% classDef Style3 color:#000000,fill:#AA7CB9
```

<SwmSnippet path="/utilities/zuul-kubernetes-discovery/main.go" line="113">

---

## Main Function Initialization

The <SwmToken path="utilities/zuul-kubernetes-discovery/main.go" pos="113:2:2" line-data="func main() {">`main`</SwmToken> function initializes the process by checking for the <SwmToken path="utilities/zuul-kubernetes-discovery/main.go" pos="114:15:15" line-data="	if _, ok := os.LookupEnv(&quot;OUTPUT_FILE_PATH&quot;); !ok {">`OUTPUT_FILE_PATH`</SwmToken> environment variable. If not set, it logs an error and exits. It then attempts to get the <SwmToken path="utilities/zuul-kubernetes-discovery/main.go" pos="117:13:13" line-data="	n, ok := os.LookupEnv(&quot;NAMESPACE&quot;)">`NAMESPACE`</SwmToken> environment variable, defaulting to cluster-wide if not set. The function establishes a Kubernetes client connection and calls <SwmToken path="utilities/zuul-kubernetes-discovery/main.go" pos="123:5:5" line-data="	s := listAllServices(clientset, n)">`listAllServices`</SwmToken> to retrieve all services in the specified namespace.

```go
func main() {
	if _, ok := os.LookupEnv("OUTPUT_FILE_PATH"); !ok {
		log.Panicln("OUTPUT_FILE_PATH environment variable not set! Exiting!")
	}
	n, ok := os.LookupEnv("NAMESPACE")
	if !ok {
		log.Println("NAMESPACE environment vairable not set, defaulting to cluster wide")
	}

	clientset := getKubeConnection()
	s := listAllServices(clientset, n)
	r := getZuulRoutes(s)
	writeTemplate(r)
}
```

---

</SwmSnippet>

<SwmSnippet path="/utilities/zuul-kubernetes-discovery/main.go" line="60">

---

## Listing All Services

The <SwmToken path="utilities/zuul-kubernetes-discovery/main.go" pos="60:2:2" line-data="func listAllServices(clientset *kubernetes.Clientset, namespace string) (s *v1.ServiceList) {">`listAllServices`</SwmToken> function retrieves all Kubernetes services within a specified namespace. It uses the Kubernetes client to list services and returns the service list. If an error occurs during the listing, the function panics.

```go
func listAllServices(clientset *kubernetes.Clientset, namespace string) (s *v1.ServiceList) {
	sc := clientset.CoreV1().Services(namespace)

	s, err := sc.List(metav1.ListOptions{})
	if err != nil {
		panic(err)
	}

	return s
}
```

---

</SwmSnippet>

&nbsp;

*This is an auto-generated document by Swimm AI 🌊 and has not yet been verified by a human*

<SwmMeta version="3.0.0" repo-id="Z2l0aHViJTNBJTNBRElHSVQtT1NTJTNBJTNBU3dpbW0tRGVtbw==" repo-name="DIGIT-OSS" doc-type="flows"><sup>Powered by [Swimm](/)</sup></SwmMeta>

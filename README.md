# kefed.io

Knowledge Engineering from Experimental Design (KEfED) is a design methodology for experimental data that is based on the idea that it should be possible to develop a generative model for data based on the experimental protocol that created it. This work was originally described in [Russ et al 2011](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-12-351), where we describe a prototype editing system written in the Flex language (see https://github.com/BMKEG/kefedEditor). Since Flex is now deprecated, that system is now obselete.

We here develop **`kefed.io`**: an ontology-enabled, Javascript tool based on [JGraph's MxGraph](https://github.com/jgraph) software. This is commercial-grade software that has recently been released as open source. It is a graph-drawing web-application that can be repackaged and repurposed to provide an high-quality user interface for composing diagrams that represent experimental protocols. This core functionality provides the basis for the kefed.io system. 

This is currently implemented as a Spring Boot application, and can be downloaded, built and run with the following commands:

```
$ git clone https://github.com/SciKnowEngine/kefed.io
$ cd kefed.io
$ mvn clean package spring-boot:run
```

This is an early prototype developed directly from the [mxGraph](https://github.com/jgraph/mxgraph) package, using the `grapheditor` demo (found at https://github.com/jgraph/mxgraph/tree/master/javascript/examples/grapheditor). The JGraph developers recently changed the license of their more complete and feature-rich `draw.io` editor to the Apache 2 license (which makes that a suitable target for our eventual adoption). 

The previous implementation of the KEfED Editor was initially developed as part of the BioScholar project ([RO1-GM083871](https://projectreporter.nih.gov/project_info_description.cfm?aid=7799875&icde=6025302)) and was funded by the [Michael J. Fox Foundation](https://www.michaeljfox.org/foundation/grant-detail.php?grant_id=643). 

Current work is partially funded by a subcontract from the Immune Epitope Database (http://iedb.org) to develop KEfED as a vehicle for biocuration. It is also supported under the 'EvidX' project for information extraction [\[wiki\]](https://github.com/SciKnowEngine/evidX/wiki/), [\[NIH Reporter\]](https://projectreporter.nih.gov/project_info_description.cfm?aid=9365558&icde=36903186&ddparam=&ddvalue=&ddsub=&cr=1&csb=default&cs=ASC&pball=).

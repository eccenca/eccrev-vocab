# eccrev: RDF changes and revisions vocabulary

![vocabulary overview][dia]

[dia]: ./eccrev.jpg "eccrev: RDF changes and revisions vocabulary"

We have developed the [eccenca Revision Vocabulary](https://vocab.eccenca.com/revision/), shown in image which is based on the structure of the [Delta ontology](https://www.w3.org/DesignIssues/lncs04/Diff.pdf) and reuses concepts of the [PROV-O ontology](https://www.w3.org/TR/prov-o/).
By reusing concepts of PROV-O, a patch fulfills the notion of provenance.
A patch includes a reference to the author, change reason, time stamp and changes of a transaction triggered by a SPARQL Update query.
To meet the requirement of tracking changes of RDF quads, we store the additions and deletions for all affected named graphs of a SPARQL Update query in the same single patch.

Another advantage of our vocabulary is the support for two different serialization formats.
A triple based format using [reification](http://www.w3.org/TR/1999/REC-rdf-syntax-19990222/#higherorder) for situations where the data and versioning information should remain in the same repository without polluting it with too many graphs.
A quad based format providing a lower memory footprint by using named graphs to store the additions and deletions.
This format is preferred if the versioning information can be stored in a separate repository.

To increase trust, parties can optionally certify a patch by signing its hash value and attach the digital signature to the patch, for example using the [Cert ontology](http://www.w3.org/ns/auth/cert#).

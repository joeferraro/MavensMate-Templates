MavensMate-Templates
====================

A repository of metadata templates for use in MavensMate projects.

###Documentation
http://mavensmate.com/Plugins/Sublime_Text/Metadata_Templates

###How To Contribute

####1. Write Your Template

#####Merge Fields
`api_name` : the API name of the metadata <br/>
`object_name` : the API name of the object associated with this Apex Trigger

#####Example Template
`file_name` : `WithoutSharingClass.cls`
```
public without sharing class {{ api_name }} {
  //no sharing is not advisable!
}
```

####2. Submit Pull Request
Submit a pull request to this repository with your template and update `package.json` to include your new repository metadata. We'll review the submission and include it in the master repository if it serves a legitimate purpose in MavensMate and passes all tests.

MavensMate-Templates
====================

A repository of metadata templates for use in MavensMate projects.

###Documentation
http://mavensmate.com/Plugins/Sublime_Text/Metadata_Templates

###How To Contribute

####1. Write Your Template

#####Merge Fields
MavensMate now supports more sophisticated templates. Simply include a `params` object as part of your template definition in `package.json`. Here's an example:

######From package.json
```
{
	"name" 			: "Apex Trigger",
	"file_name"		: "ApexTrigger.trigger",
	"description" 	: "Basic Apex Trigger template",
	"author" 		: "MavensMate",
	"params" 		: [ 
        {   
            "name"          : "api_name",
            "description"   : "Apex Trigger API Name",
            "default" 		: "MyCoolTrigger"
        },
        {   
            "name"          : "object_name",
            "description"   : "Object API Name",
            "default" 		: "Account"
        },
        {   
            "name"          : "foo",
            "description"   : "A random variable name",
            "default" 		: "myCoolString"
        }
   ]
}
```

######From ApexTrigger.trigger
```
trigger {{ api_name }} on {{ object_name }} (before insert) {
	String {{ foo }} = 'bar';
}
```

We request that you use the param name `api_name` for the API Name of the Apex/Visualforce metadata.

####2. Submit Pull Request
Submit a pull request to this repository with your template and update `package.json` to include your new repository metadata. We'll review the submission and include it in the master repository if it serves a legitimate purpose in MavensMate and passes all tests.

package 
{

import mx.resources.ResourceBundle;

[ExcludeClass]

public class en_US$datamanagement_properties extends ResourceBundle
{

    public function en_US$datamanagement_properties()
    {
		 super("en_US", "datamanagement");
    }

    override protected function getContent():Object
    {
        var content:Object =
        {
            "Branch": "Branch {0}",
            "repeatColumnsNotAllowed": "Same column object cannot be used more than once"
        };
        return content;
    }
}



}

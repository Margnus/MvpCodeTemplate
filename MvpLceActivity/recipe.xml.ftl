<?xml version="1.0"?>
<recipe>

    <instantiate from="root/src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}.java" />

    <instantiate from="root/src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}.java" />

    <instantiate from="root/src/app_package/View.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${viewName}.java" />

  <instantiate from="root/src/app_package/Result.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/${resultName}.java" />

  <instantiate from="root/src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />

	<instantiate from="root/res/fragment.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />

	<instantiate from="root/res/activity.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <open file="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${viewName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${resultName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}" />
</recipe>

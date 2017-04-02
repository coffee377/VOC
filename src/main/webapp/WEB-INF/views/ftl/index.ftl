<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>${title}</title>
<#include "common/base_css.ftl">
	<link rel="stylesheet" href="${webRoot}/css/index.css"/>
</head>
<body>
<div id="index_head">
<#include "common/header.ftl">
</div>
<div id="index_body">
<#include "index_body.ftl">
</div>
<div id="index_footer">
<#include "common/footer.ftl">
</div>
</body>
<script src="${webRoot}/js/index.js"></script>
<#include "common/base_js.ftl">
</html>


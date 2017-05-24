<!DOCTYPE html>
<html lang="zh">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Topic Message - KafkaEagle</title>
<#include "../public/css.ftl" encoding="UTF-8">
<#include "../public/tcss.ftl" encoding="UTF-8">
</head>

<style>
.CodeMirror {
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	border-right: 1px solid #ddd;
	border-left: 1px solid #ddd;
}
</style>
<body>
	<#include "../public/navbar.ftl" encoding="UTF-8"> 
	<div id="wrapper">
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						Topic <small>message</small>
					</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="alert alert-info alert-dismissable">
						<button type="button" class="close" data-dismiss="alert"
							aria-hidden="true">×</button>
						<i class="fa fa-info-circle"></i> Sample SQL query: <strong>SELECT "partition","offset","msg" FROM "KE_Test_Topic_NAME" WHERE "partition" IN (0,1,2) AND "offsets"=10001 limit 10</strong>
					</div>
				</div>
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-tasks fa-fw"></i> Kafka Query SQL
							<div class="pull-right"></div>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div id="ke_sql_query">
								<form>
									<textarea id="code" name="code"></textarea>
								</form>
								<a name="run_task" class="btn btn-success">Query</a>
							</div>

						</div>
						<!-- /.panel-body -->
					</div>
				</div>
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-comments fa-fw"></i> Tasks Job Info
							<div class="pull-right"></div>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div>
								<ul id="result_tab" class="nav nav-tabs">
									<li class="active"><a href="#log_textarea"
										data-toggle="tab">Logs</a></li>
									<li><a href="#result_textarea" data-toggle="tab">Result</a></li>
								</ul>
							</div>
							<div class="tab-content">
								<div id="log_textarea" class="tab-pane fade in active">
									<form>
										<textarea id="job_info" name="job_info"></textarea>
									</form>
								</div>
								<div id="result_textarea" class="tab-pane fade"></div>
							</div>
						</div>
						<!-- /.panel-body -->
					</div>
				</div>
				<!-- /.col-lg-4 -->
			</div>
		</div>
		<!-- /#page-wrapper -->
	</div>
</body>

<#include "../public/script.ftl">
<script src="${springMacroRequestContext.contextPath}/static/js/plugins/magicsuggest/magicsuggest.js"></script>
<script src="${springMacroRequestContext.contextPath}/static/js/plugins/tokenfield/bootstrap-tokenfield.js"></script>
<script src="${springMacroRequestContext.contextPath}/static/js/plugins/codemirror/codemirror.js"></script>
<script src="${springMacroRequestContext.contextPath}/static/js/plugins/codemirror/sql.js"></script>
<script src="${springMacroRequestContext.contextPath}/static/js/plugins/codemirror/show-hint.js"></script>
<script src="${springMacroRequestContext.contextPath}/static/js/plugins/codemirror/sql-hint.js"></script>
<script src="${springMacroRequestContext.contextPath}/static/js/main/topic/msg.js"></script>
<#include "../public/tscript.ftl"> 
</html>
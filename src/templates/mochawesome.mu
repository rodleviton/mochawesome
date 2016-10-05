<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>API Test Report</title>
    {{#inlineAssets}}<style>{{{inlineAsset 'styles'}}}</style>{{/inlineAssets}}
    {{^inlineAssets}}<link rel="stylesheet" href="css/mochawesome.css">{{/inlineAssets}}
  </head>
  <body>

    <!-- NAVBAR -->
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="report-info-cnt">
          <h1 class="report-title">API Test Suite</h1>
          <h3 class="report-date">{{dateFormat stats.end 'dddd, MMMM D YYYY, hh:mma'}}</h3>
        </div>
        <div class="nav-right">
          <div class="quick-summary-cnt">
            {{#stats}}
              {{> _quickSummary}}
            {{/stats}}
          </div>
          <button class="nav-menu-btn open-menu"><i class="icon-menu"></i></button>
        </div>
      </div>
    </div>

    <!-- Report Summary -->
    <div class="summary">
      <div class="container">
        {{#stats}}
          {{> _summary}}
        {{/stats}}
      </div>
    </div>
    <div class="statusbar{{#stats}}{{#hasOther}} has-failed-hooks{{/hasOther}}{{#hasSkipped}} has-skipped-tests{{/hasSkipped}}{{/stats}}">
      <div class="container">
        {{#stats}}
          {{> _statusbar}}
        {{/stats}}
      </div>
    </div>

    <!-- Suites -->
    <div class="details container">
      {{#suites}}
        {{> _suite}}
      {{/suites}}
    </div>

    <footer>
      <div class="container"></div>
    </footer>

    <!-- Nav Menu -->
    <div class="nav-menu-wrap">
      <div class="menu-overlay close-menu"></div>
      <nav class="menu">
        <button class="nav-menu-btn close-menu"><i class="icon-failed"></i></button>
        <ul class="list-unstyled main-menu">
          {{#suites}}
            {{> _navMenu}}
          {{/suites}}
        </ul>
      </nav>
    </div>

    <!-- Scripts -->
    {{#inlineAssets}}
    <script type="text/javascript">{{{inlineAsset 'scripts'}}}</script>
    {{/inlineAssets}}
    {{^inlineAssets}}
    <script src="js/vendor.js"></script>
    <script src="js/mochawesome.js"></script>
    {{/inlineAssets}}
  </body>
</html>

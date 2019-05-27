<div id="translate_${instanceId}" class="super-widget wcm-widget-class fluig-style-guide"
	data-params="translate.instance({message: 'Translate'})">

	<!-- efetua a tradução do texto do objeto i18n -->
	<h1>${i18n.getTranslation('application.title')}</h1>

	<div class="form-group row">
		<div class="col-md-5">
			<label for="text-entrada">Texto de entrada</label>
			<textarea name="text-entrada" id="text-entrada" class="form-control" rows="4" style="resize: vertical;"></textarea>
		</div>
		<div class="col-md-2">
			<label>&nbsp;</label>
			<button type="button" class="btn btn-default btn-block" data-translate>
				Traduzir
			</button>
		</div>
		<div class="col-md-5">
			<label for="text-saida">Texto saída</label>
			<textarea name="text-saida" id="text-saida" class="form-control" rows="4" style="resize: vertical;"></textarea>
		</div>
	</div>

	<!-- Início Imports -->
	<link rel="stylesheet" type="text/css" href="/style-guide/css/fluig-style-guide-filter.min.css">
	<script src="/style-guide/js/fluig-style-guide-filter.min.js"></script>
	<script type="text/javascript" src="/webdesk/vcXMLRPC.js"></script>
	<script type="text/javascript" src="/webdesk/vcXMLRPC-mobile.js"></script>
	<!-- Fim Imports -->

</div>
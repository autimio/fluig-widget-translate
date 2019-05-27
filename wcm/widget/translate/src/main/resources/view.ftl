<div id="translate_${instanceId}" class="super-widget wcm-widget-class fluig-style-guide"
	data-params="translate.instance({message: 'Translate'})">

	<!-- efetua a tradução do texto do objeto i18n -->
	<h1>${i18n.getTranslation('application.title')}</h1>

	<div class="form-group row">
		<div class="col-md-5">
			<div class="btn-group btn-group-justified" data-toggle="buttons">
				<label class="btn btn-default active">
					<input type="radio" name="radio_text_in" id="radio_text_in-1" value="pt" checked> Português
				</label>
				<label class="btn btn-default">
					<input type="radio" name="radio_text_in" id="radio_text_in-2" value="en"> Inglês
				</label>
				<label class="btn btn-default">
					<input type="radio" name="radio_text_in" id="radio_text_in-3" value="es"> Espanhol
				</label>
			</div>
			<textarea name="text-entrada" id="text-entrada" class="form-control" rows="4"
				style="resize: vertical;"></textarea>
		</div>
		<div class="col-md-2">
			<label>&nbsp;</label>
			<button type="button" class="btn btn-default btn-block" data-translate>
				Traduzir
			</button>
		</div>
		<div class="col-md-5">
			<div class="btn-group btn-group-justified" data-toggle="buttons">
				<label class="btn btn-default">
					<input type="radio" name="radio_text_out" id="radio_text_out-1" value="pt"> Português
				</label>
				<label class="btn btn-default active">
					<input type="radio" name="radio_text_out" id="radio_text_out-2" value="en" checked> Inglês
				</label>
				<label class="btn btn-default">
					<input type="radio" name="radio_text_out" id="radio_text_out-3" value="es"> Espanhol
				</label>
			</div>
			<textarea name="text-saida" id="text-saida" class="form-control" rows="4"
				style="resize: vertical;"></textarea>
		</div>
	</div>

	<!-- Início Imports -->
	<link rel="stylesheet" type="text/css" href="/style-guide/css/fluig-style-guide-filter.min.css">
	<script src="/style-guide/js/fluig-style-guide-filter.min.js"></script>
	<script type="text/javascript" src="/webdesk/vcXMLRPC.js"></script>
	<script type="text/javascript" src="/webdesk/vcXMLRPC-mobile.js"></script>
	<!-- Fim Imports -->

</div>
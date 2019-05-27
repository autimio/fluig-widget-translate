var translate = SuperWidget.extend({
	message: null,

	init: function () {
		//code
	},

	bindings: {
		local: {
			'translate': ['click_translate']
		}
	},

	translate: function () {
		var textIn = $('#text-entrada').val();

		var langRadioInValue = $("input[name='radio_text_in']:checked").val();
		var langRadioOutValue = $("input[name='radio_text_out']:checked").val();
		var lang = `${langRadioInValue}-${langRadioOutValue}`;

		console.log('lang = '+lang);

		var constraints = new Array();
		constraints.push(
			DatasetFactory.createConstraint('lang', lang, null, ConstraintType.MUST),
			DatasetFactory.createConstraint('text', textIn, null, ConstraintType.MUST)
		);

		var dsTranslate = DatasetFactory.getDataset('dsTranslate', null, constraints, null);
		$('#text-saida').val(dsTranslate.values[0].text);
	}

});


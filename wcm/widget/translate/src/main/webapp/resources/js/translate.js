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

		var constraints = new Array();

		constraints.push(
			DatasetFactory.createConstraint("lang", "pt-en", null, ConstraintType.MUST),
			DatasetFactory.createConstraint("text", textIn, null, ConstraintType.MUST)
		);

		var dsTranslate = DatasetFactory.getDataset("dsTranslate", null, constraints, null);

		$('#text-saida').val(dsTranslate.values[0].text);
	}

});


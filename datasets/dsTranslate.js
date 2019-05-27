function createDataset(fields, constraints, sortFields) {
    try {
        var datasetTranslate = DatasetBuilder.newDataset();
        datasetTranslate.addColumn('lang');
        datasetTranslate.addColumn('text');

        var lang = 'pt-en';
        var text = 'meu teste';

        /** Início Constraints */
        if (constraints != null) {
            for (var a = 0; a < constraints.length; a++) {
                if (constraints[a].fieldName == 'lang')
                    lang = constraints[a].initialValue;

                if (constraints[a].fieldName == 'text')
                    text = constraints[a].initialValue;
            }
        } 
        
        var result = JSON.parse(getDados(lang, text.replace(' ', '%20')));
        datasetTranslate.addRow([result.lang, result.text[0]]);

        return datasetTranslate;
    } catch (e) {
        log.warn('--Debug-- Erro : ' + e + ' ' + e.lineNumber);
        var dataset = DatasetBuilder.newDataset();
        dataset.addColumn('Erro');
        dataset.addColumn('Linha');
        dataset.addRow(new Array(e, e.lineNumber));
        return datasetTranslate;
    }
}

function getDados(filtroLang, filtroText) {
    try {
        var clientService = fluigAPI.getAuthorizeClientService();
        var key = 'trnsl.1.1.20190522T180110Z.5003ab6b46d5c94c.04343ec6c31070db1bb47bb6a82cbe2f6ad9f83c';

        var data = {
            companyId: getValue('WKCompany') + '',
            serviceCode: 'Translate',
            endpoint: '/translate?key=' + key + '&lang=' + filtroLang + '&text=' + filtroText,
            method: 'get',
            timeoutService: '100', // segundos
            options: {
                encoding: 'UTF-8',
                mediaType: 'application/json'
            }
        }

        var csi = clientService.invoke(JSON.stringify(data));

        if (csi.getResult() == null || csi.getResult().isEmpty()) {
            throw new Exception('Não foi possível comunicar com a API.');
        } else {
            return csi.getResult();
        }

    } catch (e) {
        log.warn('Erro ao realizar a requisição: ' + e);
    }
}
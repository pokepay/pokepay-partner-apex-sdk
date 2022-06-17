// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

PokepayClient c = new PokepayClient(
    '64bd2500-7324-4bfb-a34f-3ded0b4c1ea5',
    'JTFiwjdHFM6TP9TCTvpweDyFbpgYAun9Z2McSXyFSro',
    'https://partnerapi-dev.pokepay.jp',
    'dev_sf_01'
    );

//c.call('POST', '/echo', '{"message": "Hello, world!!"}');
//PokepayResponse res = c.send(new SendEcho('message'));

//Echo res1 = (Echo)JSON.deserializeStrict(res.getResponseBody(), Echo.class);
//System.debug('res1:' + res1);

PokepayResponse res = c.send(new SendEcho('message'));
Echo body = (Echo)res.getResponseBody();
System.debug('status:' + res.getStatusCode());
System.debug('body:' + res.getResponseBody());
System.debug('res:' + res);

//PokepayResponse res2 = c.send(new GetShop('8b9fbece-73fa-494d-bad5-c7fd9e52f9a0'));
// PokepayResponse res2 = c.send(new ListBills());
//PaginatedTransaction body2 = (PaginatedTransaction)res.getResponseBody();
//System.debug('status2:' + res2.getStatusCode());
//System.debug('body2:' + res2.getResponseBody());
// System.debug('res2:' + res2);

// 23:39:01.374 (1210483465)|USER_DEBUG|[111]|DEBUG|reqObj.getRequestBody(){"upperLimitAmount":null,"shopName":null,"shopId":null,"privateMoneyId":null,"perPage":null,"page":null,"organizationCode":null,"lowerLimitAmount":null,"isDisabled":null,"description":null,"createdTo":null,"createdFrom":null,"billId":null}
// 23:39:01.374 (1308225245)|USER_DEBUG|[126]|DEBUG|reqObj.getResponseClass():PaginatedBills
// 23:39:01.374 (1308259821)|USER_DEBUG|[127]|DEBUG|responseBody:{"type":"invalid_parameters","message":"Invalid parameters","errors":{"invalid":["description","page"],"unpermitted":["billId","createdFrom","createdTo","isDisabled","lowerLimitAmount","organizationCode","perPage","privateMoneyId","shopId","shopName","upperLimitAmount"]}}

// GET request which contain request body

ListBills reqObj = new ListBills();
reqObj = reqObj.page(1).privateMoneyId('4b138a4c-8944-4f98-a5c4-96d3c1c415eb');

System.debug('reqObj.getRequestBody(): ' + reqObj.getRequestBody());

PokepayResponse res2 = c.send(reqObj);
PaginatedBills body2 = (PaginatedBills)res2.getResponseBody();
System.debug('body2.getRows()[0]: ' + body2.getRows()[0]);

System.debug('body2.getRows()[0].getAccount(): ' + body2.getRows()[0].getAccount());

// Invalid parameter

ListBills reqObj3 = new ListBills();
reqObj3 = reqObj3.page(-1).privateMoneyId('4b138a4c-8944-4f98-a5c4-96d3c1c415eb-foobar');

try{
    PokepayResponse res3 = c.send(reqObj3);
} catch (PokepayErrorException e){
    System.debug('e: ' + e);
}

// Notfound

GetTransaction reqObj4 = new GetTransaction('5d1b584a-0bca-4a58-b851-66f86625d63e');

try{
    PokepayResponse res4 = c.send(reqObj4);
} catch (PokepayErrorException e){
    System.debug('e: ' + e);
}

// CreateCampaign

Map<String, Object> item1 = 
   (Map<String, Object>)
      JSON.deserializeUntyped('{"point_amount":5,"point_amount_unit":"percent","subject_more_than_or_equal":1000,"subject_less_than":5000}');

Map<String, Object> item2 = 
   (Map<String, Object>)
      JSON.deserializeUntyped('{"point_amount":10,"point_amount_unit":"percent","subject_more_than_or_equal":5000}');

CreateCampaign cReq = new CreateCampaign(
            '082rSUmgTJgltXUvo',
            '4b138a4c-8944-4f98-a5c4-96d3c1c415eb',
            '2018-08-10T15:42:01.000000+09:00',
            '2026-05-20T12:34:43.000000+09:00',
            9135,
            'payment'
        )
                .description('XJ34GFY2SrpQfm9Le0rSPWlrPa8fbLwdjVaS9JydpHqXjqW7D3uCGCdE3Z7gIcLSudPl4JIrQmLFWJxcGB9')
                .status('disabled')
                .pointExpiresAt('2022-12-24T08:37:40.000000+09:00')
                .pointExpiresInDays(6134)
                .setExclusive(false)
                .subject('all')
                .amountBasedPointRules(new Object[]{item1, item2})
                .productBasedPointRules(new Object[]{})
                .applicableDaysOfWeek(new Integer[]{2,5,4})
                .applicableShopIds(new String[]{'8b9fbece-73fa-494d-bad5-c7fd9e52f9a0'})
                .minimumNumberForCombinationPurchase(6551);

//                .bearPointShopId('602cd0be-6a71-4dea-be38-1fa681bee6b1')
//                 .applicableTimeRanges(new Object[]{items,items2,items3,items4,items5,items6})
//                .destPrivateMoneyId('3c0a4d12-4d97-44e7-b15e-a4e2859e84f1')

System.debug('request body: ' + cReq.getRequestBody());

// PokepayResponse cRes = c.send(cReq);
// Campaign cBody = (Campaign)cRes.getResponseBody();
// System.debug('cBody :' + cBody);

String serializedJsonString = JSON.serialize(cReq, true);
String disorderdJsonString = '{"status":"disabled","subject":"all","starts_at":"2018-08-10T15:42:01.000000+09:00","product_based_point_rules":[],"private_money_id":"4b138a4c-8944-4f98-a5c4-96d3c1c415eb","priority":9135,"point_expires_in_days":6134,"point_expires_at":"2022-12-24T08:37:40.000000+09:00","name":"082rSUmgTJgltXUvo","minimum_number_for_combination_purchase":6551,"is_exclusive":false,"event":"payment","ends_at":"2026-05-20T12:34:43.000000+09:00","description":"XJ34GFY2SrpQfm9Le0rSPWlrPa8fbLwdjVaS9JydpHqXjqW7D3uCGCdE3Z7gIcLSudPl4JIrQmLFWJxcGB9","applicable_shop_ids":["8b9fbece-73fa-494d-bad5-c7fd9e52f9a0"],"applicable_days_of_week":[2,5,4],"amount_based_point_rules":[{"subject_less_than":5000,"subject_more_than_or_equal":1000,"point_amount_unit":"percent","point_amount":5},{"subject_more_than_or_equal":5000,"point_amount_unit":"percent","point_amount":10}]}';

// APIs includes path parameters

CancelCashtray ccReq = new CancelCashtray(
    '881103bf-a3e1-4b2d-9b09-6e10e1ab160b'
);

// PokepayResponse ccRes = c.send(ccReq);

// UpdateCampaign ucReq = new UpdateCampaign('6da70e3d-8a75-4cd0-ba87-26f88052f22b').name('updated!');
// PokepayResponse ucRes = c.send(ucReq);

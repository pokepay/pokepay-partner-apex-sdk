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

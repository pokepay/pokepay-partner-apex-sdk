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

HttpResponse res2 = c.call('POST', '/shops', '{}');

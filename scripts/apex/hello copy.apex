PokepayClient c = new PokepayClient(
    '64bd2500-7324-4bfb-a34f-3ded0b4c1ea5',
    'JTFiwjdHFM6TP9TCTvpweDyFbpgYAun9Z2McSXyFSro',
    'https://partnerapi-dev.pokepay.jp',
    'dev_sf_01'
    );

UpdateCampaign ucReq = new UpdateCampaign('6da70e3d-8a75-4cd0-ba87-26f88052f22b');
PokepayResponse ucRes = c.send(ucReq);

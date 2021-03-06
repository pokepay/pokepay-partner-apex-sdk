// DO NOT EDIT: File is generated by code generator.

@isTest
private class ListTransfersTest {
    @isTest static void test0() {
        ListTransfers request = new ListTransfers();
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test1() {
        ListTransfers request = new ListTransfers()
                .description('U1gAPOZCWBu1LN9FJ0cnlAGNGxl68QC9L');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"description":"U1gAPOZCWBu1LN9FJ0cnlAGNGxl68QC9L"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test2() {
        ListTransfers request = new ListTransfers()
                .transferTypes(new String[]{'exchange','coupon','campaign','transfer','payment','expire','topup','cashback'})
                .description('M6C7FzYciEIbzm3gXQmkrBpe2Ig2RcyGTEKbRkheq6QL08QyyZhWxWZXOgJUUSaNEWIfPAbzyBHOjNPScM2HIOB9HTAlispEbZ0nm2AG9fUViptAmbz3OlMcIwPiDhPvFVPSC9IO8VxniaFu0');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"transfer_types":["exchange","coupon","campaign","transfer","payment","expire","topup","cashback"],"description":"M6C7FzYciEIbzm3gXQmkrBpe2Ig2RcyGTEKbRkheq6QL08QyyZhWxWZXOgJUUSaNEWIfPAbzyBHOjNPScM2HIOB9HTAlispEbZ0nm2AG9fUViptAmbz3OlMcIwPiDhPvFVPSC9IO8VxniaFu0"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test3() {
        ListTransfers request = new ListTransfers()
                .transactionTypes(new String[]{'payment','transfer','cashback','exchange','expire','topup'})
                .transferTypes(new String[]{'coupon'})
                .description('nf5GR396SeNDqXXKEJV0JkE3TjLaqeZOsjEI7E22Wl6YSAD7vVGJBWjZfkSD8toOPMhnrU8KE3wpUrjUs8sizjd1z2FtADy5Q3C5jNeYsU9MpL2cFyrblmxyYFjVJ1ksDCEql83as');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"transaction_types":["payment","transfer","cashback","exchange","expire","topup"],"transfer_types":["coupon"],"description":"nf5GR396SeNDqXXKEJV0JkE3TjLaqeZOsjEI7E22Wl6YSAD7vVGJBWjZfkSD8toOPMhnrU8KE3wpUrjUs8sizjd1z2FtADy5Q3C5jNeYsU9MpL2cFyrblmxyYFjVJ1ksDCEql83as"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test4() {
        ListTransfers request = new ListTransfers()
                .setModified(true)
                .transactionTypes(new String[]{'exchange','cashback','payment','topup'})
                .transferTypes(new String[]{'cashback','payment','campaign','exchange','expire','topup','transfer','coupon'})
                .description('sEWYCV1aJM8EwjAmRBWR0j6oBZVp6NIn0X9ZNmVTX8mLedIikedmC30IadhoI72wGGaOUhWf0bdfCQE42KbdvTX1CfA4ud9qfvPOSoxFI1UweO2XRdO2hY0pCC8FQpyDiFdYn6ST7vY9Drqk');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"is_modified":true,"transaction_types":["exchange","cashback","payment","topup"],"transfer_types":["cashback","payment","campaign","exchange","expire","topup","transfer","coupon"],"description":"sEWYCV1aJM8EwjAmRBWR0j6oBZVp6NIn0X9ZNmVTX8mLedIikedmC30IadhoI72wGGaOUhWf0bdfCQE42KbdvTX1CfA4ud9qfvPOSoxFI1UweO2XRdO2hY0pCC8FQpyDiFdYn6ST7vY9Drqk"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test5() {
        ListTransfers request = new ListTransfers()
                .privateMoneyId('b0c1a50a-8e0b-49f2-a1ba-dba0c122b8fa')
                .setModified(true)
                .transactionTypes(new String[]{})
                .transferTypes(new String[]{'topup','payment','cashback','expire'})
                .description('kJOO2v1m3AEScwYzlsFCHOKfiqVfddqZXHyl9FtM3BiAbJG4RFalUDm4QOG36z0pAjeCTeiy225IXwhDEUvB4npxY9ubMTI7cGyilStc03UjxERdVoe6HFhJgKELPhJZ4V6jG807jn');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"private_money_id":"b0c1a50a-8e0b-49f2-a1ba-dba0c122b8fa","is_modified":true,"transaction_types":[],"transfer_types":["topup","payment","cashback","expire"],"description":"kJOO2v1m3AEScwYzlsFCHOKfiqVfddqZXHyl9FtM3BiAbJG4RFalUDm4QOG36z0pAjeCTeiy225IXwhDEUvB4npxY9ubMTI7cGyilStc03UjxERdVoe6HFhJgKELPhJZ4V6jG807jn"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test6() {
        ListTransfers request = new ListTransfers()
                .transactionId('b35fdeb4-39e9-4c81-ba01-69ea45f159b0')
                .privateMoneyId('c4763c79-1f78-4c15-8466-46d3975a788e')
                .setModified(false)
                .transactionTypes(new String[]{'transfer','cashback','topup','exchange'})
                .transferTypes(new String[]{'campaign','exchange','transfer'})
                .description('oO0R3ofHxO79PyMPuNxlOm9TssUDzbSN9easDT5qaXE9oVV6dzFzoMTL1nMwdKXWkN1V7WK5N3KEyrv8oYx3uFnGQ6ZUjkvuDzL1kINhlYHLw7eGbmo6z2mwFW2G7CePrEb6qc1vzC0TUXZ7gJxmZbR4QIZxkVF44SiHUuKLea6KXKMTxnuRpjgiKiTeKThsC');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"transaction_id":"b35fdeb4-39e9-4c81-ba01-69ea45f159b0","private_money_id":"c4763c79-1f78-4c15-8466-46d3975a788e","is_modified":false,"transaction_types":["transfer","cashback","topup","exchange"],"transfer_types":["campaign","exchange","transfer"],"description":"oO0R3ofHxO79PyMPuNxlOm9TssUDzbSN9easDT5qaXE9oVV6dzFzoMTL1nMwdKXWkN1V7WK5N3KEyrv8oYx3uFnGQ6ZUjkvuDzL1kINhlYHLw7eGbmo6z2mwFW2G7CePrEb6qc1vzC0TUXZ7gJxmZbR4QIZxkVF44SiHUuKLea6KXKMTxnuRpjgiKiTeKThsC"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test7() {
        ListTransfers request = new ListTransfers()
                .customerName('VHvt0FegcXhZNGhoP3dbXW7imuFIarDCIG12cWukEiPRDcMrsI69et7tZGcxsWh3x4WMFG9JtXGOrRTCDsNsdOxykdQVM02fdP8dPWgv17gnjksnVKZ2Yg2XW7z7bqKh4VDMi81vkZfIvFF2a')
                .transactionId('a8d17e5e-e790-4dd6-a29f-d9c79f5a9821')
                .privateMoneyId('47696b7f-3742-4cf2-b4b4-23640f557cb4')
                .setModified(true)
                .transactionTypes(new String[]{'transfer','topup','expire','cashback','exchange','payment'})
                .transferTypes(new String[]{'transfer','coupon','payment'})
                .description('hbMWHW8OrxkYJbesefuwz6QVslbgmox4sylqaj0m4NHRO5ZxO4O3NjLEysHxuDJHz86s8rMyDwBbVQMVNIv43CsGJ1N1Ty1LpoGWtPPIzjjzRC7Vh9LObliCnClJEf5Qg177zO5rbJQyEpgsB3u1k6p1M3AaDCD8U2');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"customer_name":"VHvt0FegcXhZNGhoP3dbXW7imuFIarDCIG12cWukEiPRDcMrsI69et7tZGcxsWh3x4WMFG9JtXGOrRTCDsNsdOxykdQVM02fdP8dPWgv17gnjksnVKZ2Yg2XW7z7bqKh4VDMi81vkZfIvFF2a","transaction_id":"a8d17e5e-e790-4dd6-a29f-d9c79f5a9821","private_money_id":"47696b7f-3742-4cf2-b4b4-23640f557cb4","is_modified":true,"transaction_types":["transfer","topup","expire","cashback","exchange","payment"],"transfer_types":["transfer","coupon","payment"],"description":"hbMWHW8OrxkYJbesefuwz6QVslbgmox4sylqaj0m4NHRO5ZxO4O3NjLEysHxuDJHz86s8rMyDwBbVQMVNIv43CsGJ1N1Ty1LpoGWtPPIzjjzRC7Vh9LObliCnClJEf5Qg177zO5rbJQyEpgsB3u1k6p1M3AaDCD8U2"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test8() {
        ListTransfers request = new ListTransfers()
                .customerId('6de12a2c-d782-4dcd-87b3-31810fd030bf')
                .customerName('y0vfxtwSmqJp6yKARh5ZRW3Kxq9vutzMeQNTZUuVlFabCqRikwgbBJfMhTrHTPQaRFRzLrLpSH0GqkthOAKJR8VBFpRQxxKQexm5F4TlR')
                .transactionId('75dfc3d3-73e0-4c0a-a7b3-74508119ae73')
                .privateMoneyId('79973c89-763d-4cee-8de0-de1259007144')
                .setModified(false)
                .transactionTypes(new String[]{'exchange','expire','topup','payment','transfer','cashback'})
                .transferTypes(new String[]{'exchange','coupon','payment','campaign','topup','expire','cashback'})
                .description('tyzouTG0fNi1SBzVwDCpwO7mzwiIebwBbgsjluVjYrLryI60OsM6yKVZ1jPy1');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"customer_id":"6de12a2c-d782-4dcd-87b3-31810fd030bf","customer_name":"y0vfxtwSmqJp6yKARh5ZRW3Kxq9vutzMeQNTZUuVlFabCqRikwgbBJfMhTrHTPQaRFRzLrLpSH0GqkthOAKJR8VBFpRQxxKQexm5F4TlR","transaction_id":"75dfc3d3-73e0-4c0a-a7b3-74508119ae73","private_money_id":"79973c89-763d-4cee-8de0-de1259007144","is_modified":false,"transaction_types":["exchange","expire","topup","payment","transfer","cashback"],"transfer_types":["exchange","coupon","payment","campaign","topup","expire","cashback"],"description":"tyzouTG0fNi1SBzVwDCpwO7mzwiIebwBbgsjluVjYrLryI60OsM6yKVZ1jPy1"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test9() {
        ListTransfers request = new ListTransfers()
                .shopName('npNVd9AFxrpWfPQQvIa1xbdNYJvyCZXCjbARIpuKvOzHCuCdyUUls75UdwXdZijuTLMB27QQHuatNtp6PKSLh839k28z03zy6Qc9GYSlX2n5lak1n33o382bj7JojzlN4lU5sMlhBuyia62bkzzlqIc0ydT6mqiA8RNdj3UyTqHU')
                .customerId('9b8743f2-8ac9-4977-a5e3-54f0d29473ef')
                .customerName('FXApISgLQUaMJL6dBoxy3dS4rnSGnuDl1WGraodKKbLrRBGbYLtxgB5z5qrK2mXuD0UWST9ldTa29xEBfE4jaoCgaw81ksIPXpJoHnKZwzgtMuSjmXprQOJIDMtkxUA3CwMowYwsohy6o54EyGXhKAybq9is4L00eclC')
                .transactionId('fa527366-177c-4f7d-b6f9-11e76d77bb51')
                .privateMoneyId('a8656b67-91ba-47ed-a391-a3fa0604c263')
                .setModified(true)
                .transactionTypes(new String[]{'transfer','exchange','topup','payment'})
                .transferTypes(new String[]{'topup','coupon','payment','expire','campaign'})
                .description('tXeOgCjHXo5HdhOmdyoXuDdYfk0Kl5lQobWMeUrTL0yrW2IFnoVrabBtuZMnnkajdAwZKazac8bckasxqrpu0M7pIUsW64iTD7nd9oi4jTu3F0HRYKCBEMlkDUnah6fkhvDARp5vX7MupP6FVnb6JjAKYX8HzepSQlFXs1g1p8h9cEw94TVm3QEXbRfQ4MBKBqC3S2iD');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"shop_name":"npNVd9AFxrpWfPQQvIa1xbdNYJvyCZXCjbARIpuKvOzHCuCdyUUls75UdwXdZijuTLMB27QQHuatNtp6PKSLh839k28z03zy6Qc9GYSlX2n5lak1n33o382bj7JojzlN4lU5sMlhBuyia62bkzzlqIc0ydT6mqiA8RNdj3UyTqHU","customer_id":"9b8743f2-8ac9-4977-a5e3-54f0d29473ef","customer_name":"FXApISgLQUaMJL6dBoxy3dS4rnSGnuDl1WGraodKKbLrRBGbYLtxgB5z5qrK2mXuD0UWST9ldTa29xEBfE4jaoCgaw81ksIPXpJoHnKZwzgtMuSjmXprQOJIDMtkxUA3CwMowYwsohy6o54EyGXhKAybq9is4L00eclC","transaction_id":"fa527366-177c-4f7d-b6f9-11e76d77bb51","private_money_id":"a8656b67-91ba-47ed-a391-a3fa0604c263","is_modified":true,"transaction_types":["transfer","exchange","topup","payment"],"transfer_types":["topup","coupon","payment","expire","campaign"],"description":"tXeOgCjHXo5HdhOmdyoXuDdYfk0Kl5lQobWMeUrTL0yrW2IFnoVrabBtuZMnnkajdAwZKazac8bckasxqrpu0M7pIUsW64iTD7nd9oi4jTu3F0HRYKCBEMlkDUnah6fkhvDARp5vX7MupP6FVnb6JjAKYX8HzepSQlFXs1g1p8h9cEw94TVm3QEXbRfQ4MBKBqC3S2iD"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test10() {
        ListTransfers request = new ListTransfers()
                .shopId('b73f5446-8797-48ee-9245-c0336c39b980')
                .shopName('SwskPWs7mGvsLBFz2ikalm5QIcpZb2q5YnZ6axCoTTIbjOEPBaRli2lUAMJ7CyG5TMfzsA0CzHGei6FNa5iNHS8ae3s1VgKjc7Q8j7Z0SWMLPnzw7xhca7VuCPQn3tgDKKsPg1tK8tF9sjwQnBp1nMIeAnY6Xeri5tCJDZsGcVm09iZYX0jHs0ds3Y41lK02B8JXAbkOFKSHaiDX11U4V4mzkiQ9KgdufJCOqQoqEQic9b7rjANNhMIW5uX0no')
                .customerId('fbcf5fed-221a-407f-a59c-345289923305')
                .customerName('n6xi8YDAJH7HJXNF3Oy8VhKyGvyermibojKhVPIvz1I1HvcbolySSXeAcLtwR11xDAJrx0pv2XvsLcCeEcDmfq2CKw2F1KvbCjTFkaD9SEmE89oiZ9sjCAHNKHbkDV7xD9UgYkUYCn38T5')
                .transactionId('daf1fe6a-2010-448c-9f28-3f9610c90127')
                .privateMoneyId('fd1c15e4-1715-4a64-a4aa-b12010f779a8')
                .setModified(false)
                .transactionTypes(new String[]{'cashback','exchange','payment','transfer','topup'})
                .transferTypes(new String[]{'expire','payment','transfer','exchange','topup','campaign','cashback'})
                .description('vyYD1qoSVwF6tpYAPGi6YnBQDM8MlLw6WNmhQ1XbNNNiRTERN1SPoqCbHjtLPWoEeyLYkaItEzRnlzKYkySdT2Gi04uqdwqTzZvD1PwMG5sUToLzAoDfdSJfprAXytppmaGjNfTvZeWlNcmFKOSukr');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"shop_id":"b73f5446-8797-48ee-9245-c0336c39b980","shop_name":"SwskPWs7mGvsLBFz2ikalm5QIcpZb2q5YnZ6axCoTTIbjOEPBaRli2lUAMJ7CyG5TMfzsA0CzHGei6FNa5iNHS8ae3s1VgKjc7Q8j7Z0SWMLPnzw7xhca7VuCPQn3tgDKKsPg1tK8tF9sjwQnBp1nMIeAnY6Xeri5tCJDZsGcVm09iZYX0jHs0ds3Y41lK02B8JXAbkOFKSHaiDX11U4V4mzkiQ9KgdufJCOqQoqEQic9b7rjANNhMIW5uX0no","customer_id":"fbcf5fed-221a-407f-a59c-345289923305","customer_name":"n6xi8YDAJH7HJXNF3Oy8VhKyGvyermibojKhVPIvz1I1HvcbolySSXeAcLtwR11xDAJrx0pv2XvsLcCeEcDmfq2CKw2F1KvbCjTFkaD9SEmE89oiZ9sjCAHNKHbkDV7xD9UgYkUYCn38T5","transaction_id":"daf1fe6a-2010-448c-9f28-3f9610c90127","private_money_id":"fd1c15e4-1715-4a64-a4aa-b12010f779a8","is_modified":false,"transaction_types":["cashback","exchange","payment","transfer","topup"],"transfer_types":["expire","payment","transfer","exchange","topup","campaign","cashback"],"description":"vyYD1qoSVwF6tpYAPGi6YnBQDM8MlLw6WNmhQ1XbNNNiRTERN1SPoqCbHjtLPWoEeyLYkaItEzRnlzKYkySdT2Gi04uqdwqTzZvD1PwMG5sUToLzAoDfdSJfprAXytppmaGjNfTvZeWlNcmFKOSukr"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test11() {
        ListTransfers request = new ListTransfers()
                .perPage(4829)
                .shopId('6dc6622f-66d0-47f0-a153-a7740719d965')
                .shopName('C08CcbsYxt96gmv0VcOEBgxJasez0E3N0w4tVAdgt1xX1d')
                .customerId('3912c1d3-09d2-4548-be26-57d8b957daa7')
                .customerName('AmJyubVIv51Dnx9WEjtPQeVvIzNJybaWd5nDKgnWgGOF388caTufq1V8gMtPEUm5qxAkXQdgmA6Ox4Cr60B3K44a0163kByMdg32LG1oWyluqXLUpztzpGIdluCdFeopAnKzAxtAmMd124CMe44VQ69lqvNuxrP4SroQtmwf2SR0athJ6w5HZkze23HnekgXpUMEHxZW0Tc6eMEIuVp5eKpdv05iSfHRA4MJeTWEJu4ZLaQXIwCG')
                .transactionId('2c6738c9-2730-4064-afb9-910cd62b80e9')
                .privateMoneyId('48a65a90-733b-4757-aaaa-aed7f9e1961c')
                .setModified(false)
                .transactionTypes(new String[]{'cashback','expire','payment'})
                .transferTypes(new String[]{})
                .description('2iDJgp3ZW8SpDn16YEfYX');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"per_page":4829,"shop_id":"6dc6622f-66d0-47f0-a153-a7740719d965","shop_name":"C08CcbsYxt96gmv0VcOEBgxJasez0E3N0w4tVAdgt1xX1d","customer_id":"3912c1d3-09d2-4548-be26-57d8b957daa7","customer_name":"AmJyubVIv51Dnx9WEjtPQeVvIzNJybaWd5nDKgnWgGOF388caTufq1V8gMtPEUm5qxAkXQdgmA6Ox4Cr60B3K44a0163kByMdg32LG1oWyluqXLUpztzpGIdluCdFeopAnKzAxtAmMd124CMe44VQ69lqvNuxrP4SroQtmwf2SR0athJ6w5HZkze23HnekgXpUMEHxZW0Tc6eMEIuVp5eKpdv05iSfHRA4MJeTWEJu4ZLaQXIwCG","transaction_id":"2c6738c9-2730-4064-afb9-910cd62b80e9","private_money_id":"48a65a90-733b-4757-aaaa-aed7f9e1961c","is_modified":false,"transaction_types":["cashback","expire","payment"],"transfer_types":[],"description":"2iDJgp3ZW8SpDn16YEfYX"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test12() {
        ListTransfers request = new ListTransfers()
                .page(301)
                .perPage(1483)
                .shopId('8c74e2d5-6155-45c8-88c4-a23075430afb')
                .shopName('bha6rpojFdIy8Lev3F8En8XgQCp5V2i4zKRrop8yq1iTaMXh9J32aBIrleFDh2AVDnVQPI4cS2rMsWBfreBRQpW9vUd58fde96uK1qpkeDgc6Hbo3o2wSmfRoo5OKt3yV5Bzt1djpGomL7u0oZNCkYK3XxpWAlchemsnykqWhGOYpMimrLQy1efJIm6p2nFeDatBkmxJUfJ8iWJ5x76ilzTFGw7NqxtlVIVfYnX2Qn7E')
                .customerId('4d3db489-13ee-42cf-89c3-7a0ac92c50a4')
                .customerName('sUwktnh8VjRFve7MdNMBgFvJyEEmkecVySQ3ucJUKFqVhyrEcw3WNc5IXHiI2Hhl1OjgN6fFukYqihBSq8D0896GNWlaYQ8akcWxDZkhOozkzesx2mnek2LIVGGp8Vx16M91diHUGfol8Mhj42rW4z5Wjzvhmx48Q4mMZZBBUosSdONTSqEGwk1DyPJJ9VhetNR8hTecHZnx73cRhZIXdPCHq2mv2UAXAtqrIkbL0')
                .transactionId('1dcc0dab-9140-4c60-ba97-6fbb815e4108')
                .privateMoneyId('152b1a34-4f1a-443b-a760-ba532bb68b50')
                .setModified(true)
                .transactionTypes(new String[]{})
                .transferTypes(new String[]{'topup','transfer','expire','exchange','cashback','coupon'})
                .description('UPoxQJ9n1IVWSFIGUqJ4N6z6sZDMXDGqemkORDDzJGZ9TM0TySjAlVWDrjsx0UNdOCeykFyfPkq8IYlCnIEfVjyhIzvswfx06lwewFlBxBPgZymInLxkpSlp0CcXJpCFZzC');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"page":301,"per_page":1483,"shop_id":"8c74e2d5-6155-45c8-88c4-a23075430afb","shop_name":"bha6rpojFdIy8Lev3F8En8XgQCp5V2i4zKRrop8yq1iTaMXh9J32aBIrleFDh2AVDnVQPI4cS2rMsWBfreBRQpW9vUd58fde96uK1qpkeDgc6Hbo3o2wSmfRoo5OKt3yV5Bzt1djpGomL7u0oZNCkYK3XxpWAlchemsnykqWhGOYpMimrLQy1efJIm6p2nFeDatBkmxJUfJ8iWJ5x76ilzTFGw7NqxtlVIVfYnX2Qn7E","customer_id":"4d3db489-13ee-42cf-89c3-7a0ac92c50a4","customer_name":"sUwktnh8VjRFve7MdNMBgFvJyEEmkecVySQ3ucJUKFqVhyrEcw3WNc5IXHiI2Hhl1OjgN6fFukYqihBSq8D0896GNWlaYQ8akcWxDZkhOozkzesx2mnek2LIVGGp8Vx16M91diHUGfol8Mhj42rW4z5Wjzvhmx48Q4mMZZBBUosSdONTSqEGwk1DyPJJ9VhetNR8hTecHZnx73cRhZIXdPCHq2mv2UAXAtqrIkbL0","transaction_id":"1dcc0dab-9140-4c60-ba97-6fbb815e4108","private_money_id":"152b1a34-4f1a-443b-a760-ba532bb68b50","is_modified":true,"transaction_types":[],"transfer_types":["topup","transfer","expire","exchange","cashback","coupon"],"description":"UPoxQJ9n1IVWSFIGUqJ4N6z6sZDMXDGqemkORDDzJGZ9TM0TySjAlVWDrjsx0UNdOCeykFyfPkq8IYlCnIEfVjyhIzvswfx06lwewFlBxBPgZymInLxkpSlp0CcXJpCFZzC"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test13() {
        ListTransfers request = new ListTransfers()
                .to('2020-09-30T22:05:23.000000+09:00')
                .page(1441)
                .perPage(6450)
                .shopId('6c100626-4ad7-4421-ac8d-fc964d78a40a')
                .shopName('P7a67366cHWhkYkA6trhbS9trPinjNzKWZdpxUSeeatx6TLoIfkctcu3TkkDZexmMtTyt289kas1F7Tkqoaqe1JD')
                .customerId('7d8ffa0f-98ab-424c-89b1-74a9fe8c72d7')
                .customerName('64tiSollupgL4JictCeDSHD3C2YnEIi9qrFhHU4UChBktVJM6Ehoat5RskjtjMRgfY9KAojiVjkWGZfXbhOFvNY55OwkPTEUz8oSFQeGoSG3k81y4L7o3GM3UKBXMJoycpsy4LyLZFxRuuFLA4Ui8k1KypnJ8Uw7M1CvtXboHcAQ9ViIsvWqws3eBMzyIUtiNxNhmRynGWfznERPtN3LViJS1dp')
                .transactionId('e9b18fe9-b3dc-4975-b536-ec239b952f4a')
                .privateMoneyId('41f08fad-7e23-4881-a2a4-115ffb6d631b')
                .setModified(false)
                .transactionTypes(new String[]{'expire','transfer','topup'})
                .transferTypes(new String[]{})
                .description('7acols8OLFNhYvqrdgeoTKVw3QKHsut3xFubILPZVISKCKpUoBc7VjLNhPbQNBNhem8RljnuLcC94xG8sb1tOVm7p5XAwHfSXk3eOR6TecHTnhwvZsEsT85OfQ8lzdmqxGSg8e3RhOb5BMcQPLOIjmc8VMDMHWqGdZh4akYykFCJxLZHGXI');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"to":"2020-09-30T22:05:23.000000+09:00","page":1441,"per_page":6450,"shop_id":"6c100626-4ad7-4421-ac8d-fc964d78a40a","shop_name":"P7a67366cHWhkYkA6trhbS9trPinjNzKWZdpxUSeeatx6TLoIfkctcu3TkkDZexmMtTyt289kas1F7Tkqoaqe1JD","customer_id":"7d8ffa0f-98ab-424c-89b1-74a9fe8c72d7","customer_name":"64tiSollupgL4JictCeDSHD3C2YnEIi9qrFhHU4UChBktVJM6Ehoat5RskjtjMRgfY9KAojiVjkWGZfXbhOFvNY55OwkPTEUz8oSFQeGoSG3k81y4L7o3GM3UKBXMJoycpsy4LyLZFxRuuFLA4Ui8k1KypnJ8Uw7M1CvtXboHcAQ9ViIsvWqws3eBMzyIUtiNxNhmRynGWfznERPtN3LViJS1dp","transaction_id":"e9b18fe9-b3dc-4975-b536-ec239b952f4a","private_money_id":"41f08fad-7e23-4881-a2a4-115ffb6d631b","is_modified":false,"transaction_types":["expire","transfer","topup"],"transfer_types":[],"description":"7acols8OLFNhYvqrdgeoTKVw3QKHsut3xFubILPZVISKCKpUoBc7VjLNhPbQNBNhem8RljnuLcC94xG8sb1tOVm7p5XAwHfSXk3eOR6TecHTnhwvZsEsT85OfQ8lzdmqxGSg8e3RhOb5BMcQPLOIjmc8VMDMHWqGdZh4akYykFCJxLZHGXI"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
    @isTest static void test14() {
        ListTransfers request = new ListTransfers()
                .startFrom('2019-02-24T12:57:49.000000+09:00')
                .to('2018-02-24T02:51:51.000000+09:00')
                .page(7746)
                .perPage(6367)
                .shopId('70fe2c45-9c03-4698-acb5-a4360b8163c7')
                .shopName('f0Gw7kmQ3kNPt7OvjdgkL3FTfLMcm3icBM39ZlgHnODxDuHCOV9jJuZqWToSer58JP7CddvYZG2P4sGsjZKQxe7fKpax0Uc45ft1nisEBoOyK7IWRvWeQ7WqJw3BcrA0ZJmOfUMnfydDiDxugYD9evfD1PJtdO3SdiMuiIPxXLPGXeapZ447jeLeg5dXfz8LlL819MpDMdbxSiedHtUdWqj')
                .customerId('44ee4377-5909-49ce-9aa3-1836c9c6f753')
                .customerName('qXcjRYXWjjppT0r9xvCuvBOfsidrDI9VlsfxLxW5axZvNGABU1Kq4dKF1bCFldqrEeXCX83UsZSPbix6b1Za3ly7V1xEBLXcDk2ABcz8aQVQ46LRceMuSvImdDq9y3aEus7kZPbP6pY7uTyJAbvra0dcpr2XBaxBtLUqtpR4s1JU0lVQ2OypewcGn6EYrIoiJUtnz4tPDjzGeH1vMI9teS2D85S1UH')
                .transactionId('a486c041-d104-488c-8331-b105d5055b91')
                .privateMoneyId('af74bbbf-ce8d-4f36-be76-c83ce8719c66')
                .setModified(false)
                .transactionTypes(new String[]{'transfer','topup','exchange','payment','cashback','expire'})
                .transferTypes(new String[]{'exchange','payment','cashback','campaign','expire','coupon'})
                .description('Jqhsy99eYUXwCEgrx3b6fZBGl5iNgWbOvie519sB5ATfDwJwr3eQ20YGcyYu0bMGv3vztYfqlxsbOENjEAJX3lDTAofzZK4Rxx8sLYfBb6BjvrBrNNM0rEDhKG45tzzgCXrxrouPH3hhI04AO4rgTAhQAt0OqjGLP0D');
        
        System.assertEquals(request.method(), 'GET', 'Test method');
        System.assertEquals(request.path(), '/transfers', 'Test path');
        System.assertEquals((Map<String, Object>)JSON.deserializeUntyped(request.getRequestBody()), (Map<String, Object>)JSON.deserializeUntyped('{"from":"2019-02-24T12:57:49.000000+09:00","to":"2018-02-24T02:51:51.000000+09:00","page":7746,"per_page":6367,"shop_id":"70fe2c45-9c03-4698-acb5-a4360b8163c7","shop_name":"f0Gw7kmQ3kNPt7OvjdgkL3FTfLMcm3icBM39ZlgHnODxDuHCOV9jJuZqWToSer58JP7CddvYZG2P4sGsjZKQxe7fKpax0Uc45ft1nisEBoOyK7IWRvWeQ7WqJw3BcrA0ZJmOfUMnfydDiDxugYD9evfD1PJtdO3SdiMuiIPxXLPGXeapZ447jeLeg5dXfz8LlL819MpDMdbxSiedHtUdWqj","customer_id":"44ee4377-5909-49ce-9aa3-1836c9c6f753","customer_name":"qXcjRYXWjjppT0r9xvCuvBOfsidrDI9VlsfxLxW5axZvNGABU1Kq4dKF1bCFldqrEeXCX83UsZSPbix6b1Za3ly7V1xEBLXcDk2ABcz8aQVQ46LRceMuSvImdDq9y3aEus7kZPbP6pY7uTyJAbvra0dcpr2XBaxBtLUqtpR4s1JU0lVQ2OypewcGn6EYrIoiJUtnz4tPDjzGeH1vMI9teS2D85S1UH","transaction_id":"a486c041-d104-488c-8331-b105d5055b91","private_money_id":"af74bbbf-ce8d-4f36-be76-c83ce8719c66","is_modified":false,"transaction_types":["transfer","topup","exchange","payment","cashback","expire"],"transfer_types":["exchange","payment","cashback","campaign","expire","coupon"],"description":"Jqhsy99eYUXwCEgrx3b6fZBGl5iNgWbOvie519sB5ATfDwJwr3eQ20YGcyYu0bMGv3vztYfqlxsbOENjEAJX3lDTAofzZK4Rxx8sLYfBb6BjvrBrNNM0rEDhKG45tzzgCXrxrouPH3hhI04AO4rgTAhQAt0OqjGLP0D"}'), 'Test getRequestBody');
        System.assertEquals(request.getResponseClass(), PaginatedTransfers.class, 'Test getRequestClass');
    }
}

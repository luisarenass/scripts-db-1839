--insert de datos de autenticación PROD
INSERT INTO
    mexico.wholesalers_auth(
        vendor_id,
        environment,
        url_token,
        client_id,
        client_secret,
        url_service,
        url_service_get_orders
    )
VALUES
    (
        'dca45b8d-665b-427a-a21f-c07e77d9609d',
        'PROD',
        'URL_TOKEN',
        '0ba9c1cd-07cb-480e-b4fb-af6c6cd38e00',
        '70d31e2f-b2ab-4ca3-a830-0c2e4425bf79 ',
        'TEST',
        'TEST'
    );

--insert de datos SIT
INSERT INTO
    mexico.wholesalers_auth(
        vendor_id,
        environment,
        url_token,
        client_id,
        client_secret,
        url_service,
        url_service_get_orders
    )
VALUES
    (
        '28eaf607-3d22-4df4-8ff7-02c8be556979',
        'SIT',
        'https://services-sit.bees-platform.dev/api/auth/token',
        'b950d54b-16c2-4150-bbac-de6da4773cf5',
        '6ce48526-4901-4ce9-9dc2-f86ce57a5772',
        'https://services-sit.bees-platform.dev/api/data-ingestion-relay-service/v1',
        'https://services-sit.bees-platform.dev/v1/order-service/v1'
    );

--insert de datos UAT
INSERT INTO
    mexico.wholesalers_auth(
        vendor_id,
        environment,
        url_token,
        client_id,
        client_secret,
        url_service,
        url_service_get_orders
    )
VALUES
    (
        'd7edef09-a018-43f8-8213-13c0dfe2604c',
        'UAT',
        'https://services-uat.bees-platform.dev/api/auth/token',
        '60b5579a-8b85-487a-92ad-67023389cf75',
        'a00f3213-ac97-4745-9a50-2f6c56c2b0c3',
        'https://services-uat.bees-platform.dev/api/data-ingestion-relay-service/v1',
        'https://services-uat.bees-platform.dev/v1/order-service/v1∫'
    );

--INSERT de usuarios
--USUARIO MX006 PROD
INSERT INTO
    mexico.users(
        username,
        password,
        softdeleteflag,
        lastmodifieddate,
        vendor_id,
        environment
    )
VALUES
    (
        'mx006-prod-wholesalers@ab.inbev',
        'V3x0eHAzzz#s$GW',
        'false',
        now(),
        '28eaf607-3d22-4df4-8ff7-02c8be556979',
        'PROD'
    );

    --USUARIO MX006 SIT
INSERT INTO
    mexico.users(
        username,
        password,
        softdeleteflag,
        lastmodifieddate,
        vendor_id,
        environment
    )
VALUES
    (
        'mx006-sit-wholesalers@ab.inbev',
        'V3x0eHJ@zz#s$GW',
        'false',
        now(),
        '28eaf607-3d22-4df4-8ff7-02c8be556979',
        'SIT'
    );


--USUARIOS MX006 UAT

 --USUARIO MX006 SIT
INSERT INTO
    mexico.users(
        username,
        password,
        softdeleteflag,
        lastmodifieddate,
        vendor_id,
        environment
    )
VALUES
    (
        'mx006-uat-wholesalers@ab.inbev',
        'kJ62Ux@BNTM$',
        'false',
        now(),
        'd7edef09-a018-43f8-8213-13c0dfe2604c',
        'UAT'
    );

    --INSERT WHOLESALER

    INSERT INTO mexico.wholesaler(
	wholesaler_id, name, id_sap)
	VALUES ('MX006', 'VILLA NICOLAS ROMERO','100017417');
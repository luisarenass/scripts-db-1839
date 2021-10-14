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
        'https://services.bees-platform.com/api/auth/token',
        '0ba9c1cd-07cb-480e-b4fb-af6c6cd38e00',
        '70d31e2f-b2ab-4ca3-a830-0c2e4425bf79 ',
        'https://services.bees-platform.com/api/data-ingestion-relay-service/v1',
        'https://services.bees-platform.com/v1/order-service/v1'
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

   --INSERT WHOLESALER

    INSERT INTO mexico.wholesaler(
	wholesaler_id, name, id_sap)
	VALUES ('MX006', 'VILLA NICOLAS ROMERO','100017417');
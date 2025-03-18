INSERT INTO Orders (
    order_id, created_at, updated_at, order_code, total_price, discount_price,
    is_cancelled, delivery_id, guest_id, user_id, order_status, payment_method
)
VALUES
    (1, '2025-03-16 00:05:07', '2025-03-16 00:05:07', '2025031600001', 4002725, 4859, 0, NULL, NULL, 3, 'ORDER_COMPLETED', 'ACCOUNT_TRANSFER'),
    (2, '2025-03-16 00:05:07', '2025-03-16 00:05:07', '2025031600002', 2992322, 4329, 0, NULL, NULL, 2, 'PAYMENT_FAILED', 'CARD'),
    (3, '2025-03-16 00:05:07', '2025-03-16 00:05:07', '2025031600003', 2379835, 38960, 0, NULL, NULL, 5, 'PAYMENT_COMPLETED', 'CARD'),
    (4, '2025-03-16 00:05:07', '2025-03-16 00:05:07', '2025031600004', 1639844, 26142, 1, NULL, NULL, 4, 'PAYMENT_COMPLETED', 'CARD'),
    (5, '2025-03-16 00:05:07', '2025-03-16 00:05:07', '2025031600005', 2720249, 17006, 1, NULL, NULL, 1, 'ORDER_COMPLETED', 'ACCOUNT_TRANSFER'),
    (6, '2025-03-16 00:05:07', '2025-03-16 00:05:07', '2025031600006', 4981152, 22488, 0, NULL, NULL, 5, 'CANCELLED', 'ACCOUNT_TRANSFER');

INSERT INTO OrderItemDetail (
    orderitemdetail_id, name, quantity, price, created_at, updated_at,
    discount_price, coupon_applied, additional_price, additional,
    order_id, product_id, option_id, item_status
)
VALUES
    (1, 'Mac Mini M4', 8, 930149, '2025-03-15 11:49:50', '2025-03-15 11:49:50', 45972, 0, 0, '{"16GB": 116547}', 1, 2, 10, 'ORDERED'),
    (2, 'iPhone 16 Pro Max', 8, 618922, '2025-03-15 11:49:50', '2025-03-15 11:49:50', 66009, 1, 0, '{"1TB": 57413}', 2, 10, 4, 'PARTIALLY_CANCELLED'),
    (3, 'iPhone 16 Pro Max', 6, 1802828, '2025-03-15 11:49:50', '2025-03-15 11:49:50', 40521, 0, 0, '{"512GB": 187697}', 3, 6, 7, 'ORDERED'),
    (4, 'Apple Watch Series 10', 3, 2526817, '2025-03-15 11:49:50', '2025-03-15 11:49:50', 38050, 0, 0, '{"32GB": 181589}', 4, 8, 7, 'ORDERED'),
    (5, 'Mac Mini M4', 8, 1815525, '2025-03-15 11:49:50', '2025-03-15 11:49:50', 50087, 1, 0, '{"32GB":116425}', 5 ,1 ,7 ,'ORDERED');

INSERT INTO OrderItemDetail_History (
    history_id, orderitemdetail_id, old_price, new_price, old_quantity, new_quantity,
    change_reason, changed_at, changed_by, item_history_status
)
VALUES
    (1, 1, 1623514, 1623514, 2, 2, NULL, '2025-03-15 11:49:50', 3, 'ORDERED'),
    (2, 2, 2774912, 2740709, 6, 6, '전체 환불', '2025-03-15 11:49:50', 1, 'PARTIALLY_CANCELLED'),
    (3, 3, 2403894, 2362033, 1, 0, '상품정률 5% 할인', '2025-03-15 11:49:50', 3, 'PARTIALLY_CANCELLED'),
    (4, 4, 2139852, 2101983, 10, 10, NULL, '2025-03-15 11:49:50', 3, 'PARTIALLY_CANCELLED'),
    (5, 5, 2006390, 1982761, 3, 3, NULL, '2025-03-15 11:49:50', 3, 'CANCELLED');


INSERT INTO OrderStatus (
    orderstatus_id, order_id, payment_status, updated_at, orderstatus_status
)
VALUES
    (1, 1, 'PAYMENT_FAILED', '2025-03-15 13:20:08', 'CANCELLED'),
    (2, 2, 'PAYMENT_PENDING', '2025-03-15 13:20:08', 'CANCELLED'),
    (3, 3, 'PAYMENT_PENDING', '2025-03-15 13:20:08', 'ORDERED'),
    (4, 4, 'PAYMENT_COMPLETED', '2025-03-15 13:20:08', 'ORDERED'),
    (5, 5, 'PAYMENT_PENDING', '2025-03-15 13:20:08', 'CANCELLED'),
    (6, 6, 'PAYMENT_COMPLETED', '2025-03-15 13:20:08', 'CANCELLED');






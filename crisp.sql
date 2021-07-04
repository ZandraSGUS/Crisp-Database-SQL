/* CREATE NEW DATABASE */
create database b11_group3;


/* CREATE a Transaction */
INSERT INTO
    transactions (transaction_id, amount, date, description, bank_account_id)
values
    (16, 100, '2021-07-08', 'Income', '86826321VV');


/* READ a list of Transactions by Category */
select t.*, month(t.timestamp), sum(t.amount)
from transactions as t
right join category as c
on t.description_id = c.description_id
left join bank_accounts as b
on t.bank_account_id = b.bank_account_id;
where user_id = "K1733982Q"
group by c.description_id, month(t.timestamp)
order by c.description_id, month(t.timestamp);


/* UPDATE a Transaction */
UPDATE transactions
set amount = "150"
where user_id = "K1733982Q";


/* DELETE a Transaction */
DELETE FROM transactions
where transaction_id = 3, user_id = "K1733982Q";

TYPE=VIEW
query=select `card`.`cards`.`card_id` AS `card_id`,`card`.`cards`.`card_first` AS `card_first`,`card`.`cards`.`card_second` AS `card_second`,`card`.`cards`.`deck_id` AS `deck_id`,`card`.`cards_known`.`card_known` AS `card_known` from (`card`.`cards` join `card`.`cards_known` on(`card`.`cards`.`deck_id` = `card`.`cards_known`.`deck_id`))
md5=73d8ff6f74a39216cde40105351466cf
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=0001712678963603234
create-version=2
source=SELECT cards.*, cards_known.card_known\nFROM cards\nINNER JOIN cards_known ON cards.deck_id = cards_known.deck_id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `card`.`cards`.`card_id` AS `card_id`,`card`.`cards`.`card_first` AS `card_first`,`card`.`cards`.`card_second` AS `card_second`,`card`.`cards`.`deck_id` AS `deck_id`,`card`.`cards_known`.`card_known` AS `card_known` from (`card`.`cards` join `card`.`cards_known` on(`card`.`cards`.`deck_id` = `card`.`cards_known`.`deck_id`))
mariadb-version=100428

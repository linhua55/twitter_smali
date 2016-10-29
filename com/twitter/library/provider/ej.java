package com.twitter.library.provider;

/* compiled from: Twttr */
public interface ej {
    public static final String a;

    static {
        a = "CREATE TRIGGER card_state_insert_trigger AFTER INSERT ON card_state WHEN 1 BEGIN DELETE FROM card_state WHERE _id NOT IN (SELECT _id FROM card_state ORDER BY _id DESC LIMIT " + Integer.toString(100, 10) + ");" + " END;";
    }
}

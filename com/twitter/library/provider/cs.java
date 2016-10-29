package com.twitter.library.provider;

import android.net.Uri;

/* compiled from: Twttr */
public final class cs {
    public static final Uri a;
    public static final String[] b;

    static {
        a = Uri.parse(ck.d + "dm_card_state");
        b = new String[]{"card_message_id", "card_id", "card_conversation_id", "card_state"};
    }
}

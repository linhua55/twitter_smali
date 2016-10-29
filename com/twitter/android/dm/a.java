package com.twitter.android.dm;

import android.view.View;
import bbu;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
public class a implements as {
    private final View b;
    private final View c;
    private boolean d;

    public a(View view) {
        this.c = view;
        this.b = view.findViewById(2131953281);
    }

    public void a(ao aoVar) {
        if (!this.d) {
            bbu.a(new TwitterScribeLog(bg.a().c().g()).b(new String[]{"messages", "share_tweet_user_select", "add_participant_warning", null, "impression"}));
            this.d = true;
        }
        i.a(this.b, 300);
    }

    public void b(ao aoVar) {
        i.b(this.b, 300, a());
    }

    private int a() {
        return this.c.getHeight();
    }
}

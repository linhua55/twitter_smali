package com.twitter.android.highlights;

import android.widget.Toast;
import com.twitter.android.nu;
import com.twitter.library.client.Session;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class ap implements nu {
    final /* synthetic */ ao a;
    private Session b;

    ap(ao aoVar) {
        this.a = aoVar;
    }

    public void a(Session session) {
        this.b = session;
    }

    protected void a(Session session, String str, String str2, String str3) {
        this.a.a(session, str, str2, str3);
    }

    public void a(long j, Tweet tweet, boolean z) {
        a(this.b, "story", "tweet", z ? "unretweet" : "retweet");
        ao.a(this.a, z);
        this.a.c = true;
    }

    public void a(long j, boolean z, boolean z2, boolean z3) {
        if (!z && !z3) {
            ao.a(this.a, !z2);
            this.a.c = false;
            Toast.makeText(ao.a(this.a), z2 ? 2131364021 : 2131364031, 1).show();
        }
    }

    public void b(long j, Tweet tweet, boolean z) {
        a(this.b, "story", "tweet", "quote");
    }

    public void c(long j, Tweet tweet, boolean z) {
        a(this.b, "retweet_dialog", null, "dismiss");
    }

    public void d(long j, Tweet tweet, boolean z) {
        a(this.b, "retweet_dialog", null, "impression");
    }
}

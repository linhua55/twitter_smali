package com.twitter.android.dm.cards.dmfeedbackcard;

import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;

/* compiled from: Twttr */
public class l {
    private final long a;
    private final long b;

    private l(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public static l a(long j) {
        return new l(bg.a().c().g(), j);
    }

    public void a(String str, String str2, String str3) {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.a).b("messages:thread", str, str2, str3)).a(this.b, str));
    }
}

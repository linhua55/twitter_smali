package com.twitter.library.util;

import android.content.Intent;
import com.twitter.util.aj;

/* compiled from: Twttr */
class ai {
    protected final String a;
    protected final String b;

    ai(String str) {
        this.a = str;
        this.b = TtmlNode.ANONYMOUS_REGION_ID;
    }

    ai(String str, String str2) {
        this.b = str;
        this.a = str2;
    }

    public void a(Intent intent) {
        intent.putExtra("android.intent.extra.TEXT", this.a);
        if (aj.b(this.b)) {
            intent.putExtra("android.intent.extra.SUBJECT", this.b);
        }
    }
}

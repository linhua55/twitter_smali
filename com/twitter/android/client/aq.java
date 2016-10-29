package com.twitter.android.client;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import bbu;
import com.twitter.android.client.chrome.a;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.aj;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import defpackage.any;
import defpackage.cbp;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
class aq extends p {
    private final Context a;
    private final String b;
    private final Tweet c;

    aq(Context context, String str, Tweet tweet) {
        this.a = context;
        this.b = str;
        this.c = tweet;
    }

    public void a() {
        if ((this.a instanceof Activity) && a.a((Activity) this.a)) {
            a.a((Activity) this.a, this.b, this.c);
        } else if (OpenUriHelper.a(this.a, this.b)) {
            if (aj.b(this.a)) {
                long g = bg.a().c().g();
                Map hashMap = new HashMap();
                hashMap.put("year_class", Integer.toString(any.a().b()));
                hashMap.put("os_version", Integer.toString(VERSION.SDK_INT));
                hashMap.put("manufacturer", Build.MANUFACTURER.toLowerCase());
                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(g).b(new String[]{"chrome::::fallback"})).f(com.twitter.library.util.aq.a(hashMap))).a(this.a, this.c, null, null));
            }
            OpenUriHelper.a(this.a, this.b, this.c);
        } else {
            c();
            OpenUriHelper.a(this.a, Uri.parse(this.b));
        }
    }

    public int b() {
        return 1;
    }

    private void c() {
        if (this.c != null && this.c.q()) {
            bbu.a(cbp.a(PromotedEvent.am, this.c.f).a());
            bbu.a(cbp.a(PromotedEvent.an, this.c.f).a());
            bbu.a(cbp.a(PromotedEvent.ao, this.c.f).a());
        }
    }
}

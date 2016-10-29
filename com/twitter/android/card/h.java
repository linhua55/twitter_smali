package com.twitter.android.card;

import android.content.Context;
import com.twitter.android.client.c;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.api.d;
import com.twitter.library.client.bg;
import com.twitter.library.client.u;
import com.twitter.library.scribe.NativeCardEvent;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.scribe.ScribeKeyValue;
import com.twitter.library.scribe.ScribeKeyValuesHolder;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.m;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.cgl;
import defpackage.cmb;
import java.util.Collections;

/* compiled from: Twttr */
public class h implements f {
    private final c a;
    private final Context b;
    private final long c;
    private TwitterScribeAssociation d;
    private TwitterScribeAssociation e;
    private String f;
    private Tweet g;
    private cmb h;
    private long i;

    public h(Context context) {
        this(context, c.a(context), bg.a().c().g());
    }

    h(Context context, c cVar, long j) {
        this.b = context;
        this.a = cVar;
        this.c = j;
    }

    public void a(String str) {
        this.f = str;
    }

    public void a(cmb cmb) {
        this.h = cmb;
    }

    public void a(long j) {
        this.i = j;
    }

    public void a(TwitterScribeAssociation twitterScribeAssociation) {
        this.d = twitterScribeAssociation;
    }

    public void b(TwitterScribeAssociation twitterScribeAssociation) {
        this.e = twitterScribeAssociation;
    }

    public TwitterScribeAssociation a() {
        return this.d;
    }

    public void a(Tweet tweet) {
        this.g = tweet;
    }

    public Tweet b() {
        return this.g;
    }

    TwitterScribeLog e(String str, String str2) {
        TwitterScribeLog g = g(str, str2);
        TwitterScribeItem twitterScribeItem = (TwitterScribeItem) g.c();
        if (twitterScribeItem == null) {
            return null;
        }
        String f = f(twitterScribeItem.n, ak.a());
        if (f != null) {
            g.a("3", f);
        }
        return g;
    }

    TwitterScribeLog a(String str, String str2, String str3) {
        String a = ak.a();
        d a2 = u.a.a();
        String f = f(str, a);
        TwitterScribeLog g = g(str2, str3);
        g.h("app_download_client_event");
        if (a != null) {
            g.a("4", a);
        }
        if (f != null) {
            g.a("3", f);
        }
        if (a2 != null) {
            g.a("6", a2.a());
            g.a(a2.b());
        }
        return g;
    }

    public void a(String str, String str2, NativeCardUserAction nativeCardUserAction) {
        bbu.a(f(str, str2, nativeCardUserAction));
    }

    public void a(String str, String str2) {
        c(str, str2, null);
    }

    public void c(String str, String str2, NativeCardUserAction nativeCardUserAction) {
        bbw f = f(str, str2, nativeCardUserAction);
        TwitterScribeItem twitterScribeItem = (TwitterScribeItem) f.c();
        if (twitterScribeItem != null) {
            String str3 = twitterScribeItem.n;
            String a = ak.a();
            d a2 = u.a.a();
            str3 = f(str3, a);
            if (str3 != null) {
                f.a("3", str3);
            }
            bbu.a(f);
            TwitterScribeLog f2 = f(str, str2, nativeCardUserAction);
            f2.h("app_download_client_event");
            if (a != null) {
                f2.a("4", a);
            }
            if (str3 != null) {
                f2.a("3", str3);
            }
            if (a2 != null) {
                f2.a("6", a2.a());
                f2.a(a2.b());
            }
            bbu.a(f2.e());
        }
    }

    String f(String str, String str2) {
        if (aj.a((CharSequence) str) || aj.a((CharSequence) str2)) {
            return null;
        }
        return aq.a(str, str2);
    }

    public void a(String str, String str2, Tweet tweet) {
        cgl aa = tweet.aa();
        if (aa == null || !aa.b().equals("2586390716:message_me")) {
            b(str, str2);
        } else {
            d(str, str2, null);
        }
    }

    public void d(String str, String str2, NativeCardUserAction nativeCardUserAction) {
        bbu.a(f(str, str2, nativeCardUserAction).a(null, nativeCardUserAction, new ScribeKeyValuesHolder(Collections.singletonList(new ScribeKeyValue("viewing_user_id", String.valueOf(this.c))))));
    }

    public void b(String str, String str2) {
        e(str, str2, null);
    }

    public void e(String str, String str2, NativeCardUserAction nativeCardUserAction) {
        bbu.a(f(str, str2, nativeCardUserAction));
    }

    public void c(String str, String str2) {
        bbw h = h(str, str2);
        bbu.a(h);
        TwitterScribeItem twitterScribeItem = (TwitterScribeItem) h.c();
        if (twitterScribeItem != null) {
            String str3 = twitterScribeItem.n;
            String a = ak.a();
            d a2 = u.a.a();
            if (aj.b((CharSequence) str3) && aj.b((CharSequence) a)) {
                bbw h2 = h(str, str2);
                h2.h("app_download_client_event");
                h2.a("4", a);
                h2.a("3", aq.a(str3, a));
                if (a2 != null) {
                    h2.a("6", a2.a());
                    h2.a(a2.b());
                }
                bbu.a(h2);
            }
        }
    }

    public void b(String str, String str2, NativeCardUserAction nativeCardUserAction) {
        String d = d();
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.c).a(this.b, this.g, this.d, str).b(d + "::tweet:" + str2 + ":" + "open_web_view_card")).a(this.f, nativeCardUserAction).a(this.d));
    }

    public void b(String str) {
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.c).a(this.b, this.g, this.d, null).b("tweet:::platform_promotion_card:open_link")).a(this.d)).b(str, null)).g(null)).l(c()));
    }

    public void d(String str, String str2) {
        this.a.b(this.b, str, e("installed_app", str2), a(str, "installed_app", str2), this.g != null ? this.g.f : null, m.b(), (long) com.twitter.config.d.a("post_installed_logging_timeframe", 1800000), (long) com.twitter.config.d.a("post_installed_logging_polling_interval", 600000));
    }

    private TwitterScribeLog f(String str, String str2, NativeCardUserAction nativeCardUserAction) {
        if (this.h != null) {
            return a(str, nativeCardUserAction);
        }
        return g(str, str2, nativeCardUserAction);
    }

    private TwitterScribeLog g(String str, String str2, NativeCardUserAction nativeCardUserAction) {
        String d = d();
        String b = Tweet.b(this.g);
        return (TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.c).a(this.b, this.g, this.d, null).b(d, null, b, str2, str)).a(this.d)).a(this.f, nativeCardUserAction).l(c());
    }

    private TwitterScribeLog a(String str, NativeCardUserAction nativeCardUserAction) {
        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.c).b("profile", null, "spotlight", "platform_card", str)).a(this.b, "app", this.h, this.i).a(this.f, nativeCardUserAction).l(c());
        if (this.i > 0) {
            twitterScribeLog.j(String.valueOf(this.i));
            twitterScribeLog.b(true);
        }
        return twitterScribeLog;
    }

    private TwitterScribeLog g(String str, String str2) {
        return f(str, str2, null);
    }

    private TwitterScribeLog h(String str, String str2) {
        return h(str, str2, null);
    }

    private TwitterScribeLog h(String str, String str2, NativeCardUserAction nativeCardUserAction) {
        TwitterScribeLog a = new TwitterScribeLog(this.c).a(this.b, this.g, this.d, null);
        String[] strArr = new String[1];
        strArr[0] = ScribeLog.a("tweet::tweet", str2, str);
        return (TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) a.b(strArr)).a("tweet::tweet::impression")).a(this.e)).a(this.f, nativeCardUserAction).l(c());
    }

    String c() {
        return com.twitter.util.c.f(this.b) ? "2" : "1";
    }

    public void a(PromotedEvent promotedEvent) {
        a(promotedEvent, null);
    }

    public void a(PromotedEvent promotedEvent, NativeCardUserAction nativeCardUserAction) {
        if (this.g != null && this.g.f != null) {
            this.a.a(promotedEvent, this.g.f, a(nativeCardUserAction));
        }
    }

    private String a(NativeCardUserAction nativeCardUserAction) {
        if (nativeCardUserAction == null && aj.a(this.f)) {
            return null;
        }
        NativeCardEvent nativeCardEvent = new NativeCardEvent(this.f);
        if (nativeCardUserAction != null) {
            nativeCardEvent.a(nativeCardUserAction);
        }
        return nativeCardEvent.toString();
    }

    private String d() {
        if (this.d != null) {
            return this.d.a();
        }
        return "tweet";
    }
}

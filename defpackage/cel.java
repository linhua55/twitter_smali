package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import bbu;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.api.d;
import com.twitter.library.client.u;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.ap;
import com.twitter.model.core.b;
import com.twitter.model.core.q;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.object.e;
import com.twitter.util.object.g;

/* compiled from: Twttr */
/* renamed from: cel */
public class cel {
    private final Context a;
    private final g<Long> b;
    private final TwitterScribeAssociation c;
    private final TwitterScribeAssociation d;
    private final g<Tweet> e;

    public cel(Context context, g<Long> gVar, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2, g<Tweet> gVar2) {
        this.a = context.getApplicationContext();
        this.b = gVar;
        this.c = twitterScribeAssociation;
        this.d = twitterScribeAssociation2;
        this.e = gVar2;
    }

    public void a(String str, String str2) {
        TwitterScribeLog b = b(str, str2);
        bbu.a(b);
        TwitterScribeItem twitterScribeItem = (TwitterScribeItem) b.c();
        if (twitterScribeItem != null) {
            Object obj = twitterScribeItem.n;
            String e = e();
            d f = f();
            if (aj.b(obj) && aj.b(e)) {
                TwitterScribeLog b2 = b(str, str2);
                b2.h("app_download_client_event");
                b2.a("4", e);
                b2.a("3", aq.a(obj, e));
                if (f != null) {
                    b2.a("6", f.a());
                    b2.a(f.b());
                }
                bbu.a(b2);
            }
        }
    }

    public void a(q qVar) {
        a(PromotedEvent.e);
        bbu.a(((TwitterScribeLog) a(null, "hashtag", "search").g(qVar.c)).a(this.d));
    }

    public void a(b bVar) {
        a(PromotedEvent.u);
        bbu.a(((TwitterScribeLog) a(null, "cashtag", "search").g(bVar.c)).a(this.d));
    }

    public void a(ap apVar) {
        a(PromotedEvent.f);
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) a(null, TtmlNode.ANONYMOUS_REGION_ID, "mention_click").g(apVar.i)).b(TwitterScribeItem.a(apVar.i))).a(this.d));
    }

    public void a() {
        bbu.a(a("tweet", "quoted_tweet", "click").a(this.c));
    }

    public void b() {
        bbu.a(a("tweet", "tweet_analytics", "click"));
    }

    public void c() {
        a(PromotedEvent.c);
        g();
    }

    public void d() {
        a(PromotedEvent.d);
        g();
    }

    private void g() {
        Tweet tweet = (Tweet) this.e.b();
        bbu.a(a(null, "avatar", "profile_click").a(tweet.s, tweet.f, null).a(this.c));
    }

    private TwitterScribeLog b(String str, String str2) {
        return (TwitterScribeLog) ((TwitterScribeLog) a(null, str, str2).a("tweet::tweet::impression")).a(this.d);
    }

    private TwitterScribeLog a(String str, String str2, String str3) {
        Tweet tweet = (Tweet) this.e.b();
        String str4 = (String) e.b(str, Tweet.b(tweet));
        return (TwitterScribeLog) new TwitterScribeLog(((Long) this.b.b()).longValue()).a(this.a, tweet, this.c, null).b(new String[]{TwitterScribeLog.a(this.c, str4, str2, str3)});
    }

    void a(PromotedEvent promotedEvent) {
        Tweet tweet = (Tweet) this.e.b();
        if (tweet != null && tweet.f != null) {
            bbu.a(cbp.a(promotedEvent, tweet.f).a());
        }
    }

    @VisibleForTesting
    String e() {
        return ak.a();
    }

    @VisibleForTesting
    d f() {
        return u.a.a();
    }
}

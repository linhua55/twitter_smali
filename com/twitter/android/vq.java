package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import cdy;
import com.twitter.android.av.bd;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.library.api.d;
import com.twitter.library.av.playback.be;
import com.twitter.library.client.Session;
import com.twitter.library.client.u;
import com.twitter.library.provider.ck;
import com.twitter.library.scribe.ScribeAssociation;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.library.view.c;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.cr;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.object.ObjectUtils;
import defpackage.bbu;
import defpackage.bdj;
import defpackage.cgl;
import defpackage.cpb;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class vq extends c {
    private final WeakReference<Activity> a;
    private final Context b;
    private final Session c;
    private final String d;
    private final String e;
    private final TwitterScribeAssociation f;

    public vq(Activity activity, Session session, String str, String str2, TwitterScribeAssociation twitterScribeAssociation) {
        this.a = new WeakReference(activity);
        this.b = activity.getApplicationContext();
        this.c = session;
        this.d = str;
        this.e = str2;
        this.f = twitterScribeAssociation;
    }

    public void a(Tweet tweet, cr crVar) {
        a(tweet, crVar, this.d, this.f);
    }

    private void a(TwitterScribeLog twitterScribeLog) {
        String a = ak.a();
        d a2 = u.a.a();
        TwitterScribeItem twitterScribeItem = (TwitterScribeItem) twitterScribeLog.c();
        twitterScribeLog.h("app_download_client_event");
        if (aj.b((CharSequence) a)) {
            twitterScribeLog.a("3", aq.a(twitterScribeItem.n, a));
            twitterScribeLog.a("4", a);
        }
        if (a2 != null) {
            twitterScribeLog.a("6", a2.a());
            twitterScribeLog.a(a2.b());
        }
        bbu.a(twitterScribeLog.e());
    }

    public void a(Activity activity, Tweet tweet, boolean z, TwitterScribeAssociation twitterScribeAssociation) {
        if (z) {
            new bd().a(tweet).a(twitterScribeAssociation).c(false).e(bdj.a((Context) activity).k()).a((Object) activity);
        } else {
            activity.startActivityForResult(new Intent(activity, TweetActivity.class).setData(ck.b(tweet.H, this.c.g())).putExtra("association", twitterScribeAssociation), 9153);
        }
    }

    public void a(Tweet tweet, cr crVar, String str, TwitterScribeAssociation twitterScribeAssociation) {
        Context context = (Activity) this.a.get();
        if (context == null) {
            return;
        }
        if (tweet != null) {
            int i;
            cgl aa = tweet.aa();
            MediaEntity c = cpb.c(tweet.w.d);
            if (!be.d(tweet) || ((aa == null || !ObjectUtils.a(aa.c(), (Object) crVar)) && (c == null || !aj.a(c.B, crVar.B)))) {
                boolean z = false;
            } else {
                i = 1;
            }
            if (i != 0) {
                a((Activity) context, tweet, false, twitterScribeAssociation);
                return;
            }
            if (cdy.b(tweet) && aj.b(TwitterScribeItem.a(this.b, tweet, twitterScribeAssociation, null).n)) {
                TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.c.g());
                twitterScribeLog.b(str);
                twitterScribeLog.a(this.b, tweet, twitterScribeAssociation, null);
                twitterScribeLog.a((ScribeAssociation) twitterScribeAssociation);
                twitterScribeLog.g(this.e);
                a(twitterScribeLog);
            }
            OpenUriHelper.a(context, tweet, crVar, this.c.g(), str, null, twitterScribeAssociation, this.e);
            return;
        }
        OpenUriHelper.a(context, null, crVar, this.c.g(), str, null, twitterScribeAssociation, this.e);
    }
}

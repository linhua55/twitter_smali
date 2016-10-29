package com.twitter.android;

import android.content.Context;
import android.os.Bundle;
import bbu;
import cni;
import com.twitter.android.client.c;
import com.twitter.android.timeline.aw;
import com.twitter.android.timeline.cd;
import com.twitter.android.timeline.z;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.api.d;
import com.twitter.library.api.timeline.w;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.client.u;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.scribe.e;
import com.twitter.library.scribe.h;
import com.twitter.library.util.aq;
import com.twitter.model.core.Tweet;
import com.twitter.model.timeline.bc;
import com.twitter.model.timeline.cr;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.MutableSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public class vn extends id {
    private final List<Long> b;
    private final List<TwitterScribeItem> c;
    private final List<TwitterScribeItem> d;
    private final Set<String> e;
    private final Set<Long> f;
    private final c g;
    private final Context h;
    private final TwitterScribeAssociation i;
    private final TwitterScribeItem j;
    private int k;

    public vn(Context context, TwitterScribeAssociation twitterScribeAssociation, int i, TwitterScribeItem twitterScribeItem, c cVar, bg bgVar) {
        super(bgVar);
        this.b = MutableList.a();
        this.c = MutableList.a();
        this.d = MutableList.a();
        this.e = MutableSet.a();
        this.f = MutableSet.a();
        this.k = -1;
        this.g = cVar;
        this.h = context.getApplicationContext();
        this.i = twitterScribeAssociation;
        this.k = i;
        this.j = twitterScribeItem;
    }

    private void b(long j, String str) {
        if (!this.d.isEmpty()) {
            String a = ak.a();
            d a2 = u.a.a();
            for (TwitterScribeItem twitterScribeItem : this.d) {
                TwitterScribeLog twitterScribeLog = new TwitterScribeLog(j);
                twitterScribeLog.b(new String[]{str});
                twitterScribeLog.a(this.j);
                twitterScribeLog.a(twitterScribeItem);
                twitterScribeLog.h("app_download_client_event");
                if (aj.b(a)) {
                    twitterScribeLog.a("3", aq.a(twitterScribeItem.n, a));
                    twitterScribeLog.a("4", a);
                }
                if (a2 != null) {
                    twitterScribeLog.a("6", a2.a());
                    twitterScribeLog.a(a2.b());
                }
                bbu.a(twitterScribeLog);
            }
            this.d.clear();
        }
    }

    public void a(long j, String str) {
        if (!this.c.isEmpty()) {
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).b(new String[]{str})).a(this.j)).b(this.c));
            b(j, str);
            this.c.clear();
        }
    }

    public void b(long j) {
        if (j != 0) {
            Session b = this.a.b(j);
            Object obj = this.b;
            if (!obj.isEmpty()) {
                az.a(this.h).a(new w(this.h, b, this.k, obj));
                obj.clear();
            }
        }
    }

    private boolean b(Tweet tweet, Bundle bundle) {
        boolean z;
        if (tweet.g || !a(tweet.P)) {
            z = false;
        } else {
            this.b.add(Long.valueOf(tweet.P));
            c(tweet, bundle);
            z = true;
        }
        cni cni = tweet.f;
        if (!(cni == null || this.e.contains(cni.c))) {
            this.g.a(PromotedEvent.a, cni);
            this.e.add(cni.c);
        }
        return z;
    }

    private void c(Tweet tweet, Bundle bundle) {
        TwitterScribeItem a = TwitterScribeItem.a(this.h, tweet, this.i, a(tweet));
        a.b = tweet.A;
        a.g = bundle.getInt("position") + 1;
        if (bundle.containsKey("ad_slot_id") && com.twitter.config.d.a("ad_formats_slot_details_client_event_enabled")) {
            a.ak = (e) new h().a(bundle.getString("ad_slot_id")).q();
        }
        this.c.add(a);
        if (a.i == 6 && aj.b(a.n)) {
            this.d.add(a);
        }
    }

    public static String a(Tweet tweet) {
        if (tweet.H()) {
            return "focal";
        }
        if (tweet.G()) {
            return "ancestor";
        }
        return null;
    }

    public void a(Tweet tweet, Bundle bundle) {
        b(tweet, bundle);
    }

    public void a(Bundle bundle) {
        try {
            long parseLong = Long.parseLong(bundle.getString("ad_slot_id"));
            if (this.f.add(Long.valueOf(parseLong))) {
                TwitterScribeItem a = TwitterScribeItem.a(parseLong);
                a.g = bundle.getInt("position") + 1;
                this.c.add(a);
            }
        } catch (NumberFormatException e) {
        }
    }

    public boolean a(aw awVar, Tweet tweet, Bundle bundle) {
        int i = tweet.ab;
        if (bc.m(i) && (awVar instanceof z)) {
            return a((z) awVar, tweet, bundle);
        }
        if (bc.o(i) && (awVar instanceof cd)) {
            return a((cd) awVar, tweet, bundle);
        }
        return false;
    }

    private boolean a(z zVar, Tweet tweet, Bundle bundle) {
        String str = null;
        if (b(tweet, bundle)) {
            com.twitter.model.timeline.w wVar = zVar.b;
            if (!wVar.d.isEmpty() && ((Long) wVar.d.get(0)).longValue() == tweet.t) {
                com.twitter.model.timeline.aj ajVar = wVar.c;
                String str2 = ajVar != null ? ajVar.e : null;
                az a = az.a(this.h);
                Context context = this.h;
                Session c = this.a.c();
                TwitterScribeAssociation twitterScribeAssociation = this.i;
                if (this.i != null) {
                    str = this.i.a();
                }
                a.a(new com.twitter.android.timeline.aq(context, c, twitterScribeAssociation, str, str2, 1, zVar.d()));
                return true;
            }
        }
        return false;
    }

    private boolean a(cd cdVar, Tweet tweet, Bundle bundle) {
        if (b(tweet, bundle)) {
            cr crVar = cdVar.c;
            if (crVar.e != null) {
                TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.a.c().g());
                String[] strArr = new String[5];
                strArr[0] = this.i != null ? this.i.a() : null;
                strArr[1] = null;
                strArr[2] = crVar.e.e;
                strArr[3] = null;
                strArr[4] = "impression";
                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) twitterScribeLog.b(strArr)).a(this.i)).b(CollectionUtils.d(new TwitterScribeItem[]{TwitterScribeItem.a(this.h, tweet, this.i, null)})));
                return true;
            }
        }
        return false;
    }
}

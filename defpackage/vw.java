package defpackage;

import android.content.Context;
import bbn;
import bbu;
import bmx;
import bno;
import bvs;
import bvt;
import com.twitter.library.api.search.a;
import com.twitter.library.api.upload.s;
import com.twitter.library.api.upload.z;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.media.manager.i;
import com.twitter.library.media.util.TweetImageVariant;
import com.twitter.library.network.ap;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import com.twitter.library.service.q;
import com.twitter.library.service.t;
import com.twitter.library.util.InvalidDataException;
import com.twitter.media.model.MediaFile;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.ca;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;
import com.twitter.model.drafts.d;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
/* renamed from: vw */
public class vw extends z {
    private final String a;
    private final d b;
    private final LinkedHashMap<Long, MediaFile> c;
    private cm i;
    private final com.twitter.util.z<bmx> j;
    private final String k;

    public vw(Context context, Session session, d dVar, LinkedHashMap<Long, MediaFile> linkedHashMap, String str, com.twitter.util.z<bmx> zVar) {
        super(context, vw.class.getName(), session);
        this.b = dVar;
        this.c = linkedHashMap;
        this.a = str;
        this.j = zVar;
        this.k = "TweetPosterOperation_" + dVar.b;
        h(2);
        a(new k().a(new q(1)).a(new l(context)).a(new t(t.b, t.c, (int) TimeUnit.HOURS.toMillis(24))));
    }

    public cm a() {
        return this.i;
    }

    public StringBuilder b() {
        return s.a(this.q);
    }

    public ap e() {
        boolean z;
        boolean z2 = false;
        ab N = N();
        bvt a = bvs.a();
        if (N != null) {
            Session c = bg.a().c(N.a);
            if (c != null && a.a(c) && a.c(c)) {
                z2 = true;
            }
            z = z2;
        } else {
            z = false;
        }
        List arrayList = new ArrayList(this.c.keySet());
        ap apVar = new ap();
        s.a(apVar, this.q, this.b, arrayList, this.a, z);
        return apVar;
    }

    protected void a(aa aaVar) {
        a(100);
        com.twitter.library.api.t a = v.a(cm.class);
        if (!isCancelled()) {
            StringBuilder b = b();
            ap e = e();
            com.twitter.library.api.upload.ab a2 = new com.twitter.library.api.upload.ab(this.p, N()).a(a);
            if (com.twitter.config.d.a("android_tweet_post_body_enabled")) {
                String c = e.c();
                bbn.a().b("tweet_poster_body", c);
                a2.a(c);
            } else {
                b.append(e.b());
            }
            bbn.a().b("tweet_poster_url", b);
            a2.a(b);
            w();
            a2.a(a2.a().c(), aaVar);
            x();
        }
        a(7500);
        ab abVar = (ab) e.a(N());
        long j = abVar.c;
        boolean b2 = aaVar.b();
        aaVar.c.putBoolean("IsRetriedDuplicateTweet", a(aaVar, a));
        if (b2) {
            this.i = (cm) a.b();
            if (this.i != null) {
                long bf_ = this.i.bf_();
                this.o.putLong("status_id", bf_);
                if (isCancelled()) {
                    az.a(this.p).a(new bno(this.p, abVar, bf_), null);
                } else {
                    vw.a(this.p, this.b, this.c, this.i);
                    a(8500);
                    S().a(this.i, j, T());
                    a(9500);
                    if (!this.i.e.e.c()) {
                        Collection hashSet = new HashSet(this.i.e.e.b());
                        Iterator it = this.i.e.e.iterator();
                        while (it.hasNext()) {
                            hashSet.add(Long.valueOf(((com.twitter.model.core.ap) it.next()).c));
                        }
                        b(new a(this.p, abVar, CollectionUtils.e(hashSet)));
                    }
                }
            } else {
                bbn.a(new InvalidDataException("Received null status."));
            }
        } else {
            a("custom_errors", cd.a((cd) a.c()));
            com.twitter.internal.network.k g = aaVar.g();
            if (g != null && g.a == 400) {
                aaVar.c.putBoolean("MediaExpired", true);
            }
            if (aaVar.i() == null) {
                aaVar.a(a.a());
            }
        }
        a(10000);
    }

    private static void a(Context context, d dVar, Map<Long, MediaFile> map, cm cmVar) {
        if (!cmVar.e.d.c() && !map.isEmpty()) {
            com.twitter.model.core.z zVar = cmVar.e.d;
            if (map.size() != zVar.b()) {
                bbn.a(new Exception(String.format("The size of the local output media (%d) was not the same as the media returned from the request (%d) for draft ID (%d) and status ID (%d)", new Object[]{Integer.valueOf(map.size()), Integer.valueOf(zVar.b()), Long.valueOf(dVar.b), Long.valueOf(cmVar.b)})));
            }
            i b = com.twitter.library.media.manager.l.a(context).b();
            for (int i = 0; i < zVar.b(); i++) {
                MediaEntity mediaEntity = (MediaEntity) zVar.a(i);
                MediaFile mediaFile = (MediaFile) map.get(Long.valueOf(mediaEntity.c));
                if (mediaFile != null) {
                    b.a(TweetImageVariant.a(mediaEntity.l, TweetImageVariant.d), mediaFile.d);
                }
            }
        }
    }

    public d f() {
        return this.b;
    }

    private boolean a(aa aaVar, com.twitter.library.api.t<cm, cd> tVar) {
        if (aaVar.b()) {
            return false;
        }
        if (M() != 3) {
            return false;
        }
        cd cdVar = (cd) tVar.c();
        if (cdVar == null) {
            return false;
        }
        Iterator it = cdVar.iterator();
        while (it.hasNext()) {
            if (((ca) it.next()).b == 187) {
                return true;
            }
        }
        return false;
    }

    public void b(com.twitter.internal.android.service.ab<aa> abVar) {
        super.b(abVar);
        h(3);
        a((aa) abVar.b(), this.b);
    }

    private void a(aa aaVar, d dVar) {
        String str = (dVar == null || dVar.d.isEmpty()) ? "no_media" : "has_media";
        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(N().c).b(new String[]{"app:twitter_service:tweet:create", "retry"})).i(str);
        com.twitter.internal.network.k g = aaVar.g();
        if (g != null) {
            TwitterScribeLog.a(this.p, twitterScribeLog, g);
            twitterScribeLog.a(aaVar.f().i().toString(), g);
        }
        bbu.a(twitterScribeLog);
    }

    public void a(int i) {
        Object a;
        if (i < 0) {
            a = bmx.a(this.k, 2);
        } else if (i >= 10000) {
            a = bmx.b(this.k, 2);
        } else {
            a = bmx.a(this.k, 2, i);
        }
        this.j.a(a);
    }
}

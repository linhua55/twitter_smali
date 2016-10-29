package com.twitter.library.av;

import android.content.Context;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.k;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.DynamicAdInfo;
import defpackage.bfi;
import defpackage.bfj;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

/* compiled from: Twttr */
public class af extends z {
    private final Context a;
    private final p b;
    private final bg c;
    private final ag d;
    private final f e;
    private final Set<String> f;

    public af(Context context, ag agVar, f fVar) {
        this(context, new p(az.a(context)), bg.a(), agVar, fVar, new HashSet());
    }

    af(Context context, p pVar, bg bgVar, ag agVar, f fVar, Set<String> set) {
        this.a = context.getApplicationContext();
        this.b = pVar;
        this.c = bgVar;
        this.d = agVar;
        this.e = fVar;
        this.f = set;
    }

    public void a(List<a> list) {
        a((List) list, null);
    }

    public void a(List<a> list, DynamicAd dynamicAd) {
        bfj bfj = new bfj(this.a, this.c.c());
        bfj.a(dynamicAd);
        Iterator it = new ArrayList(list).iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            String l = Long.toString(aVar.a);
            if (!(this.d.a(aVar) || this.f.contains(l))) {
                bfj.a(aVar);
                this.f.add(l);
            }
        }
        for (bfi a : bfj.a()) {
            this.b.a(a, this);
        }
    }

    public void a(x xVar) {
        super.a(xVar);
        f(xVar);
        if (xVar.U()) {
            e(xVar);
        } else {
            d(xVar);
        }
    }

    private void d(x xVar) {
        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).b(new String[]{":::dynamic_video_ads:dynamic_preroll_request_error"});
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.J = c(xVar);
        twitterScribeLog.a(twitterScribeItem);
        this.e.a(this.a, twitterScribeLog);
    }

    private void e(x xVar) {
        if (xVar instanceof bfi) {
            bfi bfi = (bfi) xVar;
            List e = bfi.e();
            for (Entry entry : bfi.b().entrySet()) {
                if (entry.getValue() != null) {
                    this.d.a(Long.toString(((Long) entry.getKey()).longValue()), a(e, ((Long) entry.getKey()).longValue()), (DynamicAdInfo) entry.getValue());
                }
            }
        }
    }

    private void f(x xVar) {
        if (xVar instanceof bfi) {
            List<a> e = ((bfi) xVar).e();
            if (e != null) {
                for (a aVar : e) {
                    if (aVar != null) {
                        this.f.remove(Long.toString(aVar.a));
                    }
                }
            }
        }
    }

    protected static String c(x xVar) {
        k g;
        ab l = xVar.l();
        aa aaVar = l != null ? (aa) l.b() : null;
        if (aaVar != null) {
            g = aaVar.g();
        } else {
            g = null;
        }
        if (g == null) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        return String.format("Network error. status code: %d", new Object[]{Integer.valueOf(g.a)});
    }

    private a a(List<a> list, long j) {
        for (a aVar : list) {
            if (aVar.a == j) {
                return aVar;
            }
        }
        return null;
    }

    public List<a> a() {
        return this.b.a();
    }
}

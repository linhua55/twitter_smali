package com.twitter.library.vineloops;

import android.content.Context;
import bbl;
import bbn;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.k;
import com.twitter.library.network.an;
import com.twitter.library.network.j;
import com.twitter.library.service.aa;
import com.twitter.library.service.m;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpEntity;
import org.apache.http.entity.StringEntity;
import org.json.JSONObject;

/* compiled from: Twttr */
class e extends AsyncOperation<Void, aa> {
    final /* synthetic */ c a;
    private final Context b;
    private final String c;
    private final String g;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    e(c cVar, Context context) {
        this.a = cVar;
        super(e.class.getName());
        this.b = context.getApplicationContext();
        this.c = an.a(this.b).e.toString();
        this.g = String.format("%s/%s", new Object[]{"tw_android", r0.g});
        a(new m(5, 10000, 600000, TimeUnit.MILLISECONDS, c.a, c.b));
    }

    protected aa a() {
        VineLoopAggregator a = VineLoopAggregator.a(this.b);
        List b = a.b();
        aa aaVar = new aa();
        aaVar.a(true);
        if (!b.isEmpty()) {
            try {
                JSONObject a2 = c.a(b);
                f fVar = new f();
                try {
                    HttpOperation a3 = a(a2, fVar);
                    a3.a("User-Agent", this.c);
                    a3.a("X-Vine-Client", this.g);
                    a3.c();
                    k l = a3.l();
                    if (a3.k()) {
                        this.a.a(fVar.d().intValue());
                    } else {
                        if (!(l.d || l.a == 0)) {
                            bbn.a(new bbl().a("statusCode", Integer.valueOf(l.a)).a("json", a2).a(new Throwable()));
                        }
                        a.a(b);
                        this.a.a(AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
                        aaVar.a(l.a);
                    }
                } catch (Throwable e) {
                    bbn.a(new bbl().a("json", a2).a(e));
                }
            } catch (Throwable e2) {
                bbn.a(new bbl().a("records", b).a(e2));
            }
        }
        return aaVar;
    }

    protected aa b() {
        aa aaVar = new aa();
        aaVar.a(false);
        return aaVar;
    }

    HttpOperation a(JSONObject jSONObject, f fVar) throws UnsupportedEncodingException {
        HttpEntity stringEntity = new StringEntity(jSONObject.toString(), Util.UTF_8);
        stringEntity.setContentType("application/json");
        return new j(this.b, "https://api.vineapp.com/loops").a(RequestMethod.b).a(stringEntity).a(fVar).d(false).a();
    }
}

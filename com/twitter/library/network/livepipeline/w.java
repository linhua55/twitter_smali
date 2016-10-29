package com.twitter.library.network.livepipeline;

import android.content.Context;
import com.google.android.exoplayer.DefaultLoadControl;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.bg;
import com.twitter.library.service.c;
import com.twitter.model.livepipeline.e;
import com.twitter.util.aj;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import rx.r;

/* compiled from: Twttr */
public class w extends ag<aa> {
    private final r<e> b;
    protected final Set<String> c;

    protected /* synthetic */ c f() {
        return v();
    }

    w(r<e> rVar, Context context, long j) {
        super(context, w.class.getName(), bg.a().c(), ag.a(j));
        this.b = rVar;
        this.c = new HashSet();
        a(ExecutionClass.b);
        g(true);
        g(DefaultLoadControl.DEFAULT_HIGH_WATERMARK_MS);
    }

    public void a(String str) {
        this.c.add(str);
    }

    protected void b() {
    }

    protected Map<String, String> g() {
        return (Map) com.twitter.util.collection.r.d().b("Accept", "text/event-stream").q();
    }

    protected Map<String, String> h() {
        return (Map) com.twitter.util.collection.r.d().b("topic", s()).q();
    }

    protected String s() {
        return aj.a(",", this.c.toArray());
    }

    protected RequestMethod t() {
        return RequestMethod.a;
    }

    protected String u() {
        return "live_pipeline/events";
    }

    protected aa v() {
        return new x(this, this.b);
    }

    public String e() {
        return "lp::connection:";
    }
}

package com.twitter.android.client.tweetuploadmanager;

import android.content.Context;
import bbn;
import bmu;
import bmx;
import com.twitter.library.api.upload.aa;
import com.twitter.library.api.upload.i;
import com.twitter.library.client.Session;
import com.twitter.library.resilient.b;
import com.twitter.library.resilient.h;
import com.twitter.model.core.cm;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.drafts.d;
import com.twitter.util.al;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.concurrent.j;
import com.twitter.util.z;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import wb;

/* compiled from: Twttr */
public class c implements b {
    public static final long a;
    private volatile boolean b;
    private String c;
    private final Context d;
    private wb e;
    private j<?> f;
    private final long g;
    private final boolean h;
    private boolean i;
    private d j;
    private final d k;
    private List<aa> l;
    private cm m;
    private final com.twitter.library.resilient.d n;
    private bmu o;
    private int p;
    private final Session q;
    private final boolean r;
    private JSONArray s;

    static {
        a = TimeUnit.HOURS.toMillis(11);
    }

    public c(Context context, Session session, long j, int i) {
        this.r = i.a();
        this.b = false;
        this.d = context.getApplicationContext();
        this.q = session;
        this.g = j;
        this.h = false;
        this.i = false;
        this.p = i;
        this.k = new d();
        this.n = h.a(this.d).a(this, 1, session.g());
        this.o = new bmu(TweetUploadManager$TweetUploadState.values().length, Long.toString(this.g), 2, true);
    }

    public c(Context context, Session session, com.twitter.library.resilient.d dVar) throws JSONException {
        boolean z = false;
        this.r = i.a();
        com.twitter.util.h.c();
        this.b = false;
        this.d = context.getApplicationContext();
        this.q = session;
        this.n = dVar;
        this.i = false;
        JSONObject a = dVar.a();
        this.g = a.getLong("draftId");
        this.p = a.getInt("remainingResetsAllowed");
        this.k = new d();
        this.s = a.optJSONArray("tweetMediaInfo");
        this.c = a.optString("cardUri");
        if (this.n.c() + a < al.b()) {
            z = true;
        }
        this.h = z;
        this.o = new bmu(TweetUploadManager$TweetUploadState.values().length, Long.toString(this.g), 2, true);
    }

    void a() {
        this.o.a();
    }

    void b() {
        this.o.b();
    }

    synchronized boolean c() {
        boolean z;
        com.twitter.util.h.c();
        this.b = true;
        this.o.a();
        z = false;
        if (this.e != null) {
            if (this.f != null) {
                this.f.cancel(true);
                z = true;
            }
            this.e.a(this);
        }
        return z;
    }

    public String d() {
        return this.c;
    }

    public Context e() {
        return this.d;
    }

    public long f() {
        return this.g;
    }

    public d g() {
        return this.j;
    }

    public d h() {
        return this.k;
    }

    public cm i() {
        return this.m;
    }

    public com.twitter.library.resilient.d j() {
        try {
            a(this.n.a(), false);
            return this.n;
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }

    public z<bmx> k() {
        return this.o;
    }

    public Session l() {
        return this.q;
    }

    public boolean m() {
        return this.b;
    }

    public boolean n() {
        return this.h;
    }

    public void a(Context context) {
        TweetUploadManager.b(this);
    }

    public void b(Context context) {
        TweetUploadManager.a(this);
    }

    public void a(String str) {
        this.c = str;
    }

    void a(wb wbVar, j<?> jVar) {
        this.e = wbVar;
        this.f = jVar;
    }

    public void a(d dVar) {
        this.j = dVar;
        if (dVar == null) {
            this.l = null;
            return;
        }
        List<DraftAttachment> list = dVar.d;
        int size = list.size();
        n a = n.a(size);
        if (this.s == null) {
            for (DraftAttachment aaVar : list) {
                a.c(new aa(aaVar));
            }
        } else {
            for (int i = 0; i < size; i++) {
                try {
                    a.c(new aa(this.d, (DraftAttachment) list.get(i), this.s.getJSONObject(i)));
                } catch (Throwable e) {
                    bbn.a(e);
                }
            }
            this.s = null;
        }
        this.l = (List) a.q();
    }

    public void a(boolean z) {
        this.i = z;
    }

    public void a(cm cmVar) {
        this.m = cmVar;
    }

    public List<aa> o() {
        if (this.l != null) {
            return this.l;
        }
        throw new IllegalStateException("Accessing uploadable media before draft tweet is loaded");
    }

    public boolean p() {
        return this.r;
    }

    int q() {
        int i = this.p - 1;
        this.p = i;
        return i;
    }

    public void a(JSONObject jSONObject, boolean z) throws JSONException {
        boolean z2 = true;
        jSONObject.put("persistenceVersion", 1);
        jSONObject.put("draftId", this.g);
        jSONObject.put("remainingResetsAllowed", this.p);
        jSONObject.put("sessionUserId", this.q.g());
        jSONObject.put("cardUri", this.c);
        if (!CollectionUtils.b(this.l)) {
            JSONArray jSONArray = new JSONArray();
            for (aa a : this.l) {
                jSONArray.put(a.a());
            }
            jSONObject.put("tweetMediaInfo", jSONArray);
        }
        if (z) {
            boolean z3;
            String str = "loadedDraftTweetSet";
            if (this.j != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            jSONObject.put(str, z3);
            jSONObject.put("loggingInfo", this.k.d());
            String str2 = "outputStatusSet";
            if (this.m == null) {
                z2 = false;
            }
            jSONObject.put(str2, z2);
        }
    }

    public String b(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            a(jSONObject, z);
            return jSONObject.toString(3);
        } catch (Throwable e) {
            bbn.a(e);
            return e.getMessage();
        }
    }
}

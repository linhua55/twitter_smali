package com.twitter.android.smartfollow;

import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import com.twitter.android.twitterflows.j;
import com.twitter.app.common.di.InjectionScope;
import com.twitter.app.common.di.d;
import com.twitter.app.common.inject.n;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.bbw;
import java.util.List;

/* compiled from: Twttr */
public abstract class b<S extends Parcelable, T extends BaseSmartFollowScreen> implements d, n<S> {
    protected long a;
    T b;
    Context c;
    String d;
    com.twitter.android.twitterflows.b e;
    m f;
    SmartFollowFlowData g;
    j h;
    private String i;
    private boolean j;

    protected abstract String p();

    public final void a(T t) {
        this.b = t;
        q();
    }

    public final void a(m mVar) {
        this.f = mVar;
    }

    public final void a(SmartFollowFlowData smartFollowFlowData) {
        this.g = smartFollowFlowData;
    }

    public final void a(String str) {
        this.d = str;
    }

    public final void a(long j) {
        this.a = j;
    }

    public final void a(Context context) {
        this.c = context;
    }

    public final void a(com.twitter.android.twitterflows.b bVar) {
        this.e = bVar;
    }

    public void a(boolean z) {
        this.j = z;
    }

    public void b(String str) {
        this.i = str;
    }

    public void a(j jVar) {
        this.h = jVar;
    }

    protected final T b() {
        return (BaseSmartFollowScreen) e.a(this.b);
    }

    protected final m d() {
        return (m) e.a(this.f);
    }

    protected final SmartFollowFlowData e() {
        return (SmartFollowFlowData) e.a(this.g);
    }

    protected final com.twitter.android.twitterflows.b f() {
        return (com.twitter.android.twitterflows.b) e.a(this.e);
    }

    public Context g() {
        return (Context) e.a(this.c);
    }

    protected String h() {
        return (String) e.a(this.d);
    }

    protected String i() {
        return "smart_follow_flow";
    }

    public String j() {
        return this.i;
    }

    public boolean k() {
        return this.j;
    }

    public j l() {
        return (j) e.a(this.h);
    }

    public void m() {
        b().b(true);
    }

    public void n() {
        b().b(false);
    }

    public S c() {
        return null;
    }

    public void a(InjectionScope injectionScope) {
        if (injectionScope == InjectionScope.d) {
            a(null);
            a(null);
            a(null);
            a(null);
        } else if (injectionScope == InjectionScope.c) {
            this.b = null;
            this.c = null;
        }
    }

    protected void o() {
    }

    public void a(int i, int i2, Intent intent) {
    }

    protected final void a(String str, String str2) {
        a(str, str2, null);
    }

    protected final void a(String str, String str2, String str3) {
        a(str, str2, str3, null);
    }

    protected final void a(String str, String str2, String str3, List<TwitterScribeItem> list) {
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(this.a).b(h(), i(), p(), str, str2);
        if (aj.b((CharSequence) str3)) {
            bbw.f(str3);
        }
        if (list != null) {
            bbw.a((List) list);
        }
        bbu.a(bbw);
    }

    protected void q() {
        a(null, "impression");
    }

    protected void r() {
        a(null, "back");
    }

    public void s() {
        a(null, "skip");
        a(l().a(e()));
    }

    public void t() {
        a(null, "next");
        a(l().b(e()));
    }

    protected void a(com.twitter.android.twitterflows.d dVar) {
        if (dVar != null) {
            f().a(b(), dVar);
        } else {
            d().a();
        }
    }

    public void a(int i, String[] strArr, int[] iArr) {
    }
}

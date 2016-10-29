package com.twitter.android.profilecompletionmodule;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Parcelable;
import com.twitter.android.twitterflows.b;
import com.twitter.app.common.di.InjectionScope;
import com.twitter.app.common.di.d;
import com.twitter.app.common.inject.n;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.bbw;

/* compiled from: Twttr */
public abstract class a<C, S extends Parcelable, T extends BaseProfileStepScreen> implements d, n<S> {
    protected long a;
    private e b;
    private ProfileCompletionModulePendingChanges c;
    private String d;
    private C e;
    private T f;
    private Context g;
    private b h;

    protected abstract String n();

    protected abstract com.twitter.android.twitterflows.d o();

    protected abstract com.twitter.android.twitterflows.d p();

    public final void a(C c) {
        this.e = c;
    }

    public final void a(T t) {
        this.f = t;
    }

    public final void a(e eVar) {
        this.b = eVar;
    }

    public final void a(ProfileCompletionModulePendingChanges profileCompletionModulePendingChanges) {
        this.c = profileCompletionModulePendingChanges;
    }

    public final void a(String str) {
        this.d = str;
    }

    public final void a(long j) {
        this.a = j;
    }

    public final void a(Context context) {
        this.g = context;
    }

    public final void a(b bVar) {
        this.h = bVar;
    }

    protected final C b() {
        return e.a(this.e);
    }

    protected final T d() {
        return (BaseProfileStepScreen) e.a(this.f);
    }

    protected final e e() {
        return (e) e.a(this.b);
    }

    protected ProfileCompletionModulePendingChanges f() {
        return (ProfileCompletionModulePendingChanges) e.a(this.c);
    }

    protected final b g() {
        return (b) e.a(this.h);
    }

    public Context h() {
        return (Context) e.a(this.g);
    }

    protected String i() {
        return (String) e.a(this.d);
    }

    protected String j() {
        return "edit_profile_flow";
    }

    public void k() {
        d().a(true);
    }

    public void l() {
        d().a(false);
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
            a(null);
            this.f = null;
            this.g = null;
        }
    }

    protected void a(int i, int i2, Intent intent) {
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
    }

    protected void m() {
        a(null, "impression");
    }

    protected final void a(String str, String str2) {
        a(str, str2, null);
    }

    protected final void a(String str, String str2, String str3) {
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(this.a).b(i(), j(), n(), str, str2);
        if (aj.b((CharSequence) str3)) {
            bbw.f(str3);
        }
        bbu.a(bbw);
    }

    protected void q() {
        a(null, "back");
    }

    protected void r() {
        a(null, "skip");
        a(o(), false);
    }

    protected void s() {
        a(null, "next");
        a(p(), true);
    }

    private void a(com.twitter.android.twitterflows.d dVar, boolean z) {
        if (dVar != null) {
            g().a(d(), dVar);
            return;
        }
        ProfileCompletionModulePendingChanges f = f();
        f.a(this.a, i(), j());
        e().a(f);
        e().a(z);
    }
}

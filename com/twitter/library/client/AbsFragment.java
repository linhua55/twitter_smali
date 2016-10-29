package com.twitter.library.client;

import android.os.Bundle;
import android.support.annotation.CallSuper;
import com.twitter.app.common.inject.InjectedFragment;
import com.twitter.app.common.util.s;
import com.twitter.library.service.x;

/* compiled from: Twttr */
public abstract class AbsFragment extends InjectedFragment {
    protected long Y;
    protected bg Z;
    private ao a;
    protected az aa;

    @CallSuper
    public void onCreate(Bundle bundle) {
        this.Z = bg.a();
        this.aa = az.a(getActivity());
        this.a = ao.a((s) this, this.aa);
        this.a.a(new a(this));
        super.onCreate(bundle);
    }

    public void onStart() {
        super.onStart();
        this.a.c(this.Y);
    }

    public void onDestroy() {
        this.a.a(null);
        super.onDestroy();
    }

    protected boolean l(int i) {
        return this.a.a(this.Y, i);
    }

    protected boolean aR() {
        return this.a.a(this.Y);
    }

    protected Iterable<aw> aS() {
        return this.a.b(this.Y);
    }

    protected boolean a_(int i) {
        return true;
    }

    protected final boolean c(x xVar, int i, int i2) {
        if (!ad() || !a_(i2) || !this.a.a(this.Y, xVar, i, i2)) {
            return false;
        }
        b(xVar, i, i2);
        return true;
    }

    @CallSuper
    protected void b(x xVar, int i, int i2) {
    }

    @CallSuper
    protected void a(x xVar, int i, int i2) {
    }

    protected final Session aT() {
        return this.Z.c();
    }
}

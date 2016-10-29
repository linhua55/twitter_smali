package com.twitter.app.common.inject;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.view.View;

/* compiled from: Twttr */
public abstract class v implements m, r<Bundle> {
    private final o a;
    private View b;
    private boolean c;
    private boolean d;
    private boolean e;

    public /* synthetic */ Parcelable c() {
        return q();
    }

    protected v() {
        this.a = new o();
    }

    protected v(Bundle bundle) {
        this.a = new o();
    }

    public final View aO_() {
        if (this.b != null) {
            return this.b;
        }
        throw new IllegalStateException("Content view has not been set.");
    }

    protected final void a(View view) {
        this.b = view;
    }

    public o p() {
        return this.a;
    }

    @CallSuper
    public void aD_() {
        this.c = true;
        this.a.a();
    }

    @CallSuper
    public void an_() {
        this.d = true;
        this.a.b();
    }

    @CallSuper
    public void ao_() {
        this.d = false;
        this.a.c();
    }

    @CallSuper
    public void aE_() {
        this.c = false;
        this.a.d();
    }

    public void a(Configuration configuration) {
        this.a.a(configuration);
    }

    public String aF_() {
        return "ViewHost";
    }

    public final Bundle q() {
        Bundle bundle = new Bundle();
        a(bundle);
        return bundle;
    }

    @CallSuper
    protected void a(Bundle bundle) {
        this.a.a(bundle);
    }

    @CallSuper
    public void ap_() {
        this.e = true;
        this.a.e();
    }

    public final boolean r() {
        return this.e;
    }
}

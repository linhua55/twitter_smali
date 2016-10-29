package com.google.android.gms.internal;

import android.view.View;
import java.lang.ref.WeakReference;

public class ap implements be {
    private final WeakReference<View> a;
    private final WeakReference<ps> b;

    public ap(View view, ps psVar) {
        this.a = new WeakReference(view);
        this.b = new WeakReference(psVar);
    }

    public View a() {
        return (View) this.a.get();
    }

    public boolean b() {
        return this.a.get() == null || this.b.get() == null;
    }

    public be c() {
        return new ao((View) this.a.get(), (ps) this.b.get());
    }
}

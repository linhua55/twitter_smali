package com.twitter.app.common.inject;

import android.os.Bundle;
import android.support.annotation.IdRes;
import android.view.View;

/* compiled from: Twttr */
public class w extends v {
    protected w(Bundle bundle) {
        super(bundle);
    }

    protected final void a(@IdRes int i, v vVar) {
        View findViewById = aO_().findViewById(i);
        if (findViewById == null) {
            throw new IllegalStateException("Couldn't find a view for this host");
        }
        vVar.a(findViewById);
        p().a((Object) vVar);
    }
}

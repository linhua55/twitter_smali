package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import com.twitter.model.moments.viewmodels.f;
import com.twitter.moments.core.ui.widget.sectionpager.a;
import com.twitter.moments.core.ui.widget.sectionpager.d;
import com.twitter.util.object.b;

/* compiled from: Twttr */
class be implements b<d, a> {
    private final Context a;
    private final ba b;
    private final f c;

    be(Context context, ba baVar, f fVar) {
        this.a = context;
        this.b = baVar;
        this.c = fVar;
    }

    public a a(d dVar) {
        return cn.a(this.a, this.b, this.c, dVar);
    }
}

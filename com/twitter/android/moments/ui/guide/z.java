package com.twitter.android.moments.ui.guide;

import android.support.annotation.VisibleForTesting;
import com.twitter.app.common.base.u;
import com.twitter.model.moments.t;

/* compiled from: Twttr */
public class z extends u<z> {
    @VisibleForTesting
    public final t a;

    public z(t tVar) {
        this.a = tVar;
        this.b.putExtra("guide_category_id", tVar.a).putExtra("guide_category_name", tVar.b).putExtra("guide_type", 1);
        d(true);
    }
}

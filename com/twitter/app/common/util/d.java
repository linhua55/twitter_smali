package com.twitter.app.common.util;

import android.app.Activity;
import android.os.Bundle;

/* compiled from: Twttr */
class d extends i {
    final /* synthetic */ c a;

    d(c cVar) {
        this.a = cVar;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (activity instanceof t) {
            ((t) activity).a(c.a(this.a));
            c.a(this.a).onActivityCreated(activity, bundle);
        }
    }
}

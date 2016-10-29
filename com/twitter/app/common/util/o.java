package com.twitter.app.common.util;

import android.app.Activity;
import android.os.Bundle;

/* compiled from: Twttr */
class o extends i {
    final /* synthetic */ n a;

    o(n nVar) {
        this.a = nVar;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        this.a.a.a((Object) activity);
    }

    public void onActivityDestroyed(Activity activity) {
        this.a.a.b(activity);
    }
}

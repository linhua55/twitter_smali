package com.twitter.app.common.util;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/* compiled from: Twttr */
class g extends i {
    final /* synthetic */ f a;

    g(f fVar) {
        this.a = fVar;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        f.a(this.a);
    }

    public void a(Activity activity, Intent intent) {
        f.b(this.a);
    }

    public void onActivityStarted(Activity activity) {
        f.a(this.a, activity);
    }

    public void onActivityStopped(Activity activity) {
        f.b(this.a, activity);
    }
}

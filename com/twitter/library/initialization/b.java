package com.twitter.library.initialization;

import android.app.Activity;
import android.os.Bundle;
import com.twitter.app.common.util.i;

/* compiled from: Twttr */
class b extends i {
    final /* synthetic */ ActivityOrientationInitializer a;

    b(ActivityOrientationInitializer activityOrientationInitializer) {
        this.a = activityOrientationInitializer;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        ActivityOrientationInitializer.b(activity);
    }
}

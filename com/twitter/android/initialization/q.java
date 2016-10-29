package com.twitter.android.initialization;

import android.app.Activity;
import android.os.Bundle;
import com.twitter.app.common.util.i;

/* compiled from: Twttr */
class q extends i {
    final /* synthetic */ boolean a;
    final /* synthetic */ TypefaceInitializer b;

    q(TypefaceInitializer typefaceInitializer, boolean z) {
        this.b = typefaceInitializer;
        this.a = z;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        activity.getTheme().applyStyle(this.a ? 2131558572 : 2131558564, false);
    }
}

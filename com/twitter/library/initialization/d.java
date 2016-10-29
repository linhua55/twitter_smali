package com.twitter.library.initialization;

import android.app.Activity;
import android.content.Context;
import android.widget.Toast;
import com.twitter.app.common.util.q;
import java.util.List;

/* compiled from: Twttr */
class d implements q<Activity> {
    final /* synthetic */ Context a;
    final /* synthetic */ LeakTrackerInitializer b;

    d(LeakTrackerInitializer leakTrackerInitializer, Context context) {
        this.b = leakTrackerInitializer;
        this.a = context;
    }

    public void a(List<Activity> list) {
        Toast.makeText(this.a, "Activities have leaked", 1).show();
    }
}

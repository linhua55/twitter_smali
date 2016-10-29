package com.twitter.library.initialization;

import android.app.Service;
import android.content.Context;
import android.widget.Toast;
import com.twitter.app.common.util.q;
import java.util.List;

/* compiled from: Twttr */
class e implements q<Service> {
    final /* synthetic */ Context a;
    final /* synthetic */ LeakTrackerInitializer b;

    e(LeakTrackerInitializer leakTrackerInitializer, Context context) {
        this.b = leakTrackerInitializer;
        this.a = context;
    }

    public void a(List<Service> list) {
        Toast.makeText(this.a, "Services have leaked", 1).show();
    }
}

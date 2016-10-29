package com.twitter.android;

import android.app.Activity;
import android.content.Intent;
import com.twitter.app.main.MainActivity;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class eg {
    private final WeakReference<DispatchActivity> a;

    eg(DispatchActivity dispatchActivity) {
        this.a = new WeakReference(dispatchActivity);
    }

    public boolean a() throws SecurityException {
        if (this.a.get() == null) {
            return false;
        }
        DispatchActivity dispatchActivity = (DispatchActivity) this.a.get();
        Intent intent = (Intent) dispatchActivity.getIntent().getParcelableExtra("android.intent.extra.INTENT");
        if (intent == null) {
            return false;
        }
        dispatchActivity.getIntent().removeExtra("android.intent.extra.INTENT");
        intent.addFlags(268468224);
        dispatchActivity.startActivity(intent);
        dispatchActivity.finish();
        return true;
    }

    public void b() {
        if (this.a.get() != null) {
            MainActivity.a((Activity) this.a.get(), null);
        }
    }
}

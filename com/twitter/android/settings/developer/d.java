package com.twitter.android.settings.developer;

import android.widget.Toast;
import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class d implements e<Exception> {
    final /* synthetic */ DebugSettingsActivity a;

    d(DebugSettingsActivity debugSettingsActivity) {
        this.a = debugSettingsActivity;
    }

    public void a(Exception exception) {
        Toast.makeText(this.a, "Couldn't generate thread dump", 0).show();
    }
}

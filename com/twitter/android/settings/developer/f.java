package com.twitter.android.settings.developer;

import csx;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class f implements Callable<File> {
    final /* synthetic */ DebugSettingsActivity a;

    f(DebugSettingsActivity debugSettingsActivity) {
        this.a = debugSettingsActivity;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public File a() throws Exception {
        File a = csx.a(this.a);
        if (a != null) {
            return a;
        }
        throw new IOException("Couldn't generate thread dump");
    }
}

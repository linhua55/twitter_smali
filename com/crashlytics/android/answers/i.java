package com.crashlytics.android.answers;

import android.content.Context;
import android.os.Looper;
import cxc;
import cxf;
import io.fabric.sdk.android.services.common.ae;
import java.io.IOException;

/* compiled from: Twttr */
class i {
    final Context a;
    final cxf b;

    public i(Context context, cxf cxf) {
        this.a = context;
        this.b = cxf;
    }

    public w a() throws IOException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("AnswersFilesManagerProvider cannot be called on the main thread");
        }
        return new w(this.a, new ad(), new ae(), new cxc(this.a, this.b.a(), "session_analytics.tap", "session_analytics_to_send"));
    }
}

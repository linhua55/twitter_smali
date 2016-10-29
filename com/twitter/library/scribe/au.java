package com.twitter.library.scribe;

import android.content.Context;
import bbw;
import defpackage.bbv;

/* compiled from: Twttr */
public class au implements bbv {
    private final Context a;

    public au(Context context) {
        this.a = context.getApplicationContext();
    }

    public void b(bbw bbw) {
        if (bbw instanceof ScribeLog) {
            ScribeLog scribeLog = (ScribeLog) bbw;
            ScribeService.a(this.a, scribeLog, true);
            if (scribeLog.f()) {
                ScribeService.a(this.a, true);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Event must be a ScribeLog, is a " + bbw.getClass().getCanonicalName());
    }

    public boolean a(bbw bbw) {
        return bbw instanceof ScribeLog;
    }
}

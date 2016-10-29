package com.twitter.android.util;

import com.twitter.config.d;
import com.twitter.model.timeline.s;

/* compiled from: Twttr */
public class bu {
    private static bu a;

    private bu() {
    }

    public static bu a() {
        if (a == null) {
            a = new bu();
        }
        return a;
    }

    public final int b() {
        return d.a("verify_phone_prompt_id", 2430);
    }

    public final boolean a(s sVar) {
        return sVar.bf_() == ((long) b());
    }
}

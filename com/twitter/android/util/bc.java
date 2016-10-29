package com.twitter.android.util;

import com.twitter.config.d;
import com.twitter.model.timeline.s;

/* compiled from: Twttr */
public class bc {
    private static bc a;

    private bc() {
    }

    public static bc a() {
        if (a == null) {
            a = new bc();
        }
        return a;
    }

    public final int b() {
        return d.a("review_phone_prompt_id", 2425);
    }

    public final boolean a(s sVar) {
        return sVar.bf_() == ((long) b());
    }
}

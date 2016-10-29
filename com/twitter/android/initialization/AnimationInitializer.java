package com.twitter.android.initialization;

import android.content.Context;
import com.twitter.config.d;
import cql;
import defpackage.aof;

/* compiled from: Twttr */
public class AnimationInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        cql.a(d.a("lollipop_transitions_enabled"));
    }
}

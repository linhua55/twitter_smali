package com.crashlytics.android.answers;

import android.content.Context;
import cwv;
import cwy;
import io.fabric.sdk.android.services.common.q;
import io.fabric.sdk.android.services.settings.b;
import java.io.IOException;
import java.util.UUID;

/* compiled from: Twttr */
class w extends cwv<SessionEvent> {
    private b g;

    w(Context context, ad adVar, q qVar, cwy cwy) throws IOException {
        super(context, adVar, qVar, cwy, 100);
    }

    protected String a() {
        return "sa" + "_" + UUID.randomUUID().toString() + "_" + this.c.a() + ".tap";
    }

    protected int b() {
        return this.g == null ? super.b() : this.g.e;
    }

    protected int c() {
        return this.g == null ? super.c() : this.g.c;
    }

    void a(b bVar) {
        this.g = bVar;
    }
}

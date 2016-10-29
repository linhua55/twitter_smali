package com.crashlytics.android.answers;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.services.settings.b;

/* compiled from: Twttr */
class c implements Runnable {
    final /* synthetic */ b a;
    final /* synthetic */ String b;
    final /* synthetic */ b c;

    c(b bVar, b bVar2, String str) {
        this.c = bVar;
        this.a = bVar2;
        this.b = str;
    }

    public void run() {
        try {
            this.c.b.a(this.a, this.b);
        } catch (Throwable e) {
            f.h().e("Answers", "Failed to set analytics settings data", e);
        }
    }
}

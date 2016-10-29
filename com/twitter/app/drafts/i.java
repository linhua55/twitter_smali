package com.twitter.app.drafts;

import android.content.Intent;
import com.twitter.model.drafts.d;
import defpackage.aol;

/* compiled from: Twttr */
public class i {
    public final d a;

    private i(d dVar) {
        this.a = dVar;
    }

    public static i a(Intent intent) {
        return new i((d) aol.a(intent, d.a));
    }
}

package com.twitter.android.moments.data;

import android.os.Bundle;
import com.twitter.library.service.ac;
import com.twitter.model.moments.s;
import com.twitter.util.collection.n;
import defpackage.bma;

/* compiled from: Twttr */
class c extends ac<Bundle, bma> {
    final /* synthetic */ b a;

    c(b bVar) {
        this.a = bVar;
    }

    public void a(bma bma) {
        if (!bma.U()) {
            this.a.g = true;
            this.a.b().a(new s(null, n.g()));
        }
    }
}

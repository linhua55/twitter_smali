package com.twitter.android.moments.data;

import byi;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.service.aa;
import com.twitter.model.core.cm;
import defpackage.bnt;
import java.util.List;

/* compiled from: Twttr */
class an implements bnt {
    private final byi a;
    private final long b;

    an(byi byi, long j) {
        this.a = byi;
        this.b = j;
    }

    public void a(HttpOperation httpOperation, aa aaVar, List<cm> list) {
        if (list != null) {
            this.a.a(this.b, list);
        }
    }
}

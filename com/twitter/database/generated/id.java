package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avc;
import defpackage.awk;
import defpackage.awm;
import defpackage.awq;
import defpackage.axa;
import defpackage.axt;
import defpackage.axx;
import defpackage.axz;
import defpackage.ayd;
import defpackage.ayf;

/* compiled from: Twttr */
final class id implements ayf {
    private final Cursor a;
    private final axz b;
    private final axx c;
    private final ayd d;
    private final awq e;
    private final avc f;
    private final axa g;
    private final axa h;
    private final awm i;
    private final awk j;
    private final axt k;

    private id(Cursor cursor) {
        this.a = cursor;
        this.b = new ie(this);
        this.c = new ig(this);
        this.d = new ih(this);
        this.e = new ii(this);
        this.f = new ij(this);
        this.g = new ik(this);
        this.h = new il(this);
        this.i = new im(this);
        this.j = new in(this);
        this.k = new if(this);
    }

    public long a() {
        return this.a.getLong(0);
    }
}

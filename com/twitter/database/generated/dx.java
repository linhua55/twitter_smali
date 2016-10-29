package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avc;
import defpackage.awi;
import defpackage.awm;
import defpackage.awo;
import defpackage.awq;
import defpackage.axa;

/* compiled from: Twttr */
final class dx implements awi {
    private final Cursor a;
    private final awq b;
    private final avc c;
    private final axa d;
    private final axa e;
    private final awm f;
    private final awo g;

    private dx(Cursor cursor) {
        this.a = cursor;
        this.b = new dy(this);
        this.c = new dz(this);
        this.d = new ea(this);
        this.e = new eb(this);
        this.f = new ec(this);
        this.g = new ed(this);
    }

    public long a() {
        return this.a.getLong(0);
    }
}

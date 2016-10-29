package com.twitter.android.media.stickers.timeline;

import android.content.Context;
import ccu;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.db;
import defpackage.aou;
import defpackage.aow;
import defpackage.aoy;

/* compiled from: Twttr */
public class h extends aou {
    private final long a;
    private final long b;

    public h(Context context, long j, long j2) {
        super(context);
        this.a = j;
        this.b = j2;
    }

    public aow a() {
        return new aoy().a(ck.a(db.a, this.a)).a("search_id=?").b(new String[]{String.valueOf(this.b)}).a(ccu.a).a();
    }
}

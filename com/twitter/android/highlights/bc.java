package com.twitter.android.highlights;

import android.content.Context;
import android.database.Cursor;

/* compiled from: Twttr */
public class bc {
    public final bd a;
    public long b;
    private boolean c;
    private final be d;

    public bc(bb bbVar, Context context, ak akVar, String str, String str2) {
        this.d = new be(bbVar, context, akVar, str, str2);
        this.d.swapCursor(bbVar.s);
        this.d.a(true);
        this.c = true;
        this.a = new bd(this.d);
    }

    public void a(bb bbVar) {
        boolean z = true;
        if (bbVar == null) {
            this.d.swapCursor(null);
            this.c = false;
        } else if (this.c || this.d.getCursor() == null) {
            this.d.swapCursor(bbVar.s);
            this.c = true;
        }
        be beVar = this.d;
        if (!(this.c && this.b == 0)) {
            z = false;
        }
        beVar.a(z);
    }

    public void a(Cursor cursor) {
        if (cursor != null || !this.c) {
            this.d.swapCursor(cursor);
            this.c = false;
        }
    }
}

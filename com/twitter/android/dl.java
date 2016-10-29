package com.twitter.android;

import android.database.Cursor;
import android.os.Bundle;
import biw;
import com.twitter.app.common.list.h;
import defpackage.bie;
import defpackage.bif;

/* compiled from: Twttr */
public class dl {
    private final long a;
    private dm b;
    private boolean c;
    private boolean d;
    private long e;
    private int f;

    public dl(long j) {
        this(j, null);
    }

    public dl(long j, h hVar) {
        this.a = j;
        if (hVar != null) {
            this.f = hVar.b("last_read_marker_unread_messages_count");
            if (this.f > 0) {
                this.e = hVar.c("last_read_marker_event_id");
                this.d = hVar.a("last_read_marker_is_invalid", false);
                this.c = true;
            }
        }
    }

    public void a(Cursor cursor) {
        if (!this.c && !this.d && this.b != null && cursor != null) {
            this.c = true;
            if (this.f <= 0) {
                bie b = b(cursor);
                if (b != null) {
                    this.e = b.a().bf_();
                    this.f = a(cursor, b.b());
                    if (this.f > 0) {
                        this.b.F_();
                    }
                }
            }
        }
    }

    bie b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        int position = cursor.getPosition();
        if (!cursor.moveToFirst()) {
            return null;
        }
        bie bie = new bie(cursor);
        bie bie2 = bie;
        boolean a = a(bie);
        while (cursor.moveToNext()) {
            bie2 = new bie(cursor);
            if (a && bie2.h) {
                break;
            }
            try {
                if (a(bie2)) {
                    a = true;
                }
            } catch (Throwable th) {
                cursor.moveToPosition(position);
            }
        }
        cursor.moveToPosition(position);
        if (!(a && r0.h)) {
            bie2 = null;
        }
        return bie2;
    }

    public int c(Cursor cursor) {
        int i = -1;
        if (!(cursor == null || cursor.isClosed())) {
            int position = cursor.getPosition();
            try {
                cursor.moveToFirst();
                do {
                    bif bif = new bif(cursor);
                    if (bif.c() == this.e) {
                        i = bif.b();
                        break;
                    }
                } while (cursor.moveToNext());
                cursor.moveToPosition(position);
            } catch (Throwable th) {
                cursor.moveToPosition(position);
            }
        }
        return i;
    }

    int a(Cursor cursor, int i) {
        return biw.a(cursor, i, this.a);
    }

    private boolean a(bie bie) {
        return !bie.h && bie.a.f();
    }

    public void a(Bundle bundle) {
        bundle.putInt("last_read_marker_unread_messages_count", this.f);
        bundle.putLong("last_read_marker_event_id", this.e);
        bundle.putBoolean("last_read_marker_is_invalid", this.d);
    }

    public void a(dm dmVar) {
        this.b = dmVar;
    }

    public boolean a() {
        return this.c && !this.d && this.f > 0;
    }

    public boolean a(long j) {
        return a() && this.e == j;
    }

    public int b() {
        return this.f;
    }

    public boolean c() {
        return this.c;
    }

    public void d() {
        this.d = true;
    }
}

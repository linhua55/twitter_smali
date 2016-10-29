package com.twitter.library.av;

import android.database.Cursor;
import cni;
import com.google.android.exoplayer.util.MpegAudioHeader;
import com.twitter.util.h;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class ac implements ab {
    private int a;
    private int b;
    private int c;
    private final Cursor d;

    public ac(Cursor cursor) {
        this.d = cursor;
        this.a = 1;
        this.b = 28;
        this.c = 27;
    }

    public int a() {
        return this.d.getPosition();
    }

    public long b() {
        try {
            return this.d.getLong(this.a);
        } catch (Exception e) {
            return 0;
        }
    }

    public a c() {
        return new a(b(), g());
    }

    public void a(int i) {
        this.d.moveToPosition(i);
    }

    public boolean d() {
        return (this.d.getInt(this.c) & MpegAudioHeader.MAX_FRAME_SIZE_BYTES) != 0;
    }

    public boolean e() {
        boolean z = !this.d.isClosed() && this.d.getColumnCount() > Math.max(this.c, Math.max(this.a, this.b)) && this.d.getColumnName(this.c).equals("statuses_flags") && this.d.getColumnName(this.a).equals("status_groups_g_status_id") && this.d.getColumnName(this.b).equals("status_groups_pc");
        h.a(z, "Invalid DynamicAdPrefetchableCollection (possibly incorrect column mappings)");
        return z;
    }

    public int f() {
        return this.d.getCount();
    }

    cni g() {
        cni cni;
        byte[] blob = this.d.getBlob(this.b);
        if (blob == null) {
            cni = null;
        } else {
            try {
                cni = (cni) m.a(blob, cni.a);
            } catch (ClassCastException e) {
                return null;
            }
        }
        return cni;
    }
}

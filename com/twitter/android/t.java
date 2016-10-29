package com.twitter.android;

import android.database.Cursor;
import bbn;
import cga;
import chj;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.provider.a;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import defpackage.cgc;
import java.util.List;

/* compiled from: Twttr */
public class t extends chj<r> {
    public static final t a;
    private static final n<List<a>> b;

    static {
        a = new t();
        b = s.a(a.a);
    }

    private t() {
    }

    public r a(Cursor cursor) {
        h hVar = (h) cursor;
        int i = hVar.getInt(1);
        int i2 = hVar.getInt(4);
        int i3 = hVar.getInt(7);
        int i4 = hVar.getInt(10);
        boolean z = hVar.getInt(16) == 0;
        cgc g = new cgc().a(i).b(hVar.getLong(12)).c(hVar.getLong(13)).b(hVar.getInt(3)).c(i2).d(hVar.getInt(6)).e(i3).f(hVar.getInt(9)).g(i4);
        if (i != 8) {
            a(hVar, i2, i3, i4, g);
        }
        return new r((cga) g.q(), z);
    }

    private static void a(h hVar, int i, int i2, int i3, cgc cgc) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                cgc.a(hVar.a(hVar.getBlob(5)));
                break;
            default:
                bbn.a(new IllegalStateException("Tried to hydrate activity with invalid source type: " + i));
                break;
        }
        byte[] blob = hVar.getBlob(8);
        switch (i2) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                cgc.b(hVar.a(blob));
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                cgc.b(hVar.b(blob));
                break;
            default:
                bbn.a(new IllegalStateException("Tried to hydrate activity with invalid target type: " + i2));
                break;
        }
        blob = hVar.getBlob(11);
        switch (i3) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                cgc.c(hVar.b(blob));
            case Util.TYPE_OTHER /*3*/:
                cgc.c((List) m.a(blob, b));
            default:
        }
    }
}

package com.twitter.library.av.model.parser;

import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.model.core.am;
import com.twitter.util.collection.x;
import com.twitter.util.network.DownloadQuality;
import com.twitter.util.network.b;
import cpb;
import defpackage.bpv;
import java.util.List;

/* compiled from: Twttr */
public class d {
    public static final d a;

    static {
        a = a();
    }

    private d() {
    }

    private static d a() {
        return new d();
    }

    public x<String> a(List<am> list, b bVar) {
        if (list.isEmpty()) {
            return x.a();
        }
        e a = e.a();
        f fVar = new f(((bVar.a != DownloadQuality.a ? bVar.a : DownloadQuality.e).c() * 1024.0f) * 4.0f, a);
        am amVar = null;
        for (am amVar2 : list) {
            am amVar22;
            if (!a(amVar22, a) || fVar.a(amVar, amVar22) >= 0) {
                amVar22 = amVar;
            }
            amVar = amVar22;
        }
        return amVar == null ? x.a() : x.a(amVar.c);
    }

    private static boolean a(am amVar, e eVar) {
        if (amVar == null || amVar.d == null || amVar.d.isEmpty() || !cpb.a.contains(amVar.d)) {
            return false;
        }
        if (!eVar.a && a(amVar)) {
            return false;
        }
        if (eVar.b || !b(amVar)) {
            return bpv.a(amVar.e);
        }
        return false;
    }

    static boolean a(am amVar) {
        return "application/dash+xml".equals(amVar.d);
    }

    static boolean b(am amVar) {
        return MimeTypes.APPLICATION_M3U8.equals(amVar.d);
    }
}

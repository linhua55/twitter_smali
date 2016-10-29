package defpackage;

import cgl;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.model.core.bg;
import com.twitter.model.core.cm;

/* compiled from: Twttr */
/* renamed from: cpi */
public class cpi {
    public static int a(cm cmVar) {
        int i = 0;
        if (cmVar.w != null) {
            i = 1;
            if (cmVar.w.c()) {
                i = 5;
            }
            if (cmVar.w.b()) {
                i |= 2;
            }
        }
        if (cmVar.I == null || !cmVar.I.b) {
            return i;
        }
        return i | 8;
    }

    public static int a(cm cmVar, long j) {
        int i = 0;
        cgl cgl = cmVar.z;
        if (cgl != null) {
            i = 0 | cpi.a(cgl);
        }
        if (cmVar.g) {
            i |= 16;
        }
        bg bgVar = cmVar.e;
        if (bgVar.a(j)) {
            i |= 2;
        }
        if (bgVar.d.a(Type.b)) {
            i |= 1;
        }
        if (bgVar.d.a(Type.c)) {
            i |= 512;
        }
        if (bgVar.d.a(Type.d)) {
            i |= 1024;
        }
        if (bgVar.d.f()) {
            i |= 4096;
        }
        if (cmVar.s) {
            i |= 64;
        }
        if (cmVar.t) {
            i |= 2048;
        }
        if (cmVar.u) {
            i |= 128;
        }
        if (cmVar.H) {
            i |= 8192;
        }
        if (cmVar.h()) {
            i |= 131072;
        }
        if (cmVar.d) {
            return i | 65536;
        }
        return i;
    }

    public static int a(cgl cgl) {
        int i = 8;
        if (cgl == null) {
            return 0;
        }
        if (cgl.a()) {
            i = 16388;
        } else if (cgl.t()) {
            i = 4;
        } else if (cgl.z()) {
            i = 32;
        } else if (!cgl.x() && cgl.y()) {
        }
        if (cgl.v()) {
            i |= 32768;
        }
        if (cgl.q()) {
            return i | 4096;
        }
        return i;
    }
}

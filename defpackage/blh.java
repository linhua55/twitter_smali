package defpackage;

import cgl;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.util.aj;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: blh */
public class blh {
    public final String a;
    public final int b;
    public final bli c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final cm j;
    public final TwitterUser k;
    public final List<cm> l;
    public cm m;

    public blh(String str, int i, bli bli, String str2, String str3, String str4, String str5, String str6, String str7, cm cmVar, cm cmVar2, TwitterUser twitterUser, List<cm> list) {
        if (i == 1) {
            if (cmVar2 != null) {
                i = 4;
            } else if (cmVar.e.d.a(Type.b)) {
                i = 2;
            } else if (cmVar.e.d.a(Type.d) || cmVar.e.d.a(Type.c)) {
                i = 3;
            } else if (cmVar.z != null) {
                cgl cgl = cmVar.z;
                if (cgl.v() || cgl.a()) {
                    i = 3;
                } else if (cgl.r() != null) {
                    i = 2;
                }
            } else if (aj.b(str5)) {
                i = 5;
            }
        }
        this.a = str;
        this.b = i;
        if (bli != null) {
            this.c = bli;
        } else {
            this.c = new bli(1, 0, null);
        }
        this.d = str2;
        this.e = str3;
        if (!aj.b(str4)) {
            str4 = str2;
        }
        this.f = str4;
        this.g = str5;
        this.h = str6;
        this.i = str7;
        this.j = cmVar;
        this.m = cmVar2;
        this.k = twitterUser;
        this.l = list;
    }
}

package com.twitter.android;

import bgv;
import bhc;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.core.bg;
import com.twitter.model.dms.ae;
import com.twitter.model.dms.c;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import defpackage.bdd;
import defpackage.bie;
import defpackage.bjk;
import defpackage.bkc;
import defpackage.bkg;

/* compiled from: Twttr */
public class dk {
    public final boolean a;
    public final int b;
    public final String c;
    public final long d;
    public final String e;
    public final boolean f;
    public final ae g;
    public final int h;
    private final String i;

    public dk(bie bie, long j, String str) {
        boolean z;
        boolean z2 = true;
        int i = 0;
        this.i = str;
        bgv a = bie != null ? bie.a() : null;
        this.d = a == null ? 0 : a.d();
        if (this.d == j) {
            z = true;
        } else {
            z = false;
        }
        this.a = z;
        this.c = bie == null ? TtmlNode.ANONYMOUS_REGION_ID : bie.d();
        this.b = a == null ? -1 : a.g();
        if (!(this.b == 20 && ((bkc) a).h())) {
            z2 = false;
        }
        this.f = z2;
        this.e = a(a);
        if (a == null || !a.f()) {
            this.h = 0;
            this.g = null;
            return;
        }
        ae aeVar;
        bhc bhc = (bhc) ObjectUtils.a(a);
        c n = bhc.n();
        if (n != null) {
            i = n.a();
        }
        this.h = i;
        if (bhc.u()) {
            aeVar = (ae) n;
        } else {
            aeVar = null;
        }
        this.g = aeVar;
    }

    private String a(bgv bgv) {
        if (bgv == null) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        switch (this.b) {
            case Util.TYPE_DASH /*0*/:
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case bdd.TwitterButton_iconLayout /*19*/:
                bhc bhc = (bhc) ObjectUtils.a(bgv);
                if (bhc.p()) {
                    return this.i;
                }
                return a(bhc);
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return ((bkg) bgv).h();
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return aj.a(", ", ((bjk) bgv).i());
            default:
                return TtmlNode.ANONYMOUS_REGION_ID;
        }
    }

    private String a(bhc bhc) {
        StringBuilder stringBuilder = new StringBuilder(TtmlNode.ANONYMOUS_REGION_ID);
        if (bhc.k() != null) {
            stringBuilder.append(bhc.k());
        }
        if ((bhc.u() || bhc.x()) && aj.c(stringBuilder) == 0 && aj.b(stringBuilder)) {
            stringBuilder.delete(0, stringBuilder.length() - 1);
        }
        return bg.a(stringBuilder, bhc.m());
    }
}

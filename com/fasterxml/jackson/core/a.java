package com.fasterxml.jackson.core;

import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
public abstract class a {
    protected int a;
    protected int b;

    protected a() {
    }

    public final boolean a() {
        return this.a == 1;
    }

    public final boolean b() {
        return this.a == 0;
    }

    public final boolean c() {
        return this.a == 2;
    }

    public final String d() {
        switch (this.a) {
            case Util.TYPE_DASH /*0*/:
                return "ROOT";
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return "ARRAY";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "OBJECT";
            default:
                return "?";
        }
    }

    public final int e() {
        return this.b + 1;
    }

    public final int f() {
        return this.b < 0 ? 0 : this.b;
    }
}

package com.google.android.gms.measurement.internal;

import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.wj;

class bm {
    final boolean a;
    final int b;
    long c;
    float d;
    long e;
    float f;
    long g;
    float h;
    final boolean i;

    public bm(wj wjVar) {
        boolean z;
        boolean z2 = true;
        com.google.android.gms.common.internal.bm.a(wjVar);
        if (wjVar.a == null || wjVar.a.intValue() == 0) {
            z = false;
        } else {
            if (wjVar.a.intValue() != 4) {
                if (wjVar.c == null) {
                    z = false;
                }
            } else if (wjVar.d == null || wjVar.e == null) {
                z = false;
            }
            z = true;
        }
        if (z) {
            this.b = wjVar.a.intValue();
            if (wjVar.b == null || !wjVar.b.booleanValue()) {
                z2 = false;
            }
            this.a = z2;
            if (wjVar.a.intValue() == 4) {
                if (this.a) {
                    this.f = Float.parseFloat(wjVar.d);
                    this.h = Float.parseFloat(wjVar.e);
                } else {
                    this.e = Long.parseLong(wjVar.d);
                    this.g = Long.parseLong(wjVar.e);
                }
            } else if (this.a) {
                this.d = Float.parseFloat(wjVar.c);
            } else {
                this.c = Long.parseLong(wjVar.c);
            }
        } else {
            this.b = 0;
            this.a = false;
        }
        this.i = z;
    }

    public Boolean a(float f) {
        boolean z = true;
        boolean z2 = false;
        if (!this.i) {
            return null;
        }
        if (!this.a) {
            return null;
        }
        switch (this.b) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (f >= this.d) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (f <= this.d) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case Util.TYPE_OTHER /*3*/:
                if (f == this.d || Math.abs(f - this.d) < 2.0f * Math.max(Math.ulp(f), Math.ulp(this.d))) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (f < this.f || f > this.h) {
                    z = false;
                }
                return Boolean.valueOf(z);
            default:
                return null;
        }
    }

    public Boolean a(long j) {
        boolean z = true;
        if (!this.i) {
            return null;
        }
        if (this.a) {
            return null;
        }
        switch (this.b) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (j >= this.c) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (j <= this.c) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case Util.TYPE_OTHER /*3*/:
                if (j != this.c) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (j < this.e || j > this.g) {
                    z = false;
                }
                return Boolean.valueOf(z);
            default:
                return null;
        }
    }
}

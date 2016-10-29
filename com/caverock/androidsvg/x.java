package com.caverock.androidsvg;

import com.caverock.androidsvg.SVG.Unit;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
public class x implements Cloneable {
    private static /* synthetic */ int[] c;
    float a;
    Unit b;

    static /* synthetic */ int[] d() {
        int[] iArr = c;
        if (iArr == null) {
            iArr = new int[Unit.values().length];
            try {
                iArr[Unit.cm.ordinal()] = 5;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Unit.em.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[Unit.ex.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[Unit.in.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[Unit.mm.ordinal()] = 6;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[Unit.pc.ordinal()] = 8;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[Unit.percent.ordinal()] = 9;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[Unit.pt.ordinal()] = 7;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[Unit.px.ordinal()] = 1;
            } catch (NoSuchFieldError e9) {
            }
            c = iArr;
        }
        return iArr;
    }

    public x(float f, Unit unit) {
        this.a = 0.0f;
        this.b = Unit.px;
        this.a = f;
        this.b = unit;
    }

    public x(float f) {
        this.a = 0.0f;
        this.b = Unit.px;
        this.a = f;
        this.b = Unit.px;
    }

    public float a() {
        return this.a;
    }

    public float a(bm bmVar) {
        switch (d()[this.b.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return this.a;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return this.a * bmVar.b();
            case Util.TYPE_OTHER /*3*/:
                return this.a * bmVar.c();
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return this.a * bmVar.a();
            case EbmlReader.TYPE_FLOAT /*5*/:
                return (this.a * bmVar.a()) / 2.54f;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return (this.a * bmVar.a()) / 25.4f;
            case C.ENCODING_DTS /*7*/:
                return (this.a * bmVar.a()) / 72.0f;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return (this.a * bmVar.a()) / 6.0f;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                k d = bmVar.d();
                if (d == null) {
                    return this.a;
                }
                return (d.c * this.a) / 100.0f;
            default:
                return this.a;
        }
    }

    public float b(bm bmVar) {
        if (this.b != Unit.percent) {
            return a(bmVar);
        }
        k d = bmVar.d();
        if (d == null) {
            return this.a;
        }
        return (d.d * this.a) / 100.0f;
    }

    public float c(bm bmVar) {
        if (this.b != Unit.percent) {
            return a(bmVar);
        }
        k d = bmVar.d();
        if (d == null) {
            return this.a;
        }
        float f = d.c;
        float f2 = d.d;
        if (f == f2) {
            return (this.a * f) / 100.0f;
        }
        return (((float) (Math.sqrt((double) ((f2 * f2) + (f * f))) / 1.414213562373095d)) * this.a) / 100.0f;
    }

    public float a(bm bmVar, float f) {
        if (this.b == Unit.percent) {
            return (this.a * f) / 100.0f;
        }
        return a(bmVar);
    }

    public float a(float f) {
        switch (d()[this.b.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return this.a;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return this.a * f;
            case EbmlReader.TYPE_FLOAT /*5*/:
                return (this.a * f) / 2.54f;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return (this.a * f) / 25.4f;
            case C.ENCODING_DTS /*7*/:
                return (this.a * f) / 72.0f;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return (this.a * f) / 6.0f;
            default:
                return this.a;
        }
    }

    public boolean b() {
        return this.a == 0.0f;
    }

    public boolean c() {
        return this.a < 0.0f;
    }

    public String toString() {
        return new StringBuilder(String.valueOf(String.valueOf(this.a))).append(this.b).toString();
    }
}

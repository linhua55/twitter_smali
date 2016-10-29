package com.caverock.androidsvg;

import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class ae implements af {
    private List<Byte> a;
    private List<Float> b;

    public ae() {
        this.a = null;
        this.b = null;
        this.a = new ArrayList();
        this.b = new ArrayList();
    }

    public boolean a() {
        return this.a.isEmpty();
    }

    public void a(float f, float f2) {
        this.a.add(Byte.valueOf((byte) 0));
        this.b.add(Float.valueOf(f));
        this.b.add(Float.valueOf(f2));
    }

    public void b(float f, float f2) {
        this.a.add(Byte.valueOf((byte) 1));
        this.b.add(Float.valueOf(f));
        this.b.add(Float.valueOf(f2));
    }

    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        this.a.add(Byte.valueOf((byte) 2));
        this.b.add(Float.valueOf(f));
        this.b.add(Float.valueOf(f2));
        this.b.add(Float.valueOf(f3));
        this.b.add(Float.valueOf(f4));
        this.b.add(Float.valueOf(f5));
        this.b.add(Float.valueOf(f6));
    }

    public void a(float f, float f2, float f3, float f4) {
        this.a.add(Byte.valueOf((byte) 3));
        this.b.add(Float.valueOf(f));
        this.b.add(Float.valueOf(f2));
        this.b.add(Float.valueOf(f3));
        this.b.add(Float.valueOf(f4));
    }

    public void a(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
        int i = 0;
        int i2 = (z ? 2 : 0) | 4;
        if (z2) {
            i = 1;
        }
        this.a.add(Byte.valueOf((byte) (i | i2)));
        this.b.add(Float.valueOf(f));
        this.b.add(Float.valueOf(f2));
        this.b.add(Float.valueOf(f3));
        this.b.add(Float.valueOf(f4));
        this.b.add(Float.valueOf(f5));
    }

    public void b() {
        this.a.add(Byte.valueOf((byte) 8));
    }

    public void a(af afVar) {
        Iterator it = this.b.iterator();
        for (Byte byteValue : this.a) {
            byte byteValue2 = byteValue.byteValue();
            switch (byteValue2) {
                case Util.TYPE_DASH /*0*/:
                    afVar.a(((Float) it.next()).floatValue(), ((Float) it.next()).floatValue());
                    break;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    afVar.b(((Float) it.next()).floatValue(), ((Float) it.next()).floatValue());
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    afVar.a(((Float) it.next()).floatValue(), ((Float) it.next()).floatValue(), ((Float) it.next()).floatValue(), ((Float) it.next()).floatValue(), ((Float) it.next()).floatValue(), ((Float) it.next()).floatValue());
                    break;
                case Util.TYPE_OTHER /*3*/:
                    afVar.a(((Float) it.next()).floatValue(), ((Float) it.next()).floatValue(), ((Float) it.next()).floatValue(), ((Float) it.next()).floatValue());
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    afVar.b();
                    break;
                default:
                    boolean z;
                    boolean z2;
                    if ((byteValue2 & 2) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if ((byteValue2 & 1) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    afVar.a(((Float) it.next()).floatValue(), ((Float) it.next()).floatValue(), ((Float) it.next()).floatValue(), z, z2, ((Float) it.next()).floatValue(), ((Float) it.next()).floatValue());
                    break;
            }
        }
    }
}

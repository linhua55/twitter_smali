package defpackage;

import android.location.Location;
import bvv;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
/* renamed from: bwa */
class bwa implements Runnable {
    private final bvv a;
    private final Location b;
    private final int c;

    private bwa(bvv bvv, Location location, int i) {
        this.a = bvv;
        this.b = location;
        this.c = i;
    }

    public void run() {
        switch (this.c) {
            case Util.TYPE_DASH /*0*/:
                this.a.a(this.b);
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.a.b(this.b);
            default:
        }
    }
}

package com.twitter.android.moments.ui.fullscreen;

import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.util.z;

/* compiled from: Twttr */
public class bh implements z<Event> {
    private final bg a;

    public bh(bg bgVar) {
        this.a = bgVar;
    }

    public void a(Event event) {
        switch (bi.a[event.a().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.a.a(true);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.a.b(false);
            case Util.TYPE_OTHER /*3*/:
                this.a.b(true);
            default:
        }
    }
}

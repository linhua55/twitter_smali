package com.twitter.android.moments.ui.fullscreen;

import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.moments.ui.j;
import com.twitter.util.z;

/* compiled from: Twttr */
public class ew implements z<Event> {
    private final j a;

    public ew(j jVar) {
        this.a = jVar;
    }

    public void a(Event event) {
        switch (ex.a[event.a().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.a.a();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.a.b();
            default:
        }
    }
}

package com.twitter.android.moments.ui.fullscreen;

import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.moments.core.ui.widget.sectionpager.e;
import com.twitter.util.collection.ar;
import com.twitter.util.r;
import com.twitter.util.z;
import java.util.Set;

/* compiled from: Twttr */
public class ce implements z<Event> {
    private final e a;
    private final Set<r> b;

    public ce(e eVar, Set<r> set) {
        this.a = eVar;
        this.b = ar.a(set);
    }

    public void a(Event event) {
        if (event != null) {
            switch (cf.a[event.a().ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    this.a.a();
                    for (r a : this.b) {
                        a.a();
                    }
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    this.a.b();
                    for (r a2 : this.b) {
                        a2.b();
                    }
                default:
            }
        }
    }
}

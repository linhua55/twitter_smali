package com.twitter.android.moments.ui.fullscreen;

import adi;
import ahm;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.util.z;

/* compiled from: Twttr */
class cq implements z<Event> {
    private final ahm a;
    private final fg b;
    private final adi c;
    private boolean d;

    cq(ahm ahm, fg fgVar, adi adi) {
        this.a = ahm;
        this.b = fgVar;
        this.c = adi;
    }

    public void a(Event event) {
        switch (cr.a[event.a().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.d = true;
                a(true);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.d = true;
                a(false);
            case Util.TYPE_OTHER /*3*/:
                this.d = false;
                a();
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                a(event.b());
            case EbmlReader.TYPE_FLOAT /*5*/:
                this.a.c(true);
                this.a.a(true);
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                this.a.c(false);
                if (this.d) {
                    this.a.a(true);
                } else {
                    this.a.b(true);
                }
            default:
        }
    }

    private void a(float f) {
        this.a.a(f - 1.0f);
    }

    private void a(boolean z) {
        this.a.a(z);
        this.b.a();
        this.c.a(0);
    }

    private void a() {
        this.a.b(true);
        this.b.b();
        this.c.a(1);
    }
}

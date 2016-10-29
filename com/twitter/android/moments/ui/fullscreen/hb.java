package com.twitter.android.moments.ui.fullscreen;

import adi;
import ahm;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
class hb extends cq {
    final /* synthetic */ gu a;

    hb(gu guVar, ahm ahm, fg fgVar, adi adi) {
        this.a = guVar;
        super(ahm, fgVar, adi);
    }

    public void a(Event event) {
        super.a(event);
        boolean z = this.a.c.p() && !this.a.p.a();
        switch (hc.a[event.a().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (z) {
                    this.a.d.d(false);
                }
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (z) {
                    this.a.d.d(true);
                }
            case Util.TYPE_OTHER /*3*/:
                if (z) {
                    this.a.d.h();
                }
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (!this.a.p.a() || !this.a.c.p()) {
                    return;
                }
                if (this.a.d.g()) {
                    this.a.d.h();
                } else {
                    this.a.d.d(true);
                }
            default:
        }
    }
}

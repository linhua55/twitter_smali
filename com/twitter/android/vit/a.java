package com.twitter.android.vit;

import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.twitter.android.VitActivityFragment;
import com.twitter.android.vit.VitFilterBarViewDelegate.VitFilter;
import com.twitter.util.collection.n;
import com.twitter.util.h;

/* compiled from: Twttr */
public class a {
    private final VitFilterBarViewDelegate a;
    private final VitActivityFragment b;

    public a(VitFilterBarViewDelegate vitFilterBarViewDelegate, VitActivityFragment vitActivityFragment) {
        this.a = vitFilterBarViewDelegate;
        this.b = vitActivityFragment;
    }

    public void a(boolean z) {
        a();
        this.a.a(VitFilter.ALL, new b(this, z));
        this.a.a(VitFilter.MENTIONS, new c(this, z));
        this.a.a(VitFilter.VERIFIED, new d(this));
        this.a.a(n.b(new k(this.b.getString(2131363210), new e(this))));
    }

    private void a() {
        switch (this.b.l()) {
            case Util.TYPE_DASH /*0*/:
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
                if (this.b.m()) {
                    this.a.a(VitFilter.MENTIONS);
                } else {
                    this.a.a(VitFilter.ALL);
                }
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                this.a.a(VitFilter.VERIFIED);
            default:
                h.a("Unsupported Activity type : " + this.b.l());
        }
    }
}

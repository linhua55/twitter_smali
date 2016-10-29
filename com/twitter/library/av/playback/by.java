package com.twitter.library.av.playback;

import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.av.e;
import com.twitter.model.av.AVMediaPlaylist;

/* compiled from: Twttr */
public class by {
    String a;
    boolean b;
    long c;

    public by() {
        this.b = false;
    }

    public void a(String str, AVMediaPlaylist aVMediaPlaylist, e eVar, long j) {
        if (this.a == null && aVMediaPlaylist != null) {
            this.a = aVMediaPlaylist.b();
        }
        if (!(eVar == null || this.a == null)) {
            eVar.c(this.a);
        }
        if (str != null) {
            boolean z = true;
            switch (str.hashCode()) {
                case -934524953:
                    if (str.equals("replay")) {
                        z = false;
                        break;
                    }
                    break;
                case 3529469:
                    if (str.equals("show")) {
                        z = true;
                        break;
                    }
                    break;
                case 186137309:
                    if (str.equals("playback_complete")) {
                        z = true;
                        break;
                    }
                    break;
                case 1572388158:
                    if (str.equals("playback_start")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case Util.TYPE_DASH /*0*/:
                    this.b = true;
                    this.c = j;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    this.c = j;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (!(this.c == 0 || eVar == null)) {
                        long j2 = j - this.c;
                        eVar.a(Boolean.valueOf(this.b));
                        eVar.a(Long.valueOf(j2));
                    }
                    this.c = 0;
                case Util.TYPE_OTHER /*3*/:
                    this.c = j;
                default:
            }
        }
    }
}

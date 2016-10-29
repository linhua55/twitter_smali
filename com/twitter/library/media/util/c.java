package com.twitter.library.media.util;

import android.media.AudioManager.OnAudioFocusChangeListener;
import com.google.android.exoplayer.SampleSource;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
class c implements OnAudioFocusChangeListener {
    final /* synthetic */ b a;

    c(b bVar) {
        this.a = bVar;
    }

    public void onAudioFocusChange(int i) {
        switch (i) {
            case SampleSource.SAMPLE_READ /*-3*/:
                this.a.a.c();
                break;
            case SampleSource.NOTHING_READ /*-2*/:
                this.a.a.b();
                this.a.c = false;
                break;
            case TtmlStyle.UNSPECIFIED /*-1*/:
                this.a.a.b();
                this.a.b();
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (this.a.d == -3) {
                    this.a.a.d();
                } else {
                    this.a.a.a();
                }
                this.a.c = true;
                break;
        }
        this.a.d = i;
    }
}

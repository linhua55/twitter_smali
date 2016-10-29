package com.twitter.android.media.foundmedia;

import com.twitter.android.media.widget.aq;
import com.twitter.media.model.MediaFile;
import com.twitter.model.media.foundmedia.f;

/* compiled from: Twttr */
class q implements aq {
    final /* synthetic */ GifGalleryFragment a;

    q(GifGalleryFragment gifGalleryFragment) {
        this.a = gifGalleryFragment;
    }

    public void a(f fVar, MediaFile mediaFile) {
        if (this.a.a != null) {
            z zVar = (z) this.a.a.get();
            if (zVar != null) {
                zVar.a(fVar, mediaFile);
            }
        }
    }

    public void a(f fVar) {
        if (!this.a.c && this.a.a != null) {
            z zVar = (z) this.a.a.get();
            if (zVar != null) {
                this.a.c = true;
                zVar.a(fVar, new r(this));
            }
        }
    }

    public void a() {
        this.a.c();
    }

    public void b() {
        this.a.f();
    }

    public void c() {
        this.a.g();
    }
}

package com.twitter.android;

import defpackage.cqk;

/* compiled from: Twttr */
class gi implements cqk {
    final /* synthetic */ GalleryActivity a;

    gi(GalleryActivity galleryActivity) {
        this.a = galleryActivity;
    }

    public void a() {
        if (!this.a.isFinishing()) {
            if (this.a.Z != null) {
                this.a.a(this.a.Z);
                this.a.Z = null;
            }
            this.a.Y = true;
        }
    }
}

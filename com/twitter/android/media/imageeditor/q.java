package com.twitter.android.media.imageeditor;

import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.media.stickers.StickerFilteredImageView;
import com.twitter.media.filters.d;

/* compiled from: Twttr */
class q implements d {
    final /* synthetic */ StickerFilteredImageView a;
    final /* synthetic */ o b;

    q(o oVar, StickerFilteredImageView stickerFilteredImageView) {
        this.b = oVar;
        this.a = stickerFilteredImageView;
    }

    public void a() {
        if (this.b.d) {
            this.a.setFilterRenderListener(null);
            this.b.h.l.setVisibility(8);
            switch (this.b.h.c) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    this.b.h.a(true, true);
                case Util.TYPE_OTHER /*3*/:
                    this.b.h.g();
                default:
            }
        }
    }
}

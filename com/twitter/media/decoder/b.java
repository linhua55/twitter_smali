package com.twitter.media.decoder;

import android.graphics.Bitmap;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
class b {
    public final Bitmap a;
    public final Size b;

    b(Bitmap bitmap) {
        this.a = bitmap;
        this.b = bitmap != null ? Size.a(bitmap) : Size.b;
    }

    b(Size size) {
        this.a = null;
        this.b = size;
    }
}

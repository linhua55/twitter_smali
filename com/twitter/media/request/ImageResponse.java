package com.twitter.media.request;

import android.graphics.Bitmap;
import com.twitter.media.model.MediaFile;

/* compiled from: Twttr */
public class ImageResponse extends ResourceResponse<a, Bitmap> {
    private final MediaFile a;
    private final Error b;
    private final boolean c;
    private final boolean d;

    public ImageResponse(f fVar) {
        super(f.a(fVar), f.b(fVar), f.c(fVar));
        this.a = f.d(fVar);
        this.b = f.e(fVar);
        this.c = f.f(fVar);
        this.d = f.g(fVar);
    }

    public MediaFile a() {
        return this.a;
    }

    public Error b() {
        return this.b;
    }

    public boolean c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }
}

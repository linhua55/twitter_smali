package com.twitter.media.request;

import android.graphics.Bitmap;
import com.twitter.media.model.MediaFile;

/* compiled from: Twttr */
public class f {
    private final a a;
    private ResourceResponse$ResourceSource b;
    private MediaFile c;
    private Bitmap d;
    private ImageResponse$Error e;
    private boolean f;
    private boolean g;

    public f(a aVar) {
        this.b = ResourceResponse$ResourceSource.Undefined;
        this.e = ImageResponse$Error.Unknown;
        this.a = aVar;
    }

    public f a(MediaFile mediaFile) {
        this.c = mediaFile;
        return this;
    }

    public f a(Bitmap bitmap) {
        this.d = bitmap;
        return this;
    }

    public f a(ResourceResponse$ResourceSource resourceResponse$ResourceSource) {
        this.b = resourceResponse$ResourceSource;
        return this;
    }

    public f a(ImageResponse$Error imageResponse$Error) {
        this.e = imageResponse$Error;
        return this;
    }

    public f a(boolean z) {
        this.f = z;
        return this;
    }

    public f b(boolean z) {
        this.g = z;
        return this;
    }

    public ImageResponse a() {
        return new ImageResponse(this);
    }
}

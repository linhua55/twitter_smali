package com.twitter.media.request;

import android.graphics.Bitmap.Config;
import cfg;
import com.twitter.media.decoder.ImageDecoder.ScaleType;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.request.process.a;
import com.twitter.util.math.Size;
import com.twitter.util.math.c;

/* compiled from: Twttr */
public class b extends h<b, ImageResponse> {
    public final MediaFile a;
    public d b;
    public Size c;
    public boolean d;
    public ScaleType e;
    public c f;
    public int g;
    public boolean h;
    public cfg i;
    public Config j;
    public String k;
    public MediaType l;
    public int m;
    public boolean n;
    public boolean o;
    public a p;

    public b(String str) {
        super(str);
        this.c = Size.b;
        this.e = ScaleType.a;
        this.l = MediaType.UNKNOWN;
        this.a = null;
    }

    public b(MediaFile mediaFile) {
        super(mediaFile.a().toString());
        this.c = Size.b;
        this.e = ScaleType.a;
        this.l = MediaType.UNKNOWN;
        this.a = mediaFile;
        this.c = mediaFile.e;
    }

    public b a(d dVar) {
        this.b = dVar;
        return this;
    }

    public b a(Size size) {
        this.c = size;
        return this;
    }

    public b a(boolean z) {
        this.d = z;
        return this;
    }

    public b a(ScaleType scaleType) {
        this.e = scaleType;
        return this;
    }

    public b a(c cVar) {
        this.f = cVar;
        return this;
    }

    public b a(int i) {
        this.g = i;
        return this;
    }

    public b b(boolean z) {
        this.h = z;
        return this;
    }

    public b a(cfg cfg) {
        this.i = cfg;
        return this;
    }

    public b a(Config config) {
        this.j = config;
        return this;
    }

    public b a(String str) {
        this.k = str;
        return this;
    }

    public b b(int i) {
        this.m = i;
        return this;
    }

    public b a(MediaType mediaType) {
        this.l = mediaType;
        return this;
    }

    public b c(boolean z) {
        this.n = z;
        return this;
    }

    public b d(boolean z) {
        this.o = z;
        return this;
    }

    public b a(a aVar) {
        this.p = aVar;
        return this;
    }

    public a a() {
        return new a(this);
    }
}

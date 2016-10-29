package com.facebook.imagepipeline.request;

import android.net.Uri;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.common.a;
import com.facebook.imagepipeline.common.c;
import java.io.File;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* compiled from: Twttr */
public class ImageRequest {
    @Nullable
    c a;
    private final ImageType b;
    private final Uri c;
    private File d;
    private final boolean e;
    private final boolean f;
    private final a g;
    private final boolean h;
    private final Priority i;
    private final RequestLevel j;
    private final boolean k;
    private final a l;

    public static ImageRequest a(@Nullable Uri uri) {
        return uri == null ? null : ImageRequestBuilder.a(uri).l();
    }

    protected ImageRequest(ImageRequestBuilder imageRequestBuilder) {
        this.a = null;
        this.b = imageRequestBuilder.f();
        this.c = imageRequestBuilder.a();
        this.e = imageRequestBuilder.g();
        this.f = imageRequestBuilder.h();
        this.g = imageRequestBuilder.e();
        this.a = imageRequestBuilder.d();
        this.h = imageRequestBuilder.c();
        this.i = imageRequestBuilder.j();
        this.j = imageRequestBuilder.b();
        this.k = imageRequestBuilder.i();
        this.l = imageRequestBuilder.k();
    }

    public ImageType a() {
        return this.b;
    }

    public Uri b() {
        return this.c;
    }

    public int c() {
        return this.a != null ? this.a.a : -1;
    }

    public int d() {
        return this.a != null ? this.a.b : -1;
    }

    @Nullable
    public c e() {
        return this.a;
    }

    public a f() {
        return this.g;
    }

    public boolean g() {
        return this.h;
    }

    public boolean h() {
        return this.e;
    }

    public boolean i() {
        return this.f;
    }

    public Priority j() {
        return this.i;
    }

    public RequestLevel k() {
        return this.j;
    }

    public boolean l() {
        return this.k;
    }

    public synchronized File m() {
        if (this.d == null) {
            this.d = new File(this.c.getPath());
        }
        return this.d;
    }

    @Nullable
    public a n() {
        return this.l;
    }
}

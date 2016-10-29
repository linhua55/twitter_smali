package com.facebook.imagepipeline.request;

import android.net.Uri;
import bx;
import com.facebook.common.util.d;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.common.a;
import com.facebook.imagepipeline.common.c;
import com.facebook.imagepipeline.request.ImageRequest.ImageType;
import com.facebook.imagepipeline.request.ImageRequest.RequestLevel;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class ImageRequestBuilder {
    private Uri a;
    private RequestLevel b;
    private boolean c;
    @Nullable
    private c d;
    private a e;
    private ImageType f;
    private boolean g;
    private boolean h;
    private Priority i;
    @Nullable
    private a j;

    public static ImageRequestBuilder a(Uri uri) {
        return new ImageRequestBuilder().b(uri);
    }

    private ImageRequestBuilder() {
        this.a = null;
        this.b = RequestLevel.a;
        this.c = false;
        this.d = null;
        this.e = a.a();
        this.f = ImageType.b;
        this.g = false;
        this.h = false;
        this.i = Priority.c;
        this.j = null;
    }

    public ImageRequestBuilder b(Uri uri) {
        bx.a(uri);
        this.a = uri;
        return this;
    }

    public Uri a() {
        return this.a;
    }

    public RequestLevel b() {
        return this.b;
    }

    public boolean c() {
        return this.c;
    }

    @Nullable
    public c d() {
        return this.d;
    }

    public a e() {
        return this.e;
    }

    public ImageType f() {
        return this.f;
    }

    public ImageRequestBuilder a(boolean z) {
        this.g = z;
        return this;
    }

    public boolean g() {
        return this.g;
    }

    public boolean h() {
        return this.h;
    }

    public boolean i() {
        return d.a(this.a);
    }

    public Priority j() {
        return this.i;
    }

    @Nullable
    public a k() {
        return this.j;
    }

    public ImageRequest l() {
        m();
        return new ImageRequest(this);
    }

    protected void m() {
        if (this.a == null) {
            throw new BuilderException("Source must be set!");
        }
        if (d.e(this.a)) {
            if (!this.a.isAbsolute()) {
                throw new BuilderException("Resource URI path must be absolute.");
            } else if (this.a.getPath().isEmpty()) {
                throw new BuilderException("Resource URI must not be empty");
            } else {
                try {
                    Integer.parseInt(this.a.getPath().substring(1));
                } catch (NumberFormatException e) {
                    throw new BuilderException("Resource URI path must be a resource id.");
                }
            }
        }
        if (d.d(this.a) && !this.a.isAbsolute()) {
            throw new BuilderException("Asset URI path must be absolute.");
        }
    }
}

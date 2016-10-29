package com.twitter.library.media.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import aoa;
import com.twitter.config.d;
import com.twitter.media.request.ImageRequester;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.media.request.a;
import com.twitter.media.request.c;
import com.twitter.media.request.i;
import com.twitter.util.concurrent.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.bxp;
import java.io.File;
import java.util.concurrent.Future;

/* compiled from: Twttr */
public class TwitterImageRequester implements ImageRequester, c {
    private final Context b;
    private final bxp c;
    private a d;
    private Future<?> e;
    private i<ImageResponse> f;

    @aoa
    /* compiled from: Twttr */
    public class Factory implements com.twitter.media.request.ImageRequester.Factory {
        public TwitterImageRequester a(Context context) {
            return new TwitterImageRequester(context);
        }
    }

    public TwitterImageRequester(Context context) {
        this.b = context;
        this.c = d.a("photo_wait_time_enabled") ? new bxp() : null;
    }

    public boolean a(a aVar) {
        a aVar2 = this.d;
        if (aVar2 != aVar) {
            this.d = aVar;
            if (aVar != null) {
                this.f = aVar.E();
                aVar.a(this);
            } else {
                this.f = null;
            }
            if (!ObjectUtils.a(aVar2, aVar)) {
                c();
                return true;
            }
        }
        return false;
    }

    public a a() {
        return this.d;
    }

    public void b(boolean z) {
        if (this.d != null && !b()) {
            if (z && this.c != null) {
                this.c.a();
            }
            j b = l.a(this.b).b(this.d);
            if (!b.isDone()) {
                this.e = b;
            }
        }
    }

    public boolean b() {
        return this.e != null;
    }

    public boolean c() {
        if (this.e == null) {
            return false;
        }
        if (this.c != null) {
            this.c.b();
        }
        this.e.cancel(false);
        this.e = null;
        return true;
    }

    public void a(String str) {
        if (this.c != null) {
            this.c.a(str);
        }
    }

    public void a(ImageResponse imageResponse) {
        Long l = null;
        this.e = null;
        Bitmap bitmap = (Bitmap) imageResponse.f();
        if (this.c != null) {
            Rect rect;
            ResourceSource g = imageResponse.g();
            int i = bitmap != null ? 1 : 0;
            if (i != 0) {
                rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
            } else {
                rect = null;
            }
            if (imageResponse.a() != null) {
                l = Long.valueOf(imageResponse.a().d.length());
            }
            this.c.b(i != 0 ? "success" : "failure");
            this.c.a(g, rect, l);
            this.c.b();
        }
        if (this.f != null) {
            this.f.a(imageResponse);
        }
    }

    public File b(a aVar) {
        return l.a(this.b).e(aVar);
    }
}

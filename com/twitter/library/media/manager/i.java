package com.twitter.library.media.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.HandlerThread;
import android.util.Pair;
import bbn;
import com.google.android.exoplayer.DefaultLoadControl;
import com.twitter.internal.network.k;
import com.twitter.library.network.forecaster.NetworkQuality;
import com.twitter.library.network.forecaster.b;
import com.twitter.media.decoder.ImageDecoder;
import com.twitter.media.model.ImageFormat;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.model.SvgFile;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.ImageResponse.Error;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.media.request.a;
import com.twitter.media.request.f;
import com.twitter.media.request.g;
import com.twitter.platform.PlatformContext;
import com.twitter.util.ao;
import com.twitter.util.collection.e;
import com.twitter.util.concurrent.j;
import com.twitter.util.h;
import com.twitter.util.math.Size;
import com.twitter.util.math.c;
import cus;
import defpackage.cfg;
import java.io.File;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Twttr */
public class i extends t<a, Bitmap, ImageResponse> {
    private final Map<String, MediaFile> g;
    private final Map<String, Error> h;
    private final Set<String> i;
    private final Size j;
    private final int k;

    protected /* synthetic */ String a(g gVar) {
        return e((a) gVar);
    }

    public /* synthetic */ File b(g gVar) {
        return g((a) gVar);
    }

    public /* synthetic */ File c(g gVar) {
        return f((a) gVar);
    }

    /* synthetic */ Pair d(g gVar) {
        return b((a) gVar);
    }

    protected /* synthetic */ String e(g gVar) {
        return d((a) gVar);
    }

    public /* synthetic */ j f(g gVar) {
        return a((a) gVar);
    }

    public /* synthetic */ Object g(g gVar) {
        return c((a) gVar);
    }

    i(String str, Context context, HandlerThread handlerThread, Size size, int i, e<String, Bitmap> eVar, cus cus, cus cus2) {
        super(str, context, handlerThread, eVar, cus, cus2);
        this.h = new ConcurrentHashMap();
        this.i = Collections.newSetFromMap(new ConcurrentHashMap());
        this.j = size;
        this.k = i;
        Map concurrentHashMap = new ConcurrentHashMap();
        this.g = concurrentHashMap;
        if (eVar != null) {
            eVar.a(new j(this, concurrentHashMap));
        }
    }

    protected boolean a(Bitmap bitmap) {
        return !bitmap.isRecycled();
    }

    public j<ImageResponse> a(a aVar) {
        if (aVar != null && aVar.f().c()) {
            bbn.a(new IllegalStateException("Request with an empty size."));
        }
        return super.f(aVar);
    }

    protected Bitmap a(a aVar, File file) {
        h.c();
        Bitmap b = ImageDecoder.a(file).a(aVar.u()).b();
        if (b != null) {
            c(aVar, null);
        }
        return b;
    }

    Pair<ResourceSource, File> b(a aVar) {
        Pair<ResourceSource, File> d = super.d(aVar);
        if (d == null || d.second == null) {
            this.h.put(aVar.u(), Error.a);
        }
        return d;
    }

    protected Bitmap b(a aVar, File file) {
        h.c();
        MediaFile c = c(aVar, file);
        Bitmap bitmap = null;
        if (c != null) {
            com.twitter.media.decoder.e eVar;
            c j = aVar.j();
            ImageDecoder a = ImageDecoder.a(c);
            Size f = aVar.f();
            if (aVar.g()) {
                eVar = com.twitter.media.decoder.e.a;
            } else {
                eVar = com.twitter.media.decoder.e.a(DefaultLoadControl.DEFAULT_HIGH_BUFFER_LOAD, 1.5f);
            }
            a = a.a(f, eVar).a(aVar.h()).a(j).d(this.j).d(this.k).e(aVar.i()).a(aVar.l()).a(aVar.a()).a(aVar.m());
            if (a instanceof com.twitter.media.decoder.i) {
                ((com.twitter.media.decoder.i) a).f(aVar.p());
            }
            Bitmap b = a.b();
            if (b != null) {
                cfg k = aVar.k();
                if (k != null && k.a(c.e, aVar.f(), j, aVar.i())) {
                    bitmap = k.a(b);
                    if (!(bitmap == b || bitmap == null)) {
                        b.recycle();
                    }
                }
                bitmap = b;
            } else {
                this.g.remove(aVar.u());
                bitmap = b;
            }
            if (aVar.s() && PlatformContext.f().e().a(c.d)) {
                c.b();
            }
        }
        return bitmap;
    }

    private MediaFile c(a aVar, File file) {
        MediaFile mediaFile = (MediaFile) this.g.get(aVar.u());
        if (mediaFile == null) {
            mediaFile = aVar.e();
            if (mediaFile == null && file != null) {
                mediaFile = aVar.n() == MediaType.e ? SvgFile.a(file, aVar.f()) : MediaFile.a(file, aVar.n());
            } else if (mediaFile == null && !ao.b(aVar.d())) {
                mediaFile = MediaFile.a(this.a, Uri.parse(aVar.d()), aVar.n());
            }
            if (mediaFile != null) {
                this.g.put(aVar.u(), mediaFile);
            }
        }
        return mediaFile;
    }

    protected ImageResponse a(a aVar, Bitmap bitmap, ResourceSource resourceSource) {
        boolean z = true;
        f a = new f(aVar).a((MediaFile) this.g.get(aVar.u())).a(bitmap).a(resourceSource).a((Error) com.twitter.util.object.e.b(this.h.get(aVar.u()), Error.b));
        boolean z2 = aVar.q() != null && this.i.contains(aVar.q());
        f a2 = a.a(z2);
        if (bitmap == null) {
            z = false;
        }
        return a2.b(z).a();
    }

    protected boolean a(a aVar, Bitmap bitmap, OutputStream outputStream) {
        ImageFormat a = ImageFormat.a(aVar.a());
        CompressFormat compressFormat = (a == ImageFormat.GIF || a == ImageFormat.PNG) ? CompressFormat.PNG : CompressFormat.JPEG;
        return bitmap.compress(compressFormat, 90, outputStream);
    }

    public Bitmap c(a aVar) {
        if (!aVar.v()) {
            return null;
        }
        Bitmap bitmap = (Bitmap) a(aVar.u());
        if (bitmap == null && aVar.c()) {
            return (Bitmap) a(aVar.q());
        }
        return bitmap;
    }

    private boolean h(a aVar) {
        if (!aVar.c()) {
            return false;
        }
        if (b.a().b().a(NetworkQuality.POOR) || b.a().f()) {
            return true;
        }
        return false;
    }

    protected String d(a aVar) {
        return h(aVar) ? aVar.r() : aVar.a();
    }

    protected String e(a aVar) {
        return aVar.c() ? aVar.q() : aVar.u();
    }

    public File f(a aVar) {
        h.c();
        for (String a : aVar.b()) {
            File a2 = this.c.a(a);
            if (a2 != null) {
                return a2;
            }
        }
        if (!aVar.c()) {
            return null;
        }
        return this.c.a(aVar.r());
    }

    public File g(a aVar) {
        h.c();
        if (this.d == null) {
            return null;
        }
        File a = this.d.a(aVar.u());
        if (a == null && aVar.c()) {
            return this.d.a(aVar.q());
        }
        return a;
    }

    protected void a(a aVar, String str, k kVar) {
        if (kVar != null && kVar.a()) {
            if (str.equals(aVar.r())) {
                this.i.add(aVar.q());
            } else if (aVar.r() != null) {
                this.c.d(aVar.r());
                this.i.remove(aVar.q());
                if (this.d != null) {
                    this.d.d(aVar.q());
                }
                if (this.b != null) {
                    this.b.b(aVar.q());
                }
            }
        }
    }
}

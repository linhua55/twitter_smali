package com.twitter.media.request;

import android.content.Context;
import android.graphics.Bitmap.Config;
import any;
import cfg;
import com.twitter.config.d;
import com.twitter.media.decoder.ImageDecoder.ScaleType;
import com.twitter.media.model.ImageFormat;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import com.twitter.util.math.c;
import com.twitter.util.object.ObjectUtils;
import java.io.File;
import java.util.List;

/* compiled from: Twttr */
public final class a extends g<ImageResponse> {
    private final String a;
    private final String b;
    private final List<String> c;
    private final boolean d;
    private final MediaFile e;
    private final boolean f;
    private final Size g;
    private final ScaleType h;
    private final c i;
    private final boolean j;
    private final String k;
    private final cfg l;
    private final int m;
    private final String n;
    private final Config o;
    private final int p;
    private final boolean q;
    private final MediaType r;
    private final com.twitter.media.request.process.a s;

    public static b a(String str) {
        return a(str, Size.b);
    }

    public static b a(String str, int i, int i2) {
        return a(str, Size.a(i, i2));
    }

    public static b a(String str, Size size) {
        return new b(str).a(size);
    }

    public static b a(MediaFile mediaFile) {
        return new b(mediaFile);
    }

    protected a(b bVar) {
        super(bVar);
        this.g = bVar.c;
        this.f = bVar.d;
        if (bVar.b != null) {
            this.c = bVar.b.a(bVar.q, this.g);
            this.a = (String) this.c.get(0);
            this.b = bVar.b.a(bVar.q);
            boolean z = bVar.n && this.b != null;
            this.d = z;
        } else {
            this.c = n.b(bVar.q);
            this.a = bVar.q;
            this.b = null;
            this.d = false;
        }
        this.e = bVar.a;
        this.h = bVar.e;
        this.i = bVar.f;
        this.j = bVar.h;
        this.k = bVar.k;
        this.l = bVar.i;
        this.m = bVar.g;
        this.o = bVar.j != null ? bVar.j : F();
        this.p = bVar.m;
        this.n = G();
        this.r = bVar.l;
        this.q = bVar.o;
        this.s = bVar.p;
    }

    private Config F() {
        if (!d.a("android_photo_consumption_bitmap_config_degradation_enabled")) {
            return Config.ARGB_8888;
        }
        if (any.a().b() >= 2013 || ImageFormat.a(a()) != ImageFormat.a) {
            return Config.ARGB_8888;
        }
        return Config.RGB_565;
    }

    public String a() {
        return this.a;
    }

    public List<String> b() {
        return this.c;
    }

    public boolean c() {
        return this.d;
    }

    public File a(Context context) {
        return this.e != null ? this.e.d : super.a(context);
    }

    public String d() {
        return super.a();
    }

    public MediaFile e() {
        return this.e;
    }

    public Size f() {
        return this.g;
    }

    public boolean g() {
        return this.f;
    }

    public ScaleType h() {
        return this.h;
    }

    public int i() {
        return this.m;
    }

    public c j() {
        return this.i;
    }

    public cfg k() {
        return this.l;
    }

    public boolean l() {
        return this.j;
    }

    public Config m() {
        return this.o;
    }

    public MediaType n() {
        return this.r;
    }

    public String o() {
        return this.k;
    }

    public int p() {
        return this.p;
    }

    public String q() {
        return this.b;
    }

    public String r() {
        return this.b;
    }

    public boolean s() {
        return this.q;
    }

    public com.twitter.media.request.process.a t() {
        return this.s;
    }

    public String u() {
        return this.n;
    }

    public boolean a(g gVar) {
        return gVar != null && super.a(gVar) && ObjectUtils.a(this.s, ((a) gVar).s);
    }

    private String G() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.u());
        stringBuilder.append('_');
        stringBuilder.append(Integer.toString(this.g.a(), 36));
        stringBuilder.append('_');
        stringBuilder.append(Integer.toString(this.g.b(), 36));
        if (this.h != ScaleType.a) {
            stringBuilder.append('_');
            stringBuilder.append(this.h.ordinal());
        }
        c cVar = this.i;
        if (!(cVar == null || cVar.b())) {
            stringBuilder.append('_');
            stringBuilder.append(String.format("[%s,%s,%s,%s]", new Object[]{Integer.toString(Float.floatToIntBits(cVar.d), 36), Integer.toString(Float.floatToIntBits(cVar.e), 36), Integer.toString(Float.floatToIntBits(cVar.f), 36), Integer.toString(Float.floatToIntBits(cVar.g), 36)}));
        }
        if (this.l != null) {
            stringBuilder.append('_');
            stringBuilder.append(this.l.a());
        }
        if (this.m != 0) {
            stringBuilder.append('_');
            stringBuilder.append(this.m);
        }
        if (this.o != Config.ARGB_8888) {
            stringBuilder.append('_');
            stringBuilder.append(this.o.ordinal());
        }
        if (this.p > 0) {
            stringBuilder.append('_');
            stringBuilder.append(this.p);
        }
        return stringBuilder.toString();
    }
}

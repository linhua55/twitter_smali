package com.twitter.library.api.upload.internal;

import android.content.Context;
import bmx;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.upload.MediaUsage;
import com.twitter.library.api.upload.d;
import com.twitter.library.api.upload.e;
import com.twitter.library.api.upload.g;
import com.twitter.library.api.upload.h;
import com.twitter.library.client.az;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.media.model.MediaFile;
import com.twitter.media.util.MediaException;
import com.twitter.util.collection.z;
import java.util.List;

/* compiled from: Twttr */
public class c extends a implements g {
    private final MediaFile d;
    private final List<z<String, String>> e;
    private final d f;
    private final MediaUsage g;
    private List<Integer> h;

    public c(Context context, ab abVar, MediaFile mediaFile, List<z<String, String>> list, g gVar, com.twitter.util.z<bmx> zVar, MediaUsage mediaUsage, List<Integer> list2) {
        super(context, abVar, gVar, zVar);
        this.d = mediaFile;
        this.e = list;
        this.h = list2;
        this.f = e.b(this.a, mediaFile, mediaUsage, abVar.c);
        this.g = mediaUsage;
    }

    public void a() {
        b();
    }

    public void a(h hVar) {
        if (hVar.b() || this.f.a()) {
            b(hVar);
            return;
        }
        if (this.h.size() > 1) {
            this.h = this.h.subList(this.h.size() - 1, this.h.size());
        }
        b();
    }

    protected void b(h hVar) {
        this.f.c();
        super.b(new h((aa) hVar, this.d, hVar.a));
    }

    private void b() {
        b bVar = new b(this.f);
        bVar.a(new d(this, bVar));
        az.a(this.a).a(bVar);
    }

    void a(b bVar) {
        MediaFile b = bVar.b();
        Exception a = bVar.a();
        if (a != null) {
            a(b, 1002, a);
        } else if (b == null) {
            a(null, 1002, new MediaException("Error creating media file"));
        } else {
            a(b);
        }
    }

    private void a(MediaFile mediaFile) {
        a nVar;
        if (b(mediaFile)) {
            nVar = new n(this.a, this.b, mediaFile, this, this.c, this.h, this.e, this.g);
        } else {
            nVar = new h(this.a, this.b, mediaFile, this, this.c, this.g);
        }
        nVar.a();
    }

    private boolean b(MediaFile mediaFile) {
        switch (e.a[mediaFile.f.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
                return true;
            default:
                return mediaFile.d.length() > ((long) ((Integer) this.h.get(0)).intValue());
        }
    }
}

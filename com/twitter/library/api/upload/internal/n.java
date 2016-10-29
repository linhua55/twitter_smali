package com.twitter.library.api.upload.internal;

import android.content.Context;
import bmx;
import com.twitter.library.api.upload.MediaUsage;
import com.twitter.library.api.upload.g;
import com.twitter.library.service.ab;
import com.twitter.media.model.MediaFile;
import com.twitter.util.collection.z;
import com.twitter.util.h;
import java.util.List;

/* compiled from: Twttr */
public class n extends a {
    final MediaFile d;
    final MediaUsage e;
    int f;
    String g;
    private final List<Integer> h;
    private final List<z<String, String>> i;

    public n(Context context, ab abVar, MediaFile mediaFile, g gVar, com.twitter.util.z<bmx> zVar, List<Integer> list, List<z<String, String>> list2, MediaUsage mediaUsage) {
        boolean z = false;
        super(context, abVar, gVar, zVar);
        this.f = 0;
        this.h = com.twitter.util.collection.n.a(list);
        this.i = list2;
        this.d = mediaFile;
        this.e = mediaUsage;
        if (!this.h.isEmpty()) {
            z = true;
        }
        h.b(z);
    }

    public void a() {
        b();
    }

    synchronized void b() {
        p pVar = new p(this.a, this.b, this.d, new o(this), this.c, ((Integer) this.h.get(this.f)).intValue(), this.i, this.e);
        this.g = pVar.b();
        pVar.a();
    }

    boolean a(com.twitter.library.api.upload.h hVar) {
        if (!hVar.b() && this.f < this.h.size() && hVar.d() == 1009) {
            return true;
        }
        return false;
    }
}

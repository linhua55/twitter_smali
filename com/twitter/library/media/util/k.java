package com.twitter.library.media.util;

import com.twitter.media.model.ImageFile;
import com.twitter.model.media.EditableImage;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.math.c;
import com.twitter.util.object.ObjectUtils;
import cto;
import defpackage.ckf;
import java.util.List;

/* compiled from: Twttr */
public class k extends p {
    public final c a;
    public final boolean b;
    public final int c;
    public final float d;
    public final ImageFile e;
    public final int f;
    public final List<ckf> g;

    public k(EditableImage editableImage) {
        super(((ImageFile) editableImage.k).d);
        this.a = editableImage.f;
        this.b = editableImage.b;
        this.c = editableImage.c;
        this.d = editableImage.d;
        this.e = (ImageFile) editableImage.k;
        this.f = editableImage.e;
        this.g = editableImage.h;
    }

    protected String a() {
        return Integer.toString(hashCode(), 36);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof k) && a((k) obj));
    }

    public boolean a(k kVar) {
        return this == kVar || (kVar != null && super.a(kVar) && ObjectUtils.a(this.a, kVar.a) && this.b == kVar.b && this.c == kVar.c && this.d == kVar.d && this.f == kVar.f && cto.b(this.g, kVar.g));
    }

    public int hashCode() {
        int hashCode = (((((((((super.hashCode() * 31) + ObjectUtils.b(this.a)) * 31) + ObjectUtils.a(this.b)) * 31) + this.c) * 31) + ObjectUtils.a(this.d)) * 31) + this.f;
        if (CollectionUtils.b(this.g)) {
            return hashCode;
        }
        int i = hashCode;
        for (ckf hashCode2 : this.g) {
            i = hashCode2.hashCode() + (i * 31);
        }
        return i;
    }
}

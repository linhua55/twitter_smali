package com.twitter.model.core;

import com.twitter.util.collection.CollectionUtils;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
public class ab extends l<MediaEntity, z, ab> {
    protected /* synthetic */ j a(List list) {
        return b(list);
    }

    public /* bridge */ /* synthetic */ boolean d() {
        return super.d();
    }

    public ab(int i) {
        super(i);
    }

    public ab(z zVar) {
        super((j) zVar);
    }

    protected z b(List<MediaEntity> list) {
        return !CollectionUtils.b((Collection) list) ? new z(list) : z.e();
    }
}

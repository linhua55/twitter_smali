package com.twitter.library.dm;

import com.twitter.media.request.d;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import java.util.List;

/* compiled from: Twttr */
final class a extends d {
    a() {
    }

    public List<String> a(String str, Size size) {
        n d = n.d();
        if (!size.c()) {
            DMGroupAvatarImageVariant[] values = DMGroupAvatarImageVariant.values();
            int length = values.length;
            int i = size.a() == size.b() ? 0 : 1;
            while (i < length) {
                DMGroupAvatarImageVariant dMGroupAvatarImageVariant = values[i];
                if (dMGroupAvatarImageVariant.maxSize.b(size)) {
                    d.c(DMGroupAvatarImageVariant.a(str, dMGroupAvatarImageVariant));
                }
                i++;
            }
        }
        if (CollectionUtils.a(d)) {
            d.c(DMGroupAvatarImageVariant.a(str, DMGroupAvatarImageVariant.d));
        }
        return (List) d.q();
    }
}

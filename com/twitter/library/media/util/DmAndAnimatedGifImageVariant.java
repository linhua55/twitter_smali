package com.twitter.library.media.util;

import com.twitter.media.request.d;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.math.Size;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public enum DmAndAnimatedGifImageVariant {
    THUMB(Size.a(150, 150), ":thumb"),
    SMALL(Size.a(340, 680), ":small"),
    MEDIUM(Size.a(600, 1200), ":medium"),
    LARGE(Size.a(1024, 2048), ":large");
    
    public static final d e;
    public final Size maxSize;
    public final String postfix;

    static {
        e = new j();
    }

    private DmAndAnimatedGifImageVariant(Size size, String str) {
        this.maxSize = size;
        this.postfix = str;
    }

    public static List<String> a(String str, Size size) {
        List<String> arrayList = new ArrayList(4);
        if (!size.c()) {
            DmAndAnimatedGifImageVariant[] values = values();
            int length = values.length;
            int i = size.a() == size.b() ? 0 : 1;
            while (i < length) {
                DmAndAnimatedGifImageVariant dmAndAnimatedGifImageVariant = values[i];
                if (dmAndAnimatedGifImageVariant.maxSize.b(size)) {
                    arrayList.add(str + dmAndAnimatedGifImageVariant.postfix);
                }
                i++;
            }
        }
        if (CollectionUtils.b(arrayList)) {
            arrayList.add(str + LARGE.postfix);
        }
        return arrayList;
    }
}

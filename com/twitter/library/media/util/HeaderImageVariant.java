package com.twitter.library.media.util;

import com.twitter.media.request.d;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public enum HeaderImageVariant {
    MOBILE(Size.a(320, 160), "/mobile", 2.5f),
    WEB(Size.a(520, 260), "/web", 2.5f),
    IPAD(Size.a(626, 313), "/ipad", 2.5f),
    MOBILE_RETINA(Size.a(640, 320), "/mobile_retina", 2.5f),
    WEB_RETINA(Size.a(1040, 640), "/web_retina", 2.5f),
    IPAD_RETINA(Size.a(1252, 626), "/ipad_retina", 2.5f),
    SMALL(Size.a(300, 100), "/300x100", 3.5f),
    MEDIUM(Size.a(600, 200), "/600x200", 3.5f),
    LARGE(Size.a(1500, 500), "/1500x500", 3.5f);
    
    public static final d j;
    public final float maxAspectRatio;
    public final Size maxSize;
    public final String postfix;

    static {
        j = new n();
    }

    private HeaderImageVariant(Size size, String str, float f) {
        this.maxSize = size;
        this.postfix = str;
        this.maxAspectRatio = f;
    }
}

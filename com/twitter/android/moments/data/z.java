package com.twitter.android.moments.data;

import android.content.res.Resources;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.android.moments.viewmodels.MomentModule.Type;
import com.twitter.android.moments.viewmodels.ab;
import com.twitter.android.moments.viewmodels.d;
import com.twitter.library.av.playback.be;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.moments.g;
import com.twitter.model.moments.k;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class z {
    public static void a(MomentModule momentModule, MediaImageView mediaImageView) {
        Resources resources = mediaImageView.getResources();
        a(momentModule, mediaImageView, resources.getDimensionPixelSize(2131690224), resources.getDimensionPixelSize(2131690223));
    }

    public static void a(MomentModule momentModule, MediaImageView mediaImageView, int i, int i2) {
        float f = ((float) i) / ((float) i2);
        mediaImageView.setScaleFactor(2.0f);
        Size a = a(momentModule, f);
        if (a != null) {
            mediaImageView.a(a(momentModule, mediaImageView, b(momentModule, f), a));
        }
    }

    private static b a(MomentModule momentModule, MediaImageView mediaImageView, g gVar, Size size) {
        return a(a(momentModule), mediaImageView, gVar, size);
    }

    public static b a(String str, MediaImageView mediaImageView, g gVar, Size size) {
        return (b) new b(str).a(new aa(gVar, size, mediaImageView));
    }

    public static String a(MomentModule momentModule) {
        if (momentModule.a() == Type.VIDEO) {
            ImageSpec o = be.o(momentModule.g());
            if (o != null) {
                return o.c;
            }
            return null;
        } else if (momentModule.a() == Type.IMAGE) {
            return ((d) momentModule).b;
        } else {
            return null;
        }
    }

    public static Size a(MomentModule momentModule, float f) {
        g b = b(momentModule, f);
        if (b != null) {
            return b.f;
        }
        if (momentModule.a() != Type.VIDEO) {
            return momentModule.a() == Type.IMAGE ? ((d) momentModule).a : null;
        } else {
            ab abVar = (ab) momentModule;
            Size size = abVar.a;
            if (size != null && !size.c()) {
                return size;
            }
            ImageSpec o = be.o(abVar.g());
            return o != null ? Size.a(o.d.x, o.d.y) : null;
        }
    }

    private static g b(MomentModule momentModule, float f) {
        if (momentModule.a() == Type.VIDEO) {
            return k.a(((ab) momentModule).b, f);
        }
        if (momentModule.a() == Type.IMAGE) {
            return k.a(((d) momentModule).c, f);
        }
        return null;
    }
}

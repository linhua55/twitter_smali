package defpackage;

import android.net.Uri;
import com.facebook.cache.common.a;
import com.facebook.cache.common.d;
import com.facebook.imagepipeline.request.ImageRequest;
import dy;

/* compiled from: Twttr */
/* renamed from: eo */
public class eo implements eg {
    private static eo a;

    static {
        a = null;
    }

    protected eo() {
    }

    public static synchronized eo a() {
        eo eoVar;
        synchronized (eo.class) {
            if (a == null) {
                a = new eo();
            }
            eoVar = a;
        }
        return eoVar;
    }

    public a a(ImageRequest imageRequest) {
        return new dy(a(imageRequest.b()).toString(), imageRequest.e(), imageRequest.g(), imageRequest.f(), null, null);
    }

    public a b(ImageRequest imageRequest) {
        a b;
        String str = null;
        com.facebook.imagepipeline.request.a n = imageRequest.n();
        if (n != null) {
            b = n.b();
            str = n.getClass().getName();
        } else {
            b = null;
        }
        return new dy(a(imageRequest.b()).toString(), imageRequest.e(), imageRequest.g(), imageRequest.f(), b, str);
    }

    public a c(ImageRequest imageRequest) {
        return new d(a(imageRequest.b()).toString());
    }

    public Uri a(Uri uri) {
        return uri;
    }
}

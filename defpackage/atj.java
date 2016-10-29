package defpackage;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import rx.o;

/* compiled from: Twttr */
/* renamed from: atj */
class atj implements ate {
    private static final Handler a;
    private final ContentResolver b;

    static {
        a = new Handler(Looper.getMainLooper());
    }

    atj(ContentResolver contentResolver) {
        this.b = contentResolver;
    }

    public o<Void> a(Uri uri) {
        return o.a(new atk(this, uri));
    }
}

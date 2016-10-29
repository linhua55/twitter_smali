package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.twitter.util.math.Size;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
/* renamed from: ajk */
public class ajk {
    private final Size a;

    public static ajk a(Context context) {
        return new ajk(context);
    }

    @VisibleForTesting
    ajk(Context context) {
        this.a = r.a(context).b(0.5625f);
    }

    public Size a() {
        return this.a;
    }

    public Size b() {
        return c();
    }

    public Size c() {
        return this.a.a(0.65f);
    }
}

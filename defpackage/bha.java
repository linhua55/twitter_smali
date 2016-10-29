package defpackage;

import android.content.res.Resources;
import android.support.v7.recyclerview.BuildConfig;
import bdc;
import com.twitter.android.mx;
import com.twitter.library.util.aq;
import com.twitter.util.aj;
import java.util.regex.Pattern;

/* compiled from: Twttr */
/* renamed from: bha */
public abstract class bha {
    private static final Pattern k;
    protected final Resources a;
    protected final long b;
    protected final long c;
    protected final String d;
    protected final String e;
    protected final boolean f;
    protected final boolean g;
    protected final int h;
    protected final int i;
    protected final boolean j;
    private final boolean l;

    protected abstract CharSequence d();

    protected abstract CharSequence h();

    static {
        k = Pattern.compile("\\n+");
    }

    protected bha(bhb bhb) {
        boolean z;
        boolean z2 = true;
        this.a = bhb.b;
        this.b = bhb.c;
        this.c = bhb.d;
        this.d = bhb.e;
        this.e = bhb.f;
        this.f = bhb.g;
        this.i = bhb.h;
        if (this.e == null || aj.c(this.e) <= 0) {
            z = false;
        } else {
            z = true;
        }
        this.g = z;
        this.h = bhb.a;
        this.j = aj.b(this.d);
        if (!(this.f && this.j)) {
            z2 = false;
        }
        this.l = z2;
    }

    public CharSequence a() {
        switch (this.i) {
            case mx.TwitterButton_bounded /*17*/:
                return h();
            default:
                if (this.h == 4) {
                    return d();
                }
                if (this.h == 1) {
                    return g();
                }
                if (this.h == 2) {
                    return f();
                }
                if (this.h == 3) {
                    return e();
                }
                if (this.g) {
                    return b();
                }
                return BuildConfig.VERSION_NAME;
        }
    }

    protected CharSequence b() {
        CharSequence replaceAll = k.matcher(this.e).replaceAll(" ");
        if (!c()) {
            return replaceAll;
        }
        return this.a.getString(bdc.dm_user_conversation_preview, new Object[]{this.d, replaceAll});
    }

    protected boolean c() {
        return this.l;
    }

    protected CharSequence e() {
        if (!this.g) {
            return a(this.l);
        }
        if (this.l) {
            return aq.a(this.a, bdc.dm_user_sent_a_gif_with_message, this.d, this.e);
        }
        return aq.a(this.a, bdc.dm_sent_a_gif_with_message, this.e);
    }

    protected CharSequence a(boolean z) {
        if (!z) {
            return aq.a(this.a, bdc.dm_sent_a_gif, new Object[0]);
        }
        return aq.a(this.a, bdc.dm_user_sent_a_gif, this.d);
    }

    protected CharSequence f() {
        if (!this.g) {
            return b(this.l);
        }
        if (this.l) {
            return aq.a(this.a, bdc.dm_user_sent_a_video_with_message, this.d, this.e);
        }
        return aq.a(this.a, bdc.dm_sent_a_video_with_message, this.e);
    }

    protected CharSequence b(boolean z) {
        if (!z) {
            return aq.a(this.a, bdc.dm_sent_a_video, new Object[0]);
        }
        return aq.a(this.a, bdc.dm_user_sent_a_video, this.d);
    }

    protected CharSequence g() {
        if (!this.g) {
            return c(this.l);
        }
        if (this.l) {
            return aq.a(this.a, bdc.dm_user_sent_a_photo_with_message, this.d, this.e);
        }
        return aq.a(this.a, bdc.dm_sent_a_photo_with_message, this.e);
    }

    protected CharSequence c(boolean z) {
        if (!z) {
            return aq.a(this.a, bdc.dm_sent_a_photo, new Object[0]);
        }
        return aq.a(this.a, bdc.dm_user_sent_a_photo, this.d);
    }

    public String toString() {
        return a().toString();
    }
}

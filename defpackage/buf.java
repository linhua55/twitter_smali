package defpackage;

import android.app.Activity;
import android.content.Context;
import com.twitter.library.widget.TweetView;
import com.twitter.model.core.Tweet;
import com.twitter.util.h;
import com.twitter.util.math.Size;
import com.twitter.util.ui.r;
import cpb;
import cqf;

/* compiled from: Twttr */
/* renamed from: buf */
public class buf {
    private static buf a;
    private final bui b;

    public static buf a() {
        h.a();
        cqf.a(buf.class);
        if (a == null) {
            a = new buf(new buh());
        }
        return a;
    }

    private buf(bui bui) {
        this.b = bui;
    }

    public int b() {
        return buf.a(g());
    }

    public static int a(boolean z) {
        return z ? -1 : -3;
    }

    public int c() {
        return this.b.d();
    }

    public static int a(Context context) {
        return (int) Math.rint((double) (((float) r.a((Activity) context)) * 0.7f));
    }

    public boolean d() {
        return this.b.e();
    }

    public Size e() {
        return buf.b(this.b.e());
    }

    public static Size b(boolean z) {
        return z ? Size.b : TweetView.b;
    }

    public static boolean a(Tweet tweet, boolean z) {
        return cpb.c(tweet, buf.b(z));
    }

    public String f() {
        return this.b.b();
    }

    public boolean g() {
        return this.b.c();
    }
}

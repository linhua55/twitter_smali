package defpackage;

import android.view.View;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.model.core.Tweet;
import com.twitter.util.m;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
/* renamed from: abb */
class abb {
    final /* synthetic */ aba a;
    private final Tweet b;
    private boolean c;
    private boolean d;
    private long e;
    private WeakReference<View> f;

    abb(aba aba, View view, Tweet tweet) {
        this.a = aba;
        this.f = new WeakReference(view);
        this.b = tweet;
    }

    public void a(View view) {
        if (this.f.get() != view) {
            this.f = new WeakReference(view);
        }
    }

    private boolean a() {
        View view = (View) this.f.get();
        if (view == null || this.a.g == null) {
            return false;
        }
        Tweet a = this.a.a(view);
        if (a == null || a.P != this.b.P) {
            return false;
        }
        int top = view.getTop();
        int bottom = view.getBottom();
        if (top >= bottom) {
            return false;
        }
        bottom = (bottom + top) / 2;
        boolean z = bottom >= this.a.g.getTop() && bottom <= this.a.g.getBottom();
        return z;
    }

    private void a(long j) {
        TwitterScribeItem a = TwitterScribeItem.a(this.a.d, this.b, this.a.c, null);
        a.D = this.e;
        a.E = j;
        this.a.a.add(a);
    }

    void a(long j, boolean z) {
        if (z || !a()) {
            if (this.c) {
                long j2 = j - this.e;
                if (!this.d && j2 > this.a.e) {
                    if (j2 <= this.a.f) {
                        a(j);
                    } else {
                        a(this.e + this.a.f);
                    }
                    this.d = true;
                }
            }
            this.c = false;
        } else if (!this.c) {
            this.e = m.b();
            this.c = true;
            this.d = false;
        } else if (!this.d && j - this.e > this.a.f) {
            a(this.e + this.a.f);
            this.d = true;
        }
    }
}

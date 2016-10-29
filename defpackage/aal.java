package defpackage;

import com.twitter.library.media.widget.MultiTouchImageView;
import com.twitter.library.media.widget.s;

/* compiled from: Twttr */
/* renamed from: aal */
class aal implements s {
    final /* synthetic */ MultiTouchImageView a;
    final /* synthetic */ aaj b;

    aal(aaj aaj, MultiTouchImageView multiTouchImageView) {
        this.b = aaj;
        this.a = multiTouchImageView;
    }

    public void a() {
        if (!this.a.g() && this.b.h != null) {
            this.b.h.c();
        }
    }

    public void b() {
        this.a.d();
        if (this.b.h != null) {
            this.b.h.a(false);
        }
    }
}

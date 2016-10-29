package tv.periscope.android.ui.broadcast;

import android.support.annotation.Nullable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
class e {
    String a;
    final /* synthetic */ a b;
    private String c;
    private boolean d;

    e(a aVar, @Nullable String str) {
        this.b = aVar;
        this.c = str;
    }

    void a() {
        switch (b.a[this.b.e.ordinal()]) {
            case p.View_android_focusable /*1*/:
            case p.View_paddingStart /*2*/:
                this.b.c.endReplayViewed(this.a, this.b.g.b(), this.b.g.c());
            case p.View_paddingEnd /*3*/:
                String j;
                if (this.b.d != null) {
                    j = this.b.d.j();
                } else {
                    j = null;
                }
                this.b.c.endWatching(this.a, j, this.b.g.b(), this.b.g.c());
            default:
        }
    }

    boolean b() {
        return this.d;
    }

    void a(boolean z) {
        this.d = z;
    }

    void c() {
        switch (b.a[this.b.e.ordinal()]) {
            case p.View_android_focusable /*1*/:
            case p.View_paddingStart /*2*/:
                this.b.c.replayViewed(this.c);
            case p.View_paddingEnd /*3*/:
                this.b.c.startWatching(this.c);
            default:
        }
    }

    void d() {
        if (!b()) {
            switch (b.a[this.b.e.ordinal()]) {
                case p.View_android_focusable /*1*/:
                case p.View_paddingStart /*2*/:
                    this.b.c.pingReplayViewed(this.a, this.b.g.b());
                case p.View_paddingEnd /*3*/:
                    String j;
                    if (this.b.d != null) {
                        j = this.b.d.j();
                    } else {
                        j = null;
                    }
                    this.b.c.pingWatching(this.a, j, this.b.g.b(), this.b.g.c());
                default:
            }
        }
    }

    public String toString() {
        return " mLifecycleToken: " + this.c + "\n" + " sessionId: " + this.a;
    }
}

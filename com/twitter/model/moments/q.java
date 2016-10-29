package com.twitter.model.moments;

import com.twitter.util.aj;
import com.twitter.util.object.e;
import com.twitter.util.object.f;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class q extends f<o> {
    private String a;
    private String b;

    protected /* synthetic */ Object c() {
        return d();
    }

    public q a(String str) {
        this.a = str;
        return this;
    }

    public q b(String str) {
        this.b = str;
        return this;
    }

    protected void X_() {
        super.X_();
        if (this.b == null) {
            this.b = "UNDEFINED";
        }
    }

    public boolean bo_() {
        return aj.b(this.a) && aj.b(this.b);
    }

    protected o d() {
        String b = e.b(this.a);
        String str = this.b;
        Object obj = -1;
        switch (str.hashCode()) {
            case -1842431105:
                if (str.equals("SPORTS")) {
                    obj = null;
                    break;
                }
                break;
        }
        switch (obj) {
            case p.View_android_theme /*0*/:
                return new ai(b);
            default:
                return new o(b, this.b);
        }
    }
}

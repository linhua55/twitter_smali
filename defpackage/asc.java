package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import arp;
import arq;
import ary;

/* compiled from: Twttr */
/* renamed from: asc */
public class asc extends ary {
    protected asb a;
    protected long b;
    private asi c;

    public asc(Context context, String str, arp arp, String str2, arq arq, boolean z, int i) {
        super(context, str, arp, str2, arq, z, i);
        if (this.a == null) {
            this.a = new asb(a("FramerateValueTracker"));
        }
        this.c = asi.a();
    }

    protected void e() {
        super.e();
        this.a.a();
        q();
    }

    protected boolean h() {
        return false;
    }

    protected void b() {
        if (this.c != null) {
            this.c.b();
            super.b();
        }
    }

    protected void c() {
        if (this.c != null) {
            super.c();
            this.b = this.c.d();
            if (aM_() && this.b != -1) {
                this.a.a(this.b);
                b(true);
            }
            this.c.c();
        }
    }

    protected boolean aM_() {
        return true;
    }

    public Long d() {
        return Long.valueOf(this.a.b > 0 ? (long) this.a.b() : -1);
    }

    protected void a(Editor editor) {
        super.a(editor);
        this.a.a(editor);
    }

    protected void b(Editor editor) {
        super.b(editor);
        this.a.b(editor);
    }

    protected void a(SharedPreferences sharedPreferences) {
        super.a(sharedPreferences);
        this.a = new asb(a("FramerateValueTracker"), sharedPreferences);
    }
}

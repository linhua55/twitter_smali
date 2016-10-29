package defpackage;

import android.support.annotation.ColorInt;
import android.support.v4.content.ContextCompat;
import bhc;
import com.twitter.android.dm.widget.SentMessageBylineView;
import com.twitter.model.dms.k;

/* compiled from: Twttr */
/* renamed from: zd */
public class zd extends ya<zf> {
    private final SentMessageBylineView m;
    private final boolean n;
    private final k o;

    public zd(ze zeVar) {
        super(zeVar);
        this.n = zeVar.c;
        this.o = zeVar.d;
        this.m = ((zf) zeVar.a).b;
        this.m.setBylineListener(zeVar.e);
    }

    void d() {
        a(2130837810, 2131886209);
        this.l.setTextColor(ContextCompat.getColor(this.f, 2131886210));
        this.m.a(false);
    }

    void e() {
        super.e();
        if (this.n) {
            long j = ((bhc) this.a).j();
            this.m.a(this.o, j, this.c == null);
            if (this.o != null) {
                this.m.a(this.o, this.h, j, ((bhc) this.a).i);
            }
        }
    }

    String f() {
        return this.m.getTimestampText();
    }

    void a(String str) {
        this.m.setTimestampText(str);
    }

    void a(@ColorInt int i) {
        this.m.setTimestampTextColor(i);
    }

    void a(boolean z) {
        this.m.setVisibility(z ? 0 : 8);
    }

    void b(int i) {
        this.m.setPadding(i, 0, i, 0);
    }
}

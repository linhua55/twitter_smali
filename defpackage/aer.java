package defpackage;

import android.content.res.Resources;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.widget.TextView;
import clp;
import com.twitter.android.moments.ui.guide.al;
import com.twitter.media.request.a;
import com.twitter.util.collection.n;
import com.twitter.util.object.b;
import com.twitter.util.ui.q;
import java.util.Collection;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: aer */
public class aer implements al {
    protected final Resources a;
    private final aes b;
    private final b<TextView, aeu> c;

    @VisibleForTesting
    aer(Resources resources, aes aes, b<TextView, aeu> bVar) {
        this.a = resources;
        this.b = aes;
        this.c = bVar;
    }

    public Collection<View> b() {
        if (!this.b.a()) {
            return n.g();
        }
        return n.a(this.b.h(), this.b.e(), this.b.f(), this.b.g(), this.b.i());
    }

    public void a(int i) {
        switch (i) {
            case WireMessage.WIRE_CONTROL /*2*/:
                c();
            default:
                a();
        }
    }

    public void a(int i, clp clp, boolean z) {
        a(clp, i == 0 ? this.b.c() : this.b.d(), z);
    }

    public void a(boolean z) {
        int i;
        int i2 = 0;
        TextView textView = this.b.c().b;
        TextView textView2 = this.b.d().b;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        textView.setVisibility(i);
        if (!z) {
            i2 = 8;
        }
        textView2.setVisibility(i2);
    }

    public void a(String str) {
        this.b.g().setText(str);
    }

    public void b(int i) {
        if (i == -1) {
            c(this.b.c());
            c(this.b.d());
        } else if (i == 0) {
            b(this.b.c());
            a(this.b.d());
        } else if (i == 1) {
            a(this.b.c());
            b(this.b.d());
        }
    }

    private void a(aet aet) {
        aet.d.setVisibility(8);
        q.a(aet.b, 0.5f);
    }

    private void b(aet aet) {
        aet.d.setVisibility(0);
        q.a(aet.b, 1.0f);
    }

    private void c(aet aet) {
        aet.d.setVisibility(8);
        q.a(aet.b, 1.0f);
    }

    protected void a() {
        if (this.b.a()) {
            this.b.b().setVisibility(8);
        }
    }

    protected void c() {
        this.b.b().setVisibility(0);
    }

    private void a(clp clp, aet aet, boolean z) {
        CharSequence charSequence = clp.b.c;
        String str = clp.c;
        String a = clp.b.a();
        if (z) {
            ((aeu) this.c.a(aet.b)).a(str);
        } else {
            aet.b.setText(str);
        }
        aet.a.setText(charSequence);
        aet.c.a(a.a(a));
    }
}

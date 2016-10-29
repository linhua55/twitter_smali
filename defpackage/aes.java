package defpackage;

import android.content.res.Configuration;
import android.support.annotation.IdRes;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextSwitcher;
import android.widget.TextView;
import com.twitter.android.moments.ui.f;
import com.twitter.config.AppConfig;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.object.e;
import rx.subjects.ReplaySubject;

/* compiled from: Twttr */
/* renamed from: aes */
public class aes {
    @IdRes
    private final int a;
    private final View b;
    private final ViewStub c;
    private final Configuration d;
    private View e;
    private View f;
    private View g;
    private aet h;
    private aet i;
    private TextSwitcher j;
    private View k;
    private View l;
    private final ReplaySubject<View> m;

    public aes(View view, @IdRes int i, @IdRes int i2, Configuration configuration) {
        this.m = ReplaySubject.q();
        this.d = configuration;
        this.b = view;
        this.c = (ViewStub) view.findViewById(i);
        this.a = i2;
        if (this.c == null) {
            this.e = view.findViewById(this.a);
            this.m.b_(this.e);
            this.m.bs_();
            a(this.e);
            if (this.e == null && AppConfig.m().a()) {
                throw new IllegalArgumentException("ViewStub or inflated view need to be present in the given view group");
            }
        }
    }

    private void j() {
        if (this.e == null) {
            if (this.c == null || this.c.getParent() == null) {
                this.e = this.b.findViewById(this.a);
            } else {
                this.e = this.c.inflate();
                this.m.b_(this.e);
                this.m.bs_();
            }
            a(this.e);
        }
    }

    public boolean a() {
        return this.e != null;
    }

    private void a(View view) {
        this.f = view.findViewById(2131952820);
        this.g = view.findViewById(2131952821);
        this.h = new aet((TextView) this.f.findViewById(2131952807), (TextView) this.f.findViewById(2131952808), (MediaImageView) this.f.findViewById(2131952806), (ImageView) this.f.findViewById(2131952809));
        this.i = new aet((TextView) this.g.findViewById(2131952807), (TextView) this.g.findViewById(2131952808), (MediaImageView) this.g.findViewById(2131952806), (ImageView) this.g.findViewById(2131952809));
        this.h.d.setImageDrawable(new f(this.d));
        this.i.d.setImageDrawable(new f(this.d));
        this.j = (TextSwitcher) view.findViewById(2131952823);
        this.l = view.findViewById(2131952765);
        this.k = view.findViewById(2131952822);
    }

    public View b() {
        j();
        return (View) e.a(this.e);
    }

    public aet c() {
        j();
        return (aet) e.a(this.h);
    }

    public aet d() {
        j();
        return (aet) e.a(this.i);
    }

    public View e() {
        j();
        return (View) e.a(this.f);
    }

    public View f() {
        j();
        return (View) e.a(this.g);
    }

    public TextSwitcher g() {
        j();
        return (TextSwitcher) e.a(this.j);
    }

    public View h() {
        j();
        return this.l;
    }

    public View i() {
        j();
        return this.k;
    }
}

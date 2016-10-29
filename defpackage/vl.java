package defpackage;

import android.support.annotation.StringRes;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.widget.DatePicker.OnDateChangedListener;
import com.twitter.android.as;
import com.twitter.model.profile.ExtendedProfile.Visibility;
import com.twitter.ui.widget.v;

/* compiled from: Twttr */
/* renamed from: vl */
public class vl implements OnClickListener, OnFocusChangeListener {
    private final vm a;
    private final vn b;
    private final vo c;

    public vl(vm vmVar, vn vnVar, vo voVar) {
        this.a = vmVar;
        this.b = vnVar;
        this.a.d.setOnClickListener(this);
        this.a.e.setOnClickListener(this);
        this.a.f.setOnClickListener(this);
        this.c = voVar;
    }

    public void a(int i) {
        this.a.e.setVisibility(i);
    }

    public void a(long j) {
        this.a.a.setMaxDate(j);
    }

    public void b(long j) {
        this.a.a.setMinDate(j);
    }

    public void b(int i) {
        this.a.a.setVisibility(i);
    }

    public int a() {
        return this.a.a.getDayOfMonth();
    }

    public int b() {
        return this.a.a.getMonth();
    }

    public int c() {
        return this.a.a.getYear();
    }

    public void a(int i, int i2, int i3, OnDateChangedListener onDateChangedListener) {
        this.a.a.init(i, i2, i3, onDateChangedListener);
    }

    public void a(v vVar, @StringRes int i) {
        vr.a(this.a.b, vVar, i, this, this, null);
    }

    public void b(v vVar, @StringRes int i) {
        vr.a(this.a.c, vVar, i, this, this, null);
    }

    public void a(Visibility visibility) {
        this.a.b.setSelectedPosition(((as) this.a.b.getSelectionAdapter()).a(visibility));
    }

    public void b(Visibility visibility) {
        this.a.c.setSelectedPosition(((as) this.a.c.getSelectionAdapter()).a(visibility));
    }

    public boolean a(v vVar) {
        return this.a.c.getSelectionAdapter() != vVar;
    }

    public void b(v vVar) {
        this.a.c.setSelectionAdapter(vVar);
    }

    public void c(int i) {
        this.a.g.setVisibility(i);
        this.a.d.setVisibility(i);
    }

    public void d() {
        this.a.c.a();
    }

    public void a(String str) {
        this.a.e.setText(str);
    }

    public void e() {
        this.a.b.a();
    }

    public void onClick(View view) {
        if (view == this.a.d) {
            this.b.c();
        } else if (view == this.a.c.getDisplayLayout()) {
            this.b.L_();
        } else if (view == this.a.b.getDisplayLayout()) {
            this.b.e();
        } else if (view == this.a.e) {
            this.b.f();
        } else if (view == this.a.f || view.getId() == 2131952393) {
            this.b.M_();
        }
    }

    public void onFocusChange(View view, boolean z) {
        if (view == this.a.c.getDisplayLayout() && z) {
            this.c.i();
        } else if (view == this.a.b.getDisplayLayout() && z) {
            this.c.j();
        }
    }
}

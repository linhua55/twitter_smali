package defpackage;

import android.content.res.Resources;
import android.support.annotation.ColorInt;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.twitter.android.widget.TweetStatView;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.ui.view.p;
import com.twitter.ui.widget.ToggleTwitterButton;
import com.twitter.util.t;

/* compiled from: Twttr */
/* renamed from: agj */
public class agj extends agk {
    private final Resources c;
    private View d;
    private ProgressBar e;
    private UserImageView f;
    private TextView g;
    private TextView h;
    private View i;
    private TextView j;
    private View k;
    private ImageView l;
    private TextView m;
    private ToggleTwitterButton n;
    private ImageButton o;
    private TweetStatView p;
    private TweetStatView q;

    public agj(View view, ViewGroup viewGroup, LayoutInflater layoutInflater, int i) {
        super(view, viewGroup, layoutInflater, i);
        this.c = view.getResources();
    }

    protected void a(ViewGroup viewGroup) {
        this.d = viewGroup.findViewById(2131952810);
        this.e = (ProgressBar) viewGroup.findViewById(2131952801);
        this.f = (UserImageView) viewGroup.findViewById(2131952353);
        this.g = (TextView) viewGroup.findViewById(2131952750);
        this.h = (TextView) viewGroup.findViewById(2131952758);
        this.i = viewGroup.findViewById(2131952745);
        this.j = (TextView) viewGroup.findViewById(2131952811);
        this.k = viewGroup.findViewById(2131952812);
        this.l = (ImageView) viewGroup.findViewById(2131952813);
        this.m = (TextView) viewGroup.findViewById(2131952814);
        this.n = (ToggleTwitterButton) viewGroup.findViewById(2131952762);
        this.o = (ImageButton) viewGroup.findViewById(bcx.overflow);
        this.p = (TweetStatView) viewGroup.findViewById(2131952815);
        this.q = (TweetStatView) viewGroup.findViewById(2131952816);
        this.q.setName(this.c.getString(2131363385).toUpperCase());
        this.p.setName(this.c.getString(2131363386).toUpperCase());
    }

    public void a(boolean z) {
        this.d.setVisibility(z ? 0 : 8);
    }

    public void b(boolean z) {
        this.e.setVisibility(z ? 0 : 8);
    }

    public void a(CharSequence charSequence) {
        this.g.setText(charSequence);
    }

    public void a(String str) {
        this.f.a(str);
    }

    public void b(CharSequence charSequence) {
        this.h.setText(charSequence);
    }

    public void a(@ColorInt int i) {
        this.h.setTextColor(i);
    }

    public void c(boolean z) {
        this.i.setVisibility(z ? 0 : 8);
    }

    public void d(boolean z) {
        this.j.setVisibility(z ? 0 : 8);
    }

    public void c(CharSequence charSequence) {
        this.j.setText(charSequence);
        p.a(this.j);
    }

    public void a() {
        p.a(this.j);
    }

    public void e(boolean z) {
        this.k.setVisibility(z ? 0 : 8);
    }

    public void d(CharSequence charSequence) {
        this.m.setText(charSequence);
    }

    public void b(@ColorInt int i) {
        this.l.setColorFilter(i);
    }

    public void a(OnClickListener onClickListener) {
        this.d.setOnClickListener(onClickListener);
    }

    public void a(boolean z, CharSequence charSequence) {
        this.n.setText(charSequence);
        this.n.setShowIcon(!z);
        this.n.setToggledOn(z);
    }

    public void b(OnClickListener onClickListener) {
        this.n.setOnClickListener(onClickListener);
    }

    public boolean b() {
        return this.n.b();
    }

    public void c(OnClickListener onClickListener) {
        this.o.setOnClickListener(onClickListener);
    }

    public void a(long j, long j2) {
        this.p.setValue(t.a(this.c, j));
        this.q.setValue(t.a(this.c, j2));
        this.p.setVisibility(0);
        this.q.setVisibility(0);
    }
}

package defpackage;

import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.twitter.android.moments.ui.fullscreen.bs;
import com.twitter.model.moments.a;
import com.twitter.util.d;
import com.twitter.util.object.e;
import com.twitter.util.ui.q;

/* compiled from: Twttr */
/* renamed from: afq */
public class afq {
    private final Resources a;
    private final ViewGroup b;
    private final bs c;
    private final aia d;
    private final View e;
    private final View f;
    private final View g;
    private final TextView h;
    private final TextView i;
    private OnClickListener j;
    private ObjectAnimator k;

    public static afq a(LayoutInflater layoutInflater) {
        ViewGroup viewGroup = (ViewGroup) layoutInflater.inflate(2130969017, null, false);
        return new afq(viewGroup.getResources(), viewGroup, new bs(viewGroup), aia.b(viewGroup.findViewById(2131952760)), viewGroup.findViewById(2131952759), viewGroup.findViewById(2131952757), (TextView) viewGroup.findViewById(2131952781), viewGroup.findViewById(bcx.overflow), (TextView) viewGroup.findViewById(2131952659));
    }

    afq(Resources resources, ViewGroup viewGroup, bs bsVar, aia aia, View view, View view2, TextView textView, View view3, TextView textView2) {
        this.a = resources;
        this.b = viewGroup;
        this.c = bsVar;
        this.d = aia;
        this.e = view;
        this.f = view2;
        this.g = view3;
        this.h = textView;
        this.i = textView2;
        this.k = d.a(this.i, this.a.getColor(2131886429), this.a.getColor(2131886430), 1200);
    }

    public void a(CharSequence charSequence) {
        this.c.b().setText(charSequence);
    }

    public void b(CharSequence charSequence) {
        this.c.c().setText(charSequence);
    }

    public void a(CharSequence charSequence, CharSequence charSequence2) {
        int color = this.a.getColor(2131886288);
        CharSequence append = new SpannableStringBuilder(charSequence).append(" ").append(charSequence2);
        append.setSpan(new afr(this, color), append.length() - charSequence2.length(), append.length(), 33);
        TextView c = this.c.c();
        c.setMovementMethod(LinkMovementMethod.getInstance());
        c.setText(append, BufferType.SPANNABLE);
    }

    public void c(CharSequence charSequence) {
        this.c.d().setVisibility(0);
        this.c.d().setText(charSequence);
    }

    public void a() {
        this.c.d().setVisibility(8);
        this.e.setVisibility(8);
    }

    public void a(boolean z) {
        this.c.a().setVisibility(z ? 0 : 8);
    }

    public void b(boolean z) {
        this.f.setVisibility(z ? 0 : 8);
    }

    public void a(a aVar) {
        this.d.a(aVar);
    }

    public void a(OnClickListener onClickListener) {
        this.d.a(onClickListener);
    }

    public void b() {
        this.d.d();
    }

    public void b(OnClickListener onClickListener) {
        this.j = onClickListener;
    }

    public void c() {
        this.g.setVisibility(0);
    }

    public void d() {
        this.g.setVisibility(8);
    }

    public void c(OnClickListener onClickListener) {
        this.g.setOnClickListener(onClickListener);
    }

    public void e() {
        this.i.setVisibility(8);
        this.k.end();
        Object drawable = this.a.getDrawable(2130839487);
        ((Drawable) e.a(drawable)).setColorFilter(this.a.getColor(2131886301), Mode.SRC_IN);
        q.a(this.h, drawable, null, null, null);
        this.h.setVisibility(0);
    }

    public void f() {
        this.h.setVisibility(8);
        this.i.setVisibility(0);
        this.k.start();
    }

    public View g() {
        return this.b;
    }
}

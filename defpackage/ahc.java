package defpackage;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.support.v4.view.ViewCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.twitter.android.moments.ui.fullscreen.ch;
import com.twitter.media.request.c;
import com.twitter.model.moments.ax;
import com.twitter.util.d;
import com.twitter.util.ui.h;
import crd;

/* compiled from: Twttr */
/* renamed from: ahc */
public class ahc {
    private final ViewGroup a;
    private final ch b;
    private final View c;
    private final View d;
    private ax e;
    private agx f;

    public static ahc a(LayoutInflater layoutInflater) {
        return new ahc((ViewGroup) layoutInflater.inflate(2130969029, null, false));
    }

    public ahc(ViewGroup viewGroup) {
        this.a = viewGroup;
        this.b = new ch(viewGroup);
        this.c = viewGroup.findViewById(2131952745);
        this.d = viewGroup.findViewById(2131952826);
    }

    public void a(boolean z) {
        this.c.setVisibility(z ? 0 : 8);
    }

    public void a(ax axVar) {
        this.e = axVar;
        int i = axVar.c;
        this.b.b().setTextColor(i);
        this.b.c().setTextColor(i);
        this.b.d().setTextColor(h.g(i, 0.5f));
        this.a.setBackgroundColor(axVar.b);
        this.f = new agx(new TransitionDrawable(new Drawable[]{new ColorDrawable(axVar.b), new ColorDrawable(ViewCompat.MEASURED_STATE_MASK)}));
        this.a.setBackgroundDrawable(this.f.a());
    }

    public void a(CharSequence charSequence) {
        this.b.b().setText(charSequence);
    }

    public void b(CharSequence charSequence) {
        this.b.c().setText(charSequence);
    }

    public void c(CharSequence charSequence) {
        this.b.d().setText(charSequence);
    }

    public void a(String str, c cVar) {
        this.b.a().a(str, cVar);
    }

    public void a(OnClickListener onClickListener) {
        this.b.a().setOnClickListener(onClickListener);
        this.b.c().setOnClickListener(onClickListener);
        this.b.d().setOnClickListener(onClickListener);
        this.c.setOnClickListener(onClickListener);
    }

    public void b(boolean z) {
        if (z) {
            d.b(this.d, 200);
            return;
        }
        d.a(this.d, 200, crd.b());
    }

    public ViewGroup a() {
        return this.a;
    }

    public TextView b() {
        return this.b.b();
    }
}

package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.ImageButton;
import crd;

/* compiled from: Twttr */
/* renamed from: afx */
public class afx {
    private final Interpolator a;
    private final Context b;
    private final View c;
    private final View d;
    private final ImageButton e;
    private final int f;

    public static afx a(ViewGroup viewGroup) {
        return new afx(viewGroup.getContext(), viewGroup.findViewById(2131952587), viewGroup.findViewById(2131952766), (ImageButton) viewGroup.findViewById(2131952774), viewGroup.getResources());
    }

    afx(Context context, View view, View view2, ImageButton imageButton, Resources resources) {
        this.a = crd.b();
        this.b = context;
        this.c = view;
        this.d = view2;
        this.e = imageButton;
        this.e.setColorFilter(-1, Mode.SRC_IN);
        this.f = resources.getInteger(2131755056);
    }

    public void a(boolean z) {
        this.c.setEnabled(true);
        if (z) {
            a(1.0f);
        } else {
            this.c.setAlpha(1.0f);
        }
    }

    public void b(boolean z) {
        this.c.setEnabled(false);
        if (z) {
            a(0.0f);
        } else {
            this.c.setAlpha(0.0f);
        }
    }

    private void a(float f) {
        ViewCompat.animate(this.c).withLayer().alpha(f).setDuration((long) this.f).setInterpolator(this.a).start();
    }

    public void a() {
        this.e.setVisibility(0);
    }

    public void b() {
        this.e.setVisibility(8);
    }

    public void a(OnClickListener onClickListener) {
        this.d.setOnClickListener(onClickListener);
    }

    public void b(OnClickListener onClickListener) {
        this.e.setOnClickListener(onClickListener);
    }
}

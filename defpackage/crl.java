package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import cqn;
import cqp;

/* compiled from: Twttr */
/* renamed from: crl */
public class crl extends cqn implements OnTouchListener {
    private final View a;

    public crl(View view, cqp cqp) {
        this(view, cqp, ViewConfiguration.get(view.getContext()).getScaledTouchSlop());
    }

    crl(View view, cqp cqp, int i) {
        this(view, cqp, i, ((float) view.getContext().getResources().getDisplayMetrics().heightPixels) * 0.5f);
    }

    crl(View view, cqp cqp, int i, float f) {
        this(view, cqp, i, f, f * 0.2f);
    }

    crl(View view, cqp cqp, int i, float f, float f2) {
        super(cqp, i, f, f2);
        this.a = view;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean a;
        if (!(view instanceof cqq) || ((cqq) view).f() || a()) {
            a = a(this.a, motionEvent);
        } else {
            a = false;
        }
        return a || view.onTouchEvent(motionEvent);
    }
}

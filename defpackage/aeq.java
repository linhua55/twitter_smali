package defpackage;

import android.content.res.Resources;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.ui.widget.ToggleTwitterButton;

/* compiled from: Twttr */
/* renamed from: aeq */
public class aeq {
    private final Resources a;
    private final ToggleTwitterButton b;

    public aeq(View view) {
        this(view.getResources(), (ToggleTwitterButton) view.findViewById(2131952762));
    }

    @VisibleForTesting
    aeq(Resources resources, ToggleTwitterButton toggleTwitterButton) {
        this.b = toggleTwitterButton;
        this.a = resources;
    }

    public void a() {
        this.b.setVisibility(8);
    }

    public void b() {
        this.b.setVisibility(0);
    }

    public void a(boolean z) {
        this.b.setToggledOn(z);
        this.b.setText(this.a.getString(z ? 2131364049 : 2131362705));
        this.b.setShowIcon(!z);
    }

    public void a(OnClickListener onClickListener) {
        this.b.setOnClickListener(onClickListener);
    }

    public ToggleTwitterButton c() {
        return this.b;
    }
}

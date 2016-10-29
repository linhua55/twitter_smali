package defpackage;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;

/* compiled from: Twttr */
/* renamed from: afk */
public class afk {
    private final ViewGroup a;
    private final afy b;
    private final View c;

    public afk(ViewGroup viewGroup, afy afy) {
        this.a = viewGroup;
        this.b = afy;
        this.c = viewGroup.findViewById(2131952805);
    }

    public void a() {
        this.c.setVisibility(0);
    }

    public void b() {
        this.c.setVisibility(8);
    }

    public void a(OnClickListener onClickListener) {
        this.c.setOnClickListener(onClickListener);
    }

    public afy c() {
        return this.b;
    }

    public View d() {
        return this.a;
    }
}

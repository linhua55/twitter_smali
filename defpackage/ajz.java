package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.twitter.app.common.inject.m;

/* compiled from: Twttr */
/* renamed from: ajz */
public class ajz implements m {
    private final View a;
    private final ViewGroup b;

    public static ajz a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2130969004, viewGroup, false);
        return new ajz(inflate, (ViewGroup) inflate.findViewById(2131952735));
    }

    public ajz(View view, ViewGroup viewGroup) {
        this.a = view;
        this.b = viewGroup;
    }

    public View aO_() {
        return this.a;
    }

    public void a(ajj ajj) {
        this.b.addView(ajj.a(), new LayoutParams(-1, -1));
    }

    public void a() {
        this.b.removeAllViews();
    }
}

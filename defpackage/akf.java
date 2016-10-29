package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.twitter.app.common.inject.m;

/* compiled from: Twttr */
/* renamed from: akf */
public class akf implements m {
    private final View a;
    private final ViewGroup b;

    public static akf a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2130969006, viewGroup, false);
        return new akf(inflate, (ViewGroup) inflate.findViewById(2131952740));
    }

    public akf(View view, ViewGroup viewGroup) {
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

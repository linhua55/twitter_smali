package defpackage;

import android.support.annotation.LayoutRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;

/* compiled from: Twttr */
/* renamed from: afv */
public class afv {
    private final ViewGroup a;
    private final View b;
    private final ViewGroup c;

    public static afv a(LayoutInflater layoutInflater) {
        return new afv(layoutInflater, 2130969019);
    }

    public static afv b(LayoutInflater layoutInflater) {
        return new afv(layoutInflater, 2130969024);
    }

    public afv(LayoutInflater layoutInflater, @LayoutRes int i) {
        this.a = (ViewGroup) layoutInflater.inflate(i, null, false);
        this.b = this.a.findViewById(2131952766);
        this.c = (ViewGroup) this.a.findViewById(2131952780);
    }

    public ViewGroup a() {
        return this.a;
    }

    public void a(OnClickListener onClickListener) {
        this.b.setOnClickListener(onClickListener);
    }

    public ViewGroup b() {
        return this.c;
    }
}

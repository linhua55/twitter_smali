package defpackage;

import android.view.View;

/* compiled from: Twttr */
/* renamed from: afb */
public class afb implements afe {
    private final View a;

    public afb(View view) {
        this.a = view;
    }

    public float a() {
        return this.a.getScaleY();
    }

    public float b() {
        return this.a.getTranslationX();
    }

    public float c() {
        return this.a.getTranslationY();
    }

    public void a(aff aff) {
        this.a.setScaleX(aff.a);
        this.a.setScaleY(aff.a);
        this.a.setTranslationX(aff.b);
        this.a.setTranslationY(aff.c);
    }
}

package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.y;
import java.util.LinkedList;

public abstract class b<T extends a> {
    private T a;
    private Bundle b;
    private LinkedList<i> c;
    private final n<T> d;

    public b() {
        this.d = new c(this);
    }

    private void a(int i) {
        while (!this.c.isEmpty() && ((i) this.c.getLast()).a() >= i) {
            this.c.removeLast();
        }
    }

    private void a(Bundle bundle, i iVar) {
        if (this.a != null) {
            iVar.a(this.a);
            return;
        }
        if (this.c == null) {
            this.c = new LinkedList();
        }
        this.c.add(iVar);
        if (bundle != null) {
            if (this.b == null) {
                this.b = (Bundle) bundle.clone();
            } else {
                this.b.putAll(bundle);
            }
        }
        a(this.d);
    }

    public static void b(FrameLayout frameLayout) {
        Context context = frameLayout.getContext();
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        CharSequence a = y.a(context, isGooglePlayServicesAvailable, GooglePlayServicesUtil.zzao(context));
        CharSequence b = y.b(context, isGooglePlayServicesAvailable);
        View linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        View textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new LayoutParams(-2, -2));
        textView.setText(a);
        linearLayout.addView(textView);
        if (b != null) {
            View button = new Button(context);
            button.setLayoutParams(new LayoutParams(-2, -2));
            button.setText(b);
            linearLayout.addView(button);
            button.setOnClickListener(new g(context, isGooglePlayServicesAvailable));
        }
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        a(bundle, new f(this, frameLayout, layoutInflater, viewGroup, bundle));
        if (this.a == null) {
            a(frameLayout);
        }
        return frameLayout;
    }

    public T a() {
        return this.a;
    }

    public void a(Activity activity, Bundle bundle, Bundle bundle2) {
        a(bundle2, new d(this, activity, bundle, bundle2));
    }

    public void a(Bundle bundle) {
        a(bundle, new e(this, bundle));
    }

    protected void a(FrameLayout frameLayout) {
        b(frameLayout);
    }

    protected abstract void a(n<T> nVar);

    public void b() {
        a(null, new h(this));
    }

    public void b(Bundle bundle) {
        if (this.a != null) {
            this.a.b(bundle);
        } else if (this.b != null) {
            bundle.putAll(this.b);
        }
    }

    public void c() {
        if (this.a != null) {
            this.a.b();
        } else {
            a(5);
        }
    }

    public void d() {
        if (this.a != null) {
            this.a.c();
        } else {
            a(2);
        }
    }

    public void e() {
        if (this.a != null) {
            this.a.d();
        } else {
            a(1);
        }
    }

    public void f() {
        if (this.a != null) {
            this.a.e();
        }
    }
}

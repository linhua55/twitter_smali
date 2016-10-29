package com.crashlytics.android.core;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.ScrollView;
import android.widget.TextView;
import io.fabric.sdk.android.services.settings.o;

/* compiled from: Twttr */
class m implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ t b;
    final /* synthetic */ ay c;
    final /* synthetic */ o d;
    final /* synthetic */ f e;

    m(f fVar, Activity activity, t tVar, ay ayVar, o oVar) {
        this.e = fVar;
        this.a = activity;
        this.b = tVar;
        this.c = ayVar;
        this.d = oVar;
    }

    public void run() {
        Builder builder = new Builder(this.a);
        OnClickListener nVar = new n(this);
        float f = this.a.getResources().getDisplayMetrics().density;
        int a = f.a(f, 5);
        View textView = new TextView(this.a);
        textView.setAutoLinkMask(15);
        textView.setText(this.c.b());
        textView.setTextAppearance(this.a, 16973892);
        textView.setPadding(a, a, a, a);
        textView.setFocusable(false);
        View scrollView = new ScrollView(this.a);
        scrollView.setPadding(f.a(f, 14), f.a(f, 2), f.a(f, 10), f.a(f, 12));
        scrollView.addView(textView);
        builder.setView(scrollView).setTitle(this.c.a()).setCancelable(false).setNeutralButton(this.c.c(), nVar);
        if (this.d.d) {
            builder.setNegativeButton(this.c.e(), new o(this));
        }
        if (this.d.f) {
            builder.setPositiveButton(this.c.d(), new p(this));
        }
        builder.show();
    }
}

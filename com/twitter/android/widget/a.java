package com.twitter.android.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.android.client.c;
import com.twitter.android.util.AppRatingPromptHelper;
import com.twitter.android.util.AppRatingPromptHelper.AppRatingEvent;

/* compiled from: Twttr */
public class a implements OnClickListener {
    Context a;
    Button b;
    Button c;
    Button d;
    Button e;
    TextView f;
    TextView g;
    d h;
    private final long i;
    private AlertDialog j;
    private final e k;

    public a(Context context, long j) {
        this.k = new b(this);
        this.a = context;
        this.i = j;
    }

    public void a() {
        if (this.j != null && this.j.isShowing()) {
            this.j.dismiss();
        }
        this.j = null;
    }

    protected void a(AppRatingEvent appRatingEvent) {
        AppRatingPromptHelper.a(appRatingEvent, c.a(this.a), this.i);
    }

    protected void b() {
        a(AppRatingEvent.RATE_YES);
        AppRatingPromptHelper.a(this.a);
        this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.twitter.android")));
    }

    protected void c() {
        a(AppRatingEvent.RATE_NO);
        AppRatingPromptHelper.a(this.a);
    }

    protected void d() {
        a(AppRatingEvent.RATE_LATER);
        AppRatingPromptHelper.b(this.a);
    }

    protected Builder e() {
        return new Builder(this.a);
    }

    public void f() {
        a(AppRatingEvent.IMPRESSION);
        View inflate = ((LayoutInflater) this.a.getSystemService("layout_inflater")).inflate(g(), null);
        AppRatingPromptHelper.b(this.a);
        a(inflate);
        this.j = e().setView(inflate).create();
        this.j.show();
    }

    protected int g() {
        return 2130968631;
    }

    protected void a(View view) {
        this.f = (TextView) view.findViewById(2131951964);
        this.g = (TextView) view.findViewById(2131951965);
        this.b = (Button) view.findViewById(2131951966);
        this.c = (Button) view.findViewById(2131951967);
        this.e = (Button) view.findViewById(2131951968);
        this.d = (Button) view.findViewById(2131951969);
        this.h = new d(this.a, (LinearLayout) view.findViewById(2131951958), this.k);
        this.c.setOnClickListener(this);
        this.b.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.d.setOnClickListener(this);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case 2131951966:
                c();
                break;
            case 2131951967:
                d();
                break;
            case 2131951968:
                b();
                break;
            case 2131951969:
                a(AppRatingEvent.APP_FEEDBACK);
                AppRatingPromptHelper.a(this.a);
                int a = this.h.a();
                Intent intent = new Intent("android.intent.action.SENDTO");
                intent.setData(Uri.parse("mailto:" + this.a.getString(2131361904)));
                intent.putExtra("android.intent.extra.SUBJECT", String.format(this.a.getString(2131361906), new Object[]{Integer.valueOf(a)}));
                intent.putExtra("android.intent.extra.TEXT", String.format(this.a.getString(2131361905), new Object[]{Integer.valueOf(a)}));
                this.a.startActivity(intent);
                break;
        }
        a();
    }
}

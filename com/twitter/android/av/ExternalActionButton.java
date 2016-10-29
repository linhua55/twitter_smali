package com.twitter.android.av;

import android.annotation.TargetApi;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

/* compiled from: Twttr */
public abstract class ExternalActionButton extends FrameLayout implements OnClickListener, au {
    protected TextView a;
    protected ProgressBar b;
    protected boolean c;
    private OnClickListener d;
    private boolean e;
    private boolean f;
    private boolean g;
    private Intent h;
    private Intent i;
    private String j;
    private String k;
    private am l;

    protected abstract void a(Context context, AttributeSet attributeSet, int i);

    public ExternalActionButton(Context context) {
        super(context);
        this.d = null;
        this.e = false;
        this.f = false;
        this.g = false;
        this.h = null;
        this.i = null;
        this.j = TtmlNode.ANONYMOUS_REGION_ID;
        this.k = TtmlNode.ANONYMOUS_REGION_ID;
        this.l = null;
        b(context, null, 0);
    }

    public ExternalActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = null;
        this.e = false;
        this.f = false;
        this.g = false;
        this.h = null;
        this.i = null;
        this.j = TtmlNode.ANONYMOUS_REGION_ID;
        this.k = TtmlNode.ANONYMOUS_REGION_ID;
        this.l = null;
        b(context, attributeSet, 0);
    }

    public ExternalActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = null;
        this.e = false;
        this.f = false;
        this.g = false;
        this.h = null;
        this.i = null;
        this.j = TtmlNode.ANONYMOUS_REGION_ID;
        this.k = TtmlNode.ANONYMOUS_REGION_ID;
        this.l = null;
        b(context, attributeSet, i);
    }

    public void setEventLister(am amVar) {
        this.l = amVar;
    }

    public void setExternalUri(Uri uri) {
        this.h = new Intent("android.intent.action.VIEW");
        this.h.setData(uri);
        b();
    }

    @TargetApi(17)
    public void setReferrerUri(Uri uri) {
        if (VERSION.SDK_INT >= 17) {
            this.h.putExtra("android.intent.extra.REFERRER", uri);
        }
    }

    public void setFallbackIntent(Intent intent) {
        this.i = intent;
    }

    public void setFallbackUri(Uri uri) {
        this.i = new Intent("android.intent.action.VIEW");
        this.i.setData(uri);
    }

    public void setActionText(String str) {
        this.j = str;
        a();
    }

    public void setFallbackText(String str) {
        this.k = str;
        a();
    }

    public void setTextColor(int i) {
        this.a.setTextColor(i);
    }

    private void b(Context context, AttributeSet attributeSet, int i) {
        a(context, attributeSet, i);
        super.setOnClickListener(this);
    }

    private void a() {
        if (this.c) {
            if (this.f) {
                this.b.setVisibility(0);
                this.a.setVisibility(8);
            } else {
                this.b.setVisibility(8);
                this.a.setVisibility(0);
            }
        } else if (this.g) {
            setVisibility(0);
        }
        if (!this.f) {
            this.a.setText(this.e ? this.j : this.k);
        }
    }

    private void b() {
        if (!this.f && this.h != null) {
            this.f = true;
            a();
            new at(getContext().getPackageManager(), this).execute(new Intent[]{this.h});
        }
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            b();
        }
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.d = onClickListener;
    }

    public void onClick(View view) {
        if (this.d != null) {
            this.d.onClick(view);
        }
        Intent intent = this.e ? this.h : this.i;
        if (!this.f && intent != null) {
            if (this.l != null) {
                this.l.b(!this.e);
            }
            try {
                getContext().startActivity(intent);
            } catch (ActivityNotFoundException e) {
                b();
            } catch (SecurityException e2) {
                b();
            }
        }
    }

    public void a(boolean z) {
        this.e = z;
        this.f = false;
        this.g = true;
        a();
        if (this.l != null) {
            this.l.a(z);
        }
    }

    public void a(Uri uri) {
        if (this.c) {
            setVisibility(uri != null ? 0 : 8);
        }
    }
}

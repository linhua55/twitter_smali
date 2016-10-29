package com.twitter.android.composer;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.LayoutRes;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.media.TransportMediator;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.mx;
import com.twitter.android.widget.LoggedOutBar;
import com.twitter.internal.android.widget.DockLayout;
import com.twitter.util.ui.r;
import defpackage.bus;

/* compiled from: Twttr */
public class ComposerDockLayout extends DockLayout {
    ba a;
    @LayoutRes
    private final int b;
    private View c;
    private LoggedOutBar d;
    private boolean e;
    private FloatingActionButton f;

    public ComposerDockLayout(Context context) {
        this(context, null);
    }

    public ComposerDockLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ComposerDockLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.ComposerDockLayout, i, 0);
        this.b = obtainStyledAttributes.getResourceId(0, 2130968970);
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        if (this.b == 0) {
            throw new IllegalStateException("The bar layout resource id is undefined");
        }
        View view;
        View inflate = LayoutInflater.from(getContext()).inflate(this.b, this, false);
        addView(inflate);
        setBottomDockView(inflate);
        if (getResources().getConfiguration().fontScale > 1.0f) {
            inflate.getLayoutParams().height = -2;
        }
        if (bus.a().d()) {
            view = null;
            inflate.setVisibility(8);
            r.c(inflate.findViewById(2131952688));
            this.e = true;
        } else {
            view = inflate.findViewById(2131952688);
        }
        if (view != null) {
            az azVar = new az(this);
            view.setOnClickListener(azVar);
            view.findViewById(2131952689).setOnClickListener(azVar);
            view.findViewById(2131952690).setOnClickListener(azVar);
            view.findViewById(2131952691).setOnClickListener(azVar);
            this.c = view;
        }
        this.d = (LoggedOutBar) findViewById(2131952669);
        super.onFinishInflate();
    }

    public void setFab(FloatingActionButton floatingActionButton) {
        if (this.f != null) {
            this.f.setOnClickListener(null);
        }
        if (floatingActionButton != null) {
            floatingActionButton.setVisibility(this.e ? 0 : 8);
        }
        this.f = floatingActionButton;
    }

    public void setBottomVisible(boolean z) {
        if (!this.e || this.f == null || this.d.getVisibility() == 0) {
            super.setBottomVisible(z);
        } else {
            this.f.setVisibility(z ? 0 : 8);
        }
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0 || this.a == null || this.c == null || this.c.getVisibility() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case mx.TweetView_mediaTagIcon /*27*/:
                this.a.a(3);
                return true;
            case TransportMediator.KEYCODE_MEDIA_RECORD /*130*/:
                this.a.a(6);
                return true;
            default:
                return false;
        }
    }

    public void setLoggedOutMode(boolean z) {
        int i = 8;
        boolean z2 = false;
        if (this.c != null) {
            this.c.setVisibility(z ? 8 : 0);
        }
        if (this.e && this.f != null) {
            int i2;
            FloatingActionButton floatingActionButton = this.f;
            if (z) {
                i2 = 8;
            } else {
                i2 = 0;
            }
            floatingActionButton.setVisibility(i2);
        }
        LoggedOutBar loggedOutBar = this.d;
        if (z) {
            i = 0;
        }
        loggedOutBar.setVisibility(i);
        if (z || !this.e) {
            z2 = true;
        }
        super.setBottomVisible(z2);
    }

    public void a(Activity activity) {
        this.d.setDefaultOnClickListener(activity);
    }

    public void setComposerDockListener(ba baVar) {
        this.a = baVar;
    }
}

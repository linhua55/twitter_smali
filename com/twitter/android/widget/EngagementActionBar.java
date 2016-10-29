package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import buz;
import ceq;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.model.core.Tweet;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class EngagementActionBar extends LinearLayout {
    private static final int[] a;
    private final Map<Integer, View> b;
    private Tweet c;
    private OnClickListener d;

    static {
        a = new int[]{2131951910, 2131951911, 2131951913, 2131951912, 2131951909, 2131951646};
    }

    public EngagementActionBar(Context context) {
        super(context, null);
        this.b = new HashMap(a.length);
    }

    public EngagementActionBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new HashMap(a.length);
    }

    public EngagementActionBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new HashMap(a.length);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        for (int i : a) {
            View findViewById = findViewById(i);
            if (findViewById != null) {
                this.b.put(Integer.valueOf(i), findViewById);
            }
        }
    }

    public void setTweet(Tweet tweet) {
        this.c = tweet;
        a();
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        for (View onClickListener2 : this.b.values()) {
            onClickListener2.setOnClickListener(onClickListener);
        }
        this.d = onClickListener;
    }

    public void a() {
        if (this.c != null) {
            boolean z;
            Session c = bg.a().c();
            boolean z2 = this.c.b == c.g();
            if (this.c.u > 0) {
                z = true;
            } else {
                z = false;
            }
            for (View view : this.b.values()) {
                ToggleImageButton toggleImageButton;
                switch (view.getId()) {
                    case 2131951646:
                        int i;
                        if (ceq.i(this.c)) {
                            i = 0;
                        } else {
                            i = 8;
                        }
                        view.setVisibility(i);
                        break;
                    case 2131951909:
                        view.setEnabled(z);
                        break;
                    case 2131951910:
                        toggleImageButton = (ToggleImageButton) view;
                        boolean d = buz.a().d();
                        if (!z || (z2 && !d && !this.c.c)) {
                            toggleImageButton.setEnabled(false);
                            break;
                        }
                        toggleImageButton.setToggledOn(this.c.d);
                        toggleImageButton.setVisibility(0);
                        d = !this.c.G || (z2 && d);
                        toggleImageButton.setEnabled(d);
                        break;
                    case 2131951911:
                        toggleImageButton = (ToggleImageButton) view;
                        if (!z) {
                            toggleImageButton.setEnabled(false);
                            break;
                        } else {
                            toggleImageButton.setToggledOn(this.c.a);
                            break;
                        }
                    case 2131951912:
                        view.setEnabled(!this.c.G);
                        break;
                    case 2131951913:
                        view.setEnabled(ceq.b(this.c, c.g()));
                        break;
                    default:
                        break;
                }
            }
        }
    }

    public void b() {
        for (View soundEffectsEnabled : this.b.values()) {
            soundEffectsEnabled.setSoundEffectsEnabled(false);
        }
    }
}

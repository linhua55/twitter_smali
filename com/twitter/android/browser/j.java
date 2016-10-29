package com.twitter.android.browser;

import android.app.Activity;
import android.net.Uri;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

/* compiled from: Twttr */
public class j extends a {
    private final boolean e;

    j(g gVar, h hVar, boolean z) {
        super(gVar, hVar);
        this.e = z;
    }

    protected int h() {
        return 2130968940;
    }

    protected void f() {
        Activity activity = (Activity) this.d.getContext();
        TextView textView = (TextView) activity.findViewById(2131952643);
        textView.setOnClickListener(new k(this, activity, (FrameLayout) activity.findViewById(2131952642), textView));
    }

    protected void g() {
        Activity activity = (Activity) this.d.getContext();
        if (this.e) {
            b(activity, (FrameLayout) activity.findViewById(2131952642));
            return;
        }
        ((TextView) activity.findViewById(2131952643)).setText("Loaded " + Uri.parse(this.b).getHost());
    }

    private static void b(Activity activity, ViewGroup viewGroup) {
        Window window = activity.getWindow();
        window.addFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        window.setFormat(1);
        window.setLayout(-1, -1);
        ((LinearLayout) activity.findViewById(2131952641)).getLayoutParams().height = -1;
        viewGroup.setVisibility(8);
    }
}

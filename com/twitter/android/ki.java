package com.twitter.android;

import android.os.Build.VERSION;
import android.view.ViewGroup.MarginLayoutParams;
import com.twitter.android.autocomplete.ListViewSuggestionEditText;

/* compiled from: Twttr */
class ki implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ MarginLayoutParams b;
    final /* synthetic */ MediaTagFragment c;

    ki(MediaTagFragment mediaTagFragment, int i, MarginLayoutParams marginLayoutParams) {
        this.c = mediaTagFragment;
        this.a = i;
        this.b = marginLayoutParams;
    }

    public void run() {
        ListViewSuggestionEditText b = MediaTagFragment.b(this.c);
        if (b.getLayout() != null) {
            int i = b.getLineCount() > 1 ? this.a : 0;
            b.setLineSpacing((float) i, 1.0f);
            if (VERSION.SDK_INT < 21) {
                this.b.bottomMargin = -i;
            }
        }
    }
}

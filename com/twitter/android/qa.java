package com.twitter.android;

import android.os.Build.VERSION;
import android.view.ViewGroup.MarginLayoutParams;
import com.twitter.android.autocomplete.ListViewSuggestionEditText;

/* compiled from: Twttr */
class qa implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ MarginLayoutParams b;
    final /* synthetic */ SelectionFragment c;

    qa(SelectionFragment selectionFragment, int i, MarginLayoutParams marginLayoutParams) {
        this.c = selectionFragment;
        this.a = i;
        this.b = marginLayoutParams;
    }

    public void run() {
        ListViewSuggestionEditText listViewSuggestionEditText = this.c.e;
        if (listViewSuggestionEditText.getLayout() != null) {
            int i = listViewSuggestionEditText.getLineCount() > 1 ? this.a : 0;
            listViewSuggestionEditText.setLineSpacing((float) i, 1.0f);
            if (VERSION.SDK_INT < 21) {
                this.b.bottomMargin = -i;
            }
        }
    }
}

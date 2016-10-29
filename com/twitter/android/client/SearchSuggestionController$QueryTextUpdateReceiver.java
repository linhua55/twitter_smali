package com.twitter.android.client;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class SearchSuggestionController$QueryTextUpdateReceiver extends ResultReceiver {
    private WeakReference<TextView> a;
    private String b;

    SearchSuggestionController$QueryTextUpdateReceiver(Handler handler) {
        super(handler);
    }

    public SearchSuggestionController$QueryTextUpdateReceiver a(String str) {
        this.b = str;
        return this;
    }

    public SearchSuggestionController$QueryTextUpdateReceiver a(TextView textView) {
        this.a = new WeakReference(textView);
        return this;
    }

    public void onReceiveResult(int i, Bundle bundle) {
        if (i == 3 && this.a != null) {
            TextView textView = (TextView) this.a.get();
            if (textView != null && this.b != null) {
                textView.setText(this.b);
            }
        }
    }
}

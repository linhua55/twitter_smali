package defpackage;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: aaz */
class aaz implements OnGlobalLayoutListener {
    final /* synthetic */ View a;
    final /* synthetic */ Tweet b;
    final /* synthetic */ aay c;

    aaz(aay aay, View view, Tweet tweet) {
        this.c = aay;
        this.a = view;
        this.b = tweet;
    }

    public void onGlobalLayout() {
        this.c.a.a(this.a, this.b);
        this.a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }
}

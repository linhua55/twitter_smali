package android.support.v7.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class Toolbar$3 implements OnClickListener {
    final /* synthetic */ Toolbar this$0;

    Toolbar$3(Toolbar toolbar) {
        this.this$0 = toolbar;
    }

    public void onClick(View view) {
        this.this$0.collapseActionView();
    }
}

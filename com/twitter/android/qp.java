package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.library.widget.UserView;

/* compiled from: Twttr */
class qp implements OnClickListener {
    final /* synthetic */ qo a;

    qp(qo qoVar) {
        this.a = qoVar;
    }

    public void onClick(View view) {
        qu quVar = (qu) view.getTag();
        if (view instanceof UserView) {
            UserView userView = (UserView) view;
            userView.t.toggle();
            xp xpVar = quVar.b;
            if (xpVar != null) {
                this.a.a(userView, xpVar.e);
            }
        }
    }
}

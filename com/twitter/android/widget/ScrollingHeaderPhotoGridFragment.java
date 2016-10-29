package com.twitter.android.widget;

import android.database.Cursor;
import android.support.v4.app.FragmentActivity;
import com.twitter.android.PhotoGridFragment;
import com.twitter.android.ScrollingHeaderActivity;
import com.twitter.library.service.x;

/* compiled from: Twttr */
public class ScrollingHeaderPhotoGridFragment extends PhotoGridFragment {
    protected boolean p() {
        return true;
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        FragmentActivity activity = getActivity();
        if (activity instanceof ScrollingHeaderActivity) {
            ((ScrollingHeaderActivity) activity).a(false);
        }
        ab();
    }

    protected void J_() {
    }

    protected void h() {
        Cursor aA = aA();
        if (aA != null && ar() && !this.a && aA.getCount() < 400) {
            a(1);
        }
    }
}

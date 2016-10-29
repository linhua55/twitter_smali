package com.twitter.android;

import android.database.Cursor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.view.ViewStub.OnInflateListener;
import android.widget.ScrollView;
import bdl;
import com.twitter.android.widget.ScrollingHeaderListFragment;
import com.twitter.app.common.list.k;
import com.twitter.app.common.list.t;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public abstract class ProfileSingleViewFragment extends ScrollingHeaderListFragment<Cursor, bdl<Cursor>> implements OnInflateListener {
    protected TwitterUser a;

    protected abstract int m();

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = (TwitterUser) C().h("user");
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View a = super.a(layoutInflater, bundle);
        k ap = ap();
        if (ap.b != null) {
            if (ap.b instanceof ScrollView) {
                ScrollView scrollView = (ScrollView) ap.b;
                scrollView.setFocusableInTouchMode(true);
                scrollView.setDescendantFocusability(131072);
            }
            ViewStub viewStub = (ViewStub) ap.b.findViewById(2131953130);
            if (viewStub != null) {
                viewStub.setLayoutResource(m());
                viewStub.setOnInflateListener(this);
                viewStub.inflate();
            }
        }
        return a;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ap().a(bdl.b(this.T));
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.d(2130969366).f(2130969224);
    }

    public void a() {
        super.a();
        ab();
    }

    protected boolean p() {
        return true;
    }
}

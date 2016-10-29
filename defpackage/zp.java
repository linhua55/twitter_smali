package defpackage;

import android.support.v4.app.Fragment;
import com.twitter.android.io;
import com.twitter.app.common.list.TwitterListFragment;

/* compiled from: Twttr */
/* renamed from: zp */
public class zp extends zo<TwitterListFragment> {
    public void a(TwitterListFragment twitterListFragment) {
        twitterListFragment.e(!io.a());
    }

    public boolean b(Fragment fragment) {
        return fragment instanceof TwitterListFragment;
    }
}

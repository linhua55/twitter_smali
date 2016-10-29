package com.twitter.android;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.twitter.android.widget.ScrollingHeaderUsersListFragment;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.users.UsersFragment;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import java.util.List;

/* compiled from: Twttr */
class fg extends AbsPagesAdapter {
    final /* synthetic */ EmailExploreActivity g;

    fg(EmailExploreActivity emailExploreActivity, FragmentActivity fragmentActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar) {
        this.g = emailExploreActivity;
        super(fragmentActivity, fragmentActivity.getSupportFragmentManager(), list, viewPager, horizontalListView, kmVar);
        this.f = viewPager.getCurrentItem();
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        TwitterListFragment twitterListFragment = (TwitterListFragment) super.instantiateItem(viewGroup, i);
        this.g.a((Fragment) twitterListFragment);
        if (twitterListFragment instanceof SearchFragment) {
            ((SearchFragment) twitterListFragment).a(new fh(this.g, ((at) this.b.get(i)).a, this.e));
        } else if (i == 2) {
            ((ScrollingHeaderUsersListFragment) twitterListFragment).a(new fj(this.g, null));
            this.g.k = (UsersFragment) twitterListFragment;
        }
        a(twitterListFragment, i);
        return twitterListFragment;
    }

    public void onPageSelected(int i) {
        super.onPageSelected(i);
        a(c(this.f));
        b((at) this.b.get(i));
        this.f = i;
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.g.ab().g()).b("explore_email", "category", r0.e, null, "select")).f(this.g.B));
        this.g.Y().h();
    }

    public void onPageScrollStateChanged(int i) {
        b().a(i);
        if (i == 1) {
            for (at c : this.b) {
                this.g.a(c(c));
            }
        }
    }
}

package com.twitter.android.news;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.os.EnvironmentCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.mx;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.ui.widget.slidingtab.SlidingTabLayout;
import com.twitter.ui.widget.slidingtab.d;
import defpackage.bbn;
import defpackage.bbu;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class NewsFragment extends AbsFragment implements OnPageChangeListener, d {
    private static final Map<Integer, String> a;
    private ViewPager b;
    private q c;
    private SlidingTabLayout d;
    private int e;

    static {
        a = new HashMap();
        a.put(Integer.valueOf(0), "top");
        a.put(Integer.valueOf(2), "business");
        a.put(Integer.valueOf(6), "domestic");
        a.put(Integer.valueOf(4), "entertainment");
        a.put(Integer.valueOf(3), "international");
        a.put(Integer.valueOf(5), "science_tech");
        a.put(Integer.valueOf(1), "sports");
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        return layoutInflater.inflate(2130969131, null);
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        List c = c();
        this.b = (ViewPager) getView().findViewById(2131952457);
        this.c = new q(getActivity().getSupportFragmentManager(), getActivity(), c);
        this.b.setAdapter(this.c);
        this.b.addOnPageChangeListener(this);
        this.d = (SlidingTabLayout) getView().findViewById(2131952459);
        this.d.a(this);
        this.e = this.b.getCurrentItem();
        if (c.size() == 1) {
            this.d.setVisibility(8);
            return;
        }
        this.d.a(2130969135, 2131952950);
        this.d.setVisibility(0);
        this.d.setViewPager(this.b);
    }

    private List<p> c() {
        List<Integer> e = n.e();
        List<p> arrayList = new ArrayList();
        for (Integer intValue : e) {
            int intValue2 = intValue.intValue();
            String c = c(intValue2);
            Bundle bundle = new Bundle();
            bundle.putInt("topicId", intValue2);
            arrayList.add(new p(c, CategorizedNewsFragment.class, bundle));
        }
        return arrayList;
    }

    private String c(int i) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                return getString(2131363144);
            case WireMessage.WIRE_CHAT /*1*/:
                return getString(2131363143);
            case WireMessage.WIRE_CONTROL /*2*/:
                return getString(2131363138);
            case WireMessage.WIRE_AUTH /*3*/:
                return getString(2131363141);
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return getString(2131363140);
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return getString(2131363142);
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return getString(2131363139);
            default:
                bbn.a(new IllegalArgumentException("Invalid news topic type: " + i));
                return BuildConfig.VERSION_NAME;
        }
    }

    public void onPageScrolled(int i, float f, int i2) {
    }

    public void onPageSelected(int i) {
        Fragment a = this.c.a(i);
        if (a instanceof CategorizedNewsFragment) {
            b("news:" + d(((CategorizedNewsFragment) a).n()) + ":swipe::navigate");
        }
        this.e = i;
    }

    public void onPageScrollStateChanged(int i) {
    }

    public void a(int i) {
        Fragment a = this.c.a(i);
        if (a instanceof CategorizedNewsFragment) {
            b("news:" + d(((CategorizedNewsFragment) a).n()) + "::menu:click");
        }
        if (i == this.e && (a instanceof o)) {
            ((o) a).a();
        }
    }

    private String d(int i) {
        if (a.containsKey(Integer.valueOf(i))) {
            return (String) a.get(Integer.valueOf(i));
        }
        bbn.a(new IllegalArgumentException("Invalid news topic type: " + i));
        return EnvironmentCompat.MEDIA_UNKNOWN;
    }

    private void b(String str) {
        bbu.a(new TwitterScribeLog(aT().g()).b(str));
    }
}

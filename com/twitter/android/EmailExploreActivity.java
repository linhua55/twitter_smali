package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.twitter.android.widget.ScrollingHeaderUsersListFragment;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.t;
import com.twitter.app.users.aa;
import com.twitter.app.users.q;
import com.twitter.config.d;
import com.twitter.library.client.Session.LoginStatus;
import com.twitter.library.client.at;
import com.twitter.library.client.au;
import com.twitter.library.media.util.HeaderImageVariant;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.m;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.aj;
import com.twitter.util.ak;
import defpackage.bbr;
import defpackage.bbu;
import defpackage.boj;
import defpackage.bok;
import defpackage.bom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class EmailExploreActivity extends ScrollingHeaderActivity implements OnClickListener, pl, m {
    private static final Uri a;
    private static final Uri b;
    private static final Uri c;
    private String A;
    private String B;
    private long[] d;
    private di e;
    private km f;
    private HashMap<Integer, Long> g;
    private ArrayList<TwitterUser> h;
    private Button i;
    private Button j;
    private fi k;
    private int l;

    public EmailExploreActivity() {
        this.l = 0;
    }

    static {
        a = Uri.parse("twitter://events/default");
        b = Uri.parse("twitter://events/media");
        c = Uri.parse("twitter://events/people");
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(true);
        return super.a(bundle, tVar);
    }

    public void b(Bundle bundle, t tVar) {
        this.e = di.a((Context) this, ab().g());
        Intent intent = getIntent();
        if (bundle == null) {
            this.g = new HashMap();
            long longExtra = intent.getLongExtra("search_id", -1);
            if (longExtra != -1) {
                this.g.put(Integer.valueOf(0), Long.valueOf(longExtra));
            }
        } else {
            this.g = (HashMap) bundle.getSerializable("state_search_ids");
        }
        Intent intent2 = (Intent) intent.getParcelableExtra("EXTRA_PARENT_EVENT");
        if (intent2 != null) {
            c(intent2);
        }
        this.e.a(this.g.values());
        this.h = intent.getParcelableArrayListExtra("extra_sul");
        this.B = q.a(intent).c();
        super.b(bundle, tVar);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this).inflate(2130968800, null);
        setHeaderView(linearLayout);
        MediaImageView mediaImageView = (MediaImageView) linearLayout.findViewById(2131952431);
        String a = a(intent.getStringExtra("extra_header_image_url"), ak.b());
        String stringExtra = intent.getStringExtra("extra_header_image_username");
        if (!(a == null || stringExtra == null)) {
            mediaImageView.setOnImageLoadedListener(this);
            mediaImageView.a(a.a(a));
            ((TextView) linearLayout.findViewById(2131952432)).setText(getString(2131364014, new Object[]{stringExtra}));
        }
        this.A = intent.getStringExtra("extra_title");
        ((TypefacesTextView) linearLayout.findViewById(2131952434)).setText(this.A);
        ((TypefacesTextView) linearLayout.findViewById(2131952435)).setText(getString(2131362640, new Object[]{this.A}));
        this.i = (Button) linearLayout.findViewById(2131952437);
        this.i.setText(getString(2131362706, new Object[]{Integer.valueOf(this.h.size())}));
        this.i.setOnClickListener(this);
        this.j = (Button) linearLayout.findViewById(2131952438);
        this.j.setText(getString(2131364050, new Object[]{Integer.valueOf(this.h.size())}));
        this.j.setOnClickListener(this);
        if (bundle != null) {
            if ((bundle.getInt("state_follow_all_visibility") == 0 ? 1 : 0) == 0) {
                this.i.setVisibility(8);
                this.j.setVisibility(0);
            }
        }
        at atVar = (at) this.m.get(this.n.getCurrentItem());
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(ab().g()).b("explore_email", "category", atVar.e, null, "impression")).f(this.B));
    }

    protected BaseAdapter a(List<at> list) {
        this.f = new km(this.m);
        return this.f;
    }

    protected PagerAdapter a(List<at> list, ViewPager viewPager) {
        return new fg(this, this, list, viewPager, this.p, this.f);
    }

    protected void a(int i) {
        if (i == this.f.a()) {
            BaseFragment a = ((at) this.m.get(i)).a(getSupportFragmentManager());
            if (a != null && (a instanceof SearchFragment)) {
                ((SearchFragment) a).n();
                return;
            }
            return;
        }
        this.n.setCurrentItem(i);
        this.f.a(i);
    }

    protected void a(Drawable drawable) {
    }

    protected String a() {
        return this.A;
    }

    protected String c() {
        return null;
    }

    protected void onDestroy() {
        if (ab().b() == LoginStatus.LOGGED_IN) {
            this.e.b(this.g.values());
        }
        super.onDestroy();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putSerializable("state_search_ids", this.g);
        bundle.putInt("state_follow_all_visibility", this.i.getVisibility());
        super.onSaveInstanceState(bundle);
    }

    protected List<at> N_() {
        return Arrays.asList(new at[]{a(a, 0), a(b, 1), a(c, 2)});
    }

    private at a(Uri uri, int i) {
        String str;
        CharSequence string;
        Class cls;
        int i2;
        long longValue;
        if (uri.equals(a)) {
            str = "tweets_pivot";
            string = getString(2131362803);
            cls = EmailExploreSearchResultsFragment.class;
            i2 = 1;
        } else if (uri.equals(b)) {
            r5 = getString(2131363556);
            str = "photos_pivot";
            i2 = 7;
            cls = EventGridFragment.class;
        } else if (uri.equals(c)) {
            r5 = getString(2131363910);
            str = "people_pivot";
            i2 = 2;
            cls = ScrollingHeaderUsersListFragment.class;
        } else {
            throw new IllegalArgumentException("Unknown Uri: " + uri);
        }
        if (this.g.get(Integer.valueOf(i2)) != null) {
            longValue = ((Long) this.g.get(Integer.valueOf(i2))).longValue();
        } else {
            longValue = aj.a.nextLong();
        }
        this.e.j(longValue);
        this.g.put(Integer.valueOf(i2), Long.valueOf(longValue));
        return new au(uri, cls).a(string).a(str).a(((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) ((aa) aa.a(getIntent()).b(2131363567)).c(2131363568)).h(false)).c(ab().g())).d(true)).a(this.h)).g(6)).b("query_name", "email explore query")).b("query", f())).a("terminal", true)).a("search_type", i2)).a("fetch_type", 5)).a("fragment_page_number", i)).b("scribe_page", "explore_email")).b("scribe_section", "category")).a("fragment_page_number", i)).b("scribe_component", str)).b("q_source", "api_call")).a("search_id", longValue)).d()).a();
    }

    private String f() {
        if (this.h == null) {
            return null;
        }
        String str = "from:";
        str = ", OR ";
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            stringBuilder.append("from:").append(((TwitterUser) it.next()).k).append(", OR ");
        }
        return stringBuilder.substring(0, stringBuilder.length() - ", OR ".length());
    }

    public boolean a(String str, long j, TwitterTopic twitterTopic, String str2) {
        return false;
    }

    public void a(boolean z, ListView listView, SearchFragment searchFragment) {
    }

    public void onClick(View view) {
        int id = view.getId();
        long g = ab().g();
        if (id == 2131952437) {
            if (this.k != null) {
                this.k.aW_();
            }
            b(new boj(getApplicationContext(), ab(), l(), true), 2);
            this.i.setVisibility(8);
            this.j.setVisibility(0);
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(g).b("explore_email", "category", null, null, "follow_all")).f(this.B)).a((long) this.h.size()));
        } else if (id == 2131952438) {
            if (this.k != null) {
                this.k.aY_();
            }
            long[] l = l();
            if (d.a("bulk_unfollow_enabled")) {
                b(new bom(this, ab(), l), 1);
            } else {
                for (long bok : l) {
                    b(new bok(this, ab(), bok, null).a(-1), 1);
                }
            }
            this.j.setVisibility(8);
            this.i.setVisibility(0);
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(g).b("explore_email", "category", null, null, "unfollow_all")).f(this.B)).a((long) this.h.size()));
        }
    }

    private long[] l() {
        if (this.d == null) {
            long[] jArr = new long[this.h.size()];
            Iterator it = this.h.iterator();
            int i = 0;
            while (it.hasNext()) {
                int i2 = i + 1;
                jArr[i] = ((TwitterUser) it.next()).c;
                i = i2;
            }
            this.d = jArr;
        }
        return this.d;
    }

    private static String a(String str, float f) {
        if (str == null) {
            return null;
        }
        return str + (f > 1.0f ? HeaderImageVariant.LARGE.postfix : HeaderImageVariant.MEDIUM.postfix);
    }

    public void a(MediaImageView mediaImageView, ImageResponse imageResponse) {
        Bitmap bitmap = (Bitmap) imageResponse.f();
        if (bitmap != null) {
            try {
                a(bitmap);
            } catch (OutOfMemoryError e) {
                bbr.a(e);
            }
        }
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                this.l++;
                if (this.l == this.h.size()) {
                    if (this.k != null) {
                        this.k.aZ_();
                    }
                    this.l = 0;
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (((com.twitter.library.service.aa) xVar.l().b()).b() && this.k != null) {
                    this.k.aX_();
                }
            default:
        }
    }
}

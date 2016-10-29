package com.twitter.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.location.Location;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.twitter.android.geo.GeoTagState;
import com.twitter.android.geo.PlacePickerModel;
import com.twitter.android.geo.PlacePickerModel.PlaceListSource;
import com.twitter.android.geo.f;
import com.twitter.android.geo.g;
import com.twitter.android.geo.i;
import com.twitter.android.geo.k;
import com.twitter.android.geo.l;
import com.twitter.android.mx;
import com.twitter.library.api.geo.a;
import com.twitter.library.api.geo.b;
import com.twitter.library.scribe.ScribeGeoDetails;
import com.twitter.library.scribe.ScribeGeoDetails.ScribeGeoPlace;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.library.util.ax;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.TwitterPlace.PlaceType;
import com.twitter.model.geo.d;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.j;
import com.twitter.util.m;
import com.twitter.util.ui.e;
import com.twitter.util.ui.r;
import defpackage.bbu;
import defpackage.bbw;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ComposerPoiFragment extends ComposerLocationFragment implements OnClickListener, OnTouchListener, OnScrollListener, OnItemClickListener, OnEditorActionListener, l, fb {
    private boolean A;
    private boolean B;
    private final Set<u> C;
    private TwitterScribeItem D;
    private ScribeGeoDetails E;
    private e F;
    private View j;
    private TextView k;
    private TextView l;
    private ProgressBar m;
    private ListView n;
    private s o;
    private g p;
    private k q;
    private EditText r;
    private TextSwitcher s;
    private int t;
    private int u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    public ComposerPoiFragment() {
        this.C = new HashSet();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.D = TwitterScribeItem.b();
        this.E = this.D.ai;
        this.E.a = 0;
        this.E.b = 0;
        this.F = new r(this);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        PlaceListSource placeListSource;
        View inflate = layoutInflater.inflate(2130969197, null);
        this.j = inflate.findViewById(16908292);
        inflate.setOnTouchListener(this);
        this.k = (TextView) inflate.findViewById(2131953070);
        this.l = (TextView) inflate.findViewById(2131953071);
        this.m = (ProgressBar) inflate.findViewById(2131951677);
        ListView listView = (ListView) inflate.findViewById(2131953069);
        listView.setOnTouchListener(this);
        listView.setOnScrollListener(this);
        listView.setOnItemClickListener(this);
        if (bundle != null) {
            this.B = bundle.getBoolean("has_search_text_changed_since_last_search");
            placeListSource = (PlaceListSource) bundle.getSerializable("place_picker_presenter_source");
        } else {
            placeListSource = PlaceListSource.a;
        }
        this.p = new g(listView.getContext(), listView);
        this.p.a(this);
        this.q = new k((ViewGroup) inflate.findViewById(2131953072), this);
        this.q.b();
        listView.addFooterView(this.p.b(), "poi_footer_tag", false);
        Resources resources = getResources();
        this.o = new s(this, 2130969202, 2130969203, this.a, new i(this.a, placeListSource));
        listView.setAdapter(this.o);
        this.n = listView;
        this.s = (TextSwitcher) inflate.findViewById(2131953067);
        this.s.setCurrentText(resources.getString(2131363349));
        ((TextView) inflate.findViewById(2131953066)).setOnClickListener(this);
        EditText editText = (EditText) inflate.findViewById(2131953068);
        editText.setOnEditorActionListener(this);
        editText.setOnTouchListener(new fa(editText, this));
        this.r = editText;
        return inflate;
    }

    public void a() {
        super.a();
        if (this.y) {
            if (this.f != null) {
                this.v = true;
                this.f.b(false);
                GeoTagState b = b();
                if (b.c()) {
                    this.f.a(b.e().d);
                }
            }
            this.y = false;
        }
        e(false);
        this.r.addTextChangedListener(this.F);
    }

    public void e() {
        this.r.removeTextChangedListener(this.F);
        super.e();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case 2131953066:
                if (this.f != null) {
                    this.v = true;
                    this.f.b(false);
                    break;
                }
                break;
            case 2131953079:
                GeoTagState b = b();
                if (b.c()) {
                    TwitterPlace e = b.e();
                    a(true, false, "compose:poi:poi_list:location:deselect", e.b, e.c, Double.NaN, Double.NaN, this.a.b(e), -1, 0, this.a.a(e), p(), null, -1);
                    b(false);
                    if (this.f != null) {
                        this.f.b(false);
                        break;
                    }
                }
                break;
        }
        if ("footer_text_tag".equals(view.getTag())) {
            m();
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.v) {
            return true;
        }
        int id = view.getId();
        if (id == 2131953069) {
            this.r.clearFocus();
            r.b(getActivity(), this.r, false);
        } else if (id == 2131953064) {
            return true;
        }
        return false;
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (this.u > i) {
            this.q.a();
        } else if (this.u < i) {
            this.q.b();
        }
        if (!l()) {
            if (i - (this.n == null ? 0 : this.n.getHeaderViewsCount()) > 0) {
                h(true);
            } else {
                h(false);
            }
            this.u = i;
        }
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        int headerViewsCount = i - this.n.getHeaderViewsCount();
        if (headerViewsCount >= 0 && headerViewsCount < this.o.getCount()) {
            TwitterPlace a = this.o.a(headerViewsCount);
            GeoTagState b = b();
            if (b.c() && a.equals(b.e()) && this.f != null) {
                this.v = true;
                this.f.b(false);
                return;
            }
            f a2 = this.a.a(this.o.a().b());
            if (a2 == null) {
                j.a("PlaceList cannot be null here");
            } else {
                a(new GeoTagState(a, r(), a2.a(), true, false, this.q.c()));
            }
            if (this.f != null) {
                this.v = true;
                this.f.b(false);
            }
            this.A = true;
            a(true, true, "compose:poi:poi_list:location:select", a.b, a.c, Double.NaN, Double.NaN, this.a.b(a), 0, headerViewsCount, this.a.a(a), p(), "geotag", m.b());
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("has_search_text_changed_since_last_search", this.B);
        bundle.putSerializable("place_picker_presenter_source", this.o.a().b());
    }

    private void e(boolean z) {
        ListView listView = this.n;
        if (l()) {
            h(true);
            String obj = this.r.getText().toString();
            this.o.a(i.a(this.o.a(), obj));
            if (this.o.isEmpty() && !this.B) {
                this.p.a();
            } else if (this.B) {
                this.p.a(getString(2131363353, obj));
                if (z) {
                    ScribeItem twitterScribeItem = new TwitterScribeItem();
                    twitterScribeItem.w = obj;
                    bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.e).b("compose:poi:poi_list::filter")).a(twitterScribeItem));
                }
            }
        } else {
            this.o.a(new i(this.a, PlaceListSource.a));
            this.p.a();
            h(false);
        }
        f(false);
        q();
        listView.setSelectionFromTop(0, 0);
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (textView == this.r && i == 3) {
            return m();
        }
        return false;
    }

    public boolean a(int i) {
        if (i == (ak.f() ? false : true)) {
            this.r.setText(BuildConfig.VERSION_NAME);
        }
        return false;
    }

    public void d(int i) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                if (this.A) {
                    if (!l()) {
                        this.o.notifyDataSetChanged();
                    }
                    this.n.setSelectionFromTop(0, 0);
                    this.A = false;
                }
                if (l()) {
                    if (this.w) {
                        this.w = false;
                        f(false);
                    }
                    this.r.setText(BuildConfig.VERSION_NAME);
                }
                if (this.v) {
                    this.v = false;
                }
                if (this.z) {
                    n();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                this.n.setSelectionFromTop(0, 0);
                this.z = true;
            default:
        }
    }

    public void a(Location location) {
        if (location != null) {
            this.g = d.a(location);
            this.q.a(this.g);
            this.q.a();
            j();
        }
    }

    public void b(Location location) {
        super.b(location);
        f(false);
    }

    protected void a(x xVar, int i, int i2) {
        boolean z = true;
        if (xVar.M() != 1) {
            super.a(xVar, i, i2);
            return;
        }
        a aVar = (a) xVar;
        this.w = false;
        b h = aVar.h();
        if (h == null) {
            if (l()) {
                this.p.a();
            }
            f(false);
            return;
        }
        switch (i) {
            case mx.View_android_theme /*0*/:
                d g = aVar.g();
                if (g == null) {
                    z = false;
                }
                if ((z && this.a.b(g)) || (!z && this.a.a(this.g))) {
                    f fVar = new f(h.a(), h.c(), h.d());
                    PlacePickerModel placePickerModel = this.a;
                    if (!z) {
                        g = this.g;
                    }
                    placePickerModel.a(g, fVar).a(z);
                    this.o.a(new i(this.a, PlaceListSource.a));
                    if (!z) {
                        a(h.b(), h.c());
                    } else if (!b().d()) {
                        a(GeoTagState.a());
                    }
                }
                if (!this.o.isEmpty() || !this.i) {
                    f(false);
                }
            case WireMessage.WIRE_CHAT /*1*/:
                this.a.a(new f(new ArrayList(h.a()), h.c(), h.d()));
                if (l()) {
                    this.p.a();
                    this.o.a(new i(this.a, PlaceListSource.b));
                }
                f(false);
            default:
        }
    }

    public void c(boolean z) {
        if (this.h && !z && this.f != null) {
            bbu.a(new TwitterScribeLog(this.e).b("compose:poi::poi_tag:click"));
            d(false);
        }
    }

    public boolean i() {
        if (this.q == null) {
            return false;
        }
        return this.q.c();
    }

    public void d(boolean z) {
        boolean z2 = true;
        this.x = true;
        if (z && (this.g != null || this.a.c().c())) {
            this.q.a();
        }
        b(true);
        if (this.a.b() == null) {
            f(true);
        }
        if (this.f != null) {
            q qVar = this.f;
            if (z) {
                z2 = false;
            }
            qVar.b(z2);
        }
    }

    public boolean j() {
        if (!this.a.a(this.g)) {
            return false;
        }
        Context activity = getActivity();
        if (activity != null) {
            return a(new a(activity, this.d).a("tweet_compose_location").a(ax.a(activity)), 0);
        }
        return false;
    }

    public boolean a(d dVar) {
        if (!this.a.b(dVar)) {
            return false;
        }
        Context activity = getActivity();
        if (activity != null) {
            return a(new a(activity, this.d).a("tweet_compose_location").a(dVar), 0);
        }
        return false;
    }

    private boolean a(a aVar, int i) {
        if (this.w) {
            return false;
        }
        this.w = true;
        f(true);
        c(aVar, i, 0);
        return true;
    }

    public PlacePickerModel k() {
        return this.a;
    }

    public void a(boolean z, int i) {
        if (this.x || this.h) {
            String str;
            String str2;
            String str3;
            this.E.a = 1;
            this.D.a = this.e;
            if (z) {
                str = "drafts";
                str2 = "composition";
            } else {
                str2 = null;
                str = "composition";
            }
            switch (i) {
                case mx.View_android_theme /*0*/:
                    str3 = "discard_tweet_geo_interaction";
                    break;
                case WireMessage.WIRE_CHAT /*1*/:
                    str3 = "send_tweet_geo_interaction";
                    break;
                default:
                    return;
            }
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.e).b(null, str, str2, null, str3)).a(this.D));
        }
    }

    protected void b(boolean z) {
        super.b(z);
        if (!this.h) {
            this.g = null;
            if (this.r != null) {
                this.r.setText(BuildConfig.VERSION_NAME);
            }
        }
    }

    private void f(boolean z) {
        if (this.m != null) {
            ListView listView = this.n;
            View view = this.r;
            if (z) {
                listView.setVisibility(8);
                view.setEnabled(false);
                g(false);
                this.j.setVisibility(0);
                this.m.setVisibility(0);
            } else if (!this.w) {
                this.m.setVisibility(8);
                if (!this.o.isEmpty() || this.B) {
                    listView.setVisibility(0);
                    this.j.setVisibility(8);
                } else {
                    g(true);
                    this.j.setVisibility(0);
                }
                view.setEnabled(true);
            }
        }
    }

    private void g(boolean z) {
        if (!z) {
            this.k.setVisibility(8);
            this.l.setVisibility(8);
        } else if (ad()) {
            if (this.g == null && !l()) {
                this.k.setText(2131363162);
                this.l.setText(2131363163);
                this.l.setVisibility(0);
            } else if (this.o.isEmpty()) {
                this.k.setText(2131363166);
                this.l.setVisibility(8);
            }
            this.k.setVisibility(0);
        }
    }

    private boolean l() {
        return this.r != null && aj.b(this.r.getText());
    }

    private void a(TwitterPlace twitterPlace, String str) {
        if (this.h) {
            GeoTagState b = b();
            if (!b.d() && twitterPlace != null) {
                String str2;
                a(new GeoTagState(twitterPlace, r(), str, this.x, false, this.q.c()));
                String str3 = "compose:poi:poi_list:location:select";
                String str4 = twitterPlace.b;
                PlaceType placeType = twitterPlace.c;
                if (this.x) {
                    str2 = "auto_default";
                } else {
                    str2 = "default";
                }
                a(false, true, str3, str4, placeType, Double.NaN, Double.NaN, str2, 1, 0, this.a.a(twitterPlace), p(), "geotag", m.b());
            } else if (b.c() && this.E.c.isEmpty()) {
                TwitterPlace e = b.e();
                a(false, true, "compose:poi:poi_list:location:select", e.b, e.c, Double.NaN, Double.NaN, "default", 1, 0, this.a.a(e), p(), "geotag", m.b());
            }
        }
    }

    private boolean m() {
        this.E.b = 1;
        CharSequence text = this.r.getText();
        if (text.length() <= 0) {
            return false;
        }
        this.B = false;
        Context activity = getActivity();
        a(new a(activity, this.d).a("tweet_compose_location").b(text.toString()).a(ax.a(activity)), 1);
        ScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.w = text.toString();
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.e).b("compose:poi:poi_list::search")).a(twitterScribeItem));
        return true;
    }

    private void n() {
        this.z = false;
        if (!this.C.isEmpty()) {
            bbw bbw = (TwitterScribeLog) new TwitterScribeLog(this.e).b("compose:poi:poi_list:location:results");
            for (u uVar : this.C) {
                ScribeItem b = TwitterScribeItem.b();
                ScribeGeoPlace scribeGeoPlace = new ScribeGeoPlace();
                scribeGeoPlace.a = uVar.a;
                scribeGeoPlace.b = uVar.b.toString();
                scribeGeoPlace.e = uVar.d;
                scribeGeoPlace.g = uVar.f;
                scribeGeoPlace.h = uVar.e;
                scribeGeoPlace.i = uVar.c;
                b.ai.c.add(scribeGeoPlace);
                bbw.a(b);
            }
            bbu.a(bbw);
            this.C.clear();
        }
    }

    private String p() {
        CharSequence obj = this.r.getText().toString();
        if (aj.a(obj)) {
            return null;
        }
        return obj;
    }

    private void h(boolean z) {
        Context activity = getActivity();
        if (z) {
            GeoTagState b = b();
            if (this.t == 0 && b.c()) {
                this.s.setInAnimation(activity, 2131034169);
                this.s.setOutAnimation(activity, 2131034168);
                this.s.setText(b.e().d);
                this.t = 1;
            }
        } else if (this.t == 1) {
            this.s.setInAnimation(activity, 2131034167);
            this.s.setOutAnimation(activity, 2131034166);
            this.s.setText(getString(2131363349));
            this.t = 0;
        }
    }

    private void q() {
        int i;
        TextView textView = this.r;
        if (aj.a(textView.getText())) {
            i = 0;
        } else {
            i = 2130839741;
        }
        if (ak.f()) {
            textView.setCompoundDrawablesWithIntrinsicBounds(i, 0, 2130839789, 0);
        } else {
            textView.setCompoundDrawablesWithIntrinsicBounds(2130839789, 0, i, 0);
        }
    }

    private void a(boolean z, boolean z2, String str, String str2, PlaceType placeType, double d, double d2, String str3, int i, int i2, int i3, String str4, String str5, long j) {
        if (z) {
            List list = this.E.c;
            if (!list.isEmpty()) {
                ((ScribeGeoPlace) list.get(list.size() - 1)).j = "removed";
            }
        }
        ScribeItem b = TwitterScribeItem.b();
        if (z2) {
            b.ai.c.add(this.E.a(str2, placeType, d, d2, str3, i, i2, i3, str4, str5, j));
        } else {
            b.ai.a(str2, placeType, d, d2, str3, i, i2, i3, str4, str5, j);
        }
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.e).b(str)).a(b));
    }

    private View a(LayoutInflater layoutInflater, int i, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2130969198, viewGroup, false);
        ViewStub viewStub = (ViewStub) inflate.findViewById(2131953073);
        viewStub.setLayoutResource(i);
        viewStub.inflate();
        return inflate;
    }

    private d r() {
        Location a = this.c.a();
        return a == null ? null : d.a(a);
    }

    public void onDestroy() {
        this.a.unregisterAll();
        super.onDestroy();
    }

    public void a(boolean z) {
        GeoTagState c = this.a.c();
        if (c.c()) {
            this.a.a(c.a(z));
        }
    }
}

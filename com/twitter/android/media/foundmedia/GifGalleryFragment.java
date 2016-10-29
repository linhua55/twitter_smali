package com.twitter.android.media.foundmedia;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Switch;
import com.twitter.android.media.widget.GifGalleryView;
import com.twitter.android.media.widget.aq;
import com.twitter.android.mx;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.library.client.az;
import com.twitter.model.media.foundmedia.f;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.s;
import defpackage.abz;
import defpackage.acb;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.List;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class GifGalleryFragment extends BaseFragment {
    WeakReference<z> a;
    String b;
    boolean c;
    GifGalleryView d;
    private final aq e;
    private int f;
    private String g;
    private View h;
    private View i;
    private View j;
    private View k;
    private Switch l;
    private List<f> m;
    private String n;
    private int o;
    private int p;

    public GifGalleryFragment() {
        this.e = new q(this);
        setRetainInstance(true);
    }

    public void a(z zVar) {
        this.a = new WeakReference(zVar);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130968832, null);
        this.h = inflate.findViewById(2131952471);
        this.d = (GifGalleryView) inflate.findViewById(2131952487);
        this.d.setOnScrollListener(new s(this));
        this.d.setItemClickListener(this.e);
        this.i = inflate.findViewById(2131952657);
        this.i.findViewById(2131952658).setOnClickListener(new t(this));
        this.j = inflate.findViewById(2131952655);
        this.j.findViewById(2131952656).setOnClickListener(new u(this));
        this.k = inflate.findViewById(2131952520);
        this.l = (Switch) this.k.findViewById(2131952521);
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        if (bundle == null) {
            a(null, null);
            return;
        }
        this.g = bundle.getString("query");
        this.f = bundle.getInt("gallery_type");
        this.o = bundle.getInt("first_index");
        this.p = bundle.getInt("first_offset");
        a((List) m.b(bundle.getByteArray("images"), s.a(f.a)), bundle.getString("cursor"));
    }

    public void a(Context context, int i, String str) {
        if (this.f != i || !str.equals(this.g)) {
            if (this.b != null) {
                String str2 = this.b;
                this.b = null;
                az.a(this.T).b(str2);
            }
            this.f = i;
            this.g = str;
        } else if (this.b == null) {
            if (this.m != null) {
                a(this.m, this.n);
                return;
            }
        } else {
            return;
        }
        a(null, null);
        a(1);
        this.b = az.a(context).a(i == 2 ? new abz(context, str, null, 1) : new acb(context, str, null, 1), new v(this, str));
    }

    public void a() {
        super.a();
        i();
        this.l.setOnCheckedChangeListener(new w(this));
    }

    public void e() {
        super.e();
        this.o = this.d.getFirstVisibleItemIndex();
        this.p = this.d.getFirstVisibleItemOffsetPixels();
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.b != null) {
            az.a(getActivity()).b(this.b);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("query", this.g);
        bundle.putInt("gallery_type", this.f);
        bundle.putString("cursor", this.n);
        bundle.putByteArray("images", m.b(this.m, s.a(f.a)));
        bundle.putInt("first_index", this.d.getFirstVisibleItemIndex());
        bundle.putInt("first_offset", this.d.getFirstVisibleItemOffsetPixels());
    }

    void a(int i) {
        if (this.d != null) {
            switch (i) {
                case mx.View_android_theme /*0*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    this.j.setVisibility(8);
                    this.i.setVisibility(8);
                    this.h.setVisibility(8);
                    this.d.setVisibility(0);
                    this.d.e();
                    this.d.a(true);
                    i();
                case WireMessage.WIRE_CHAT /*1*/:
                    this.j.setVisibility(8);
                    this.i.setVisibility(8);
                    this.h.setVisibility(0);
                    this.d.setVisibility(0);
                case WireMessage.WIRE_CONTROL /*2*/:
                    this.d.d();
                case WireMessage.WIRE_AUTH /*3*/:
                    this.d.a();
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    this.j.setVisibility(0);
                    this.i.setVisibility(8);
                    this.h.setVisibility(8);
                    this.d.setVisibility(8);
                    this.k.setVisibility(8);
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    this.j.setVisibility(8);
                    this.i.setVisibility(0);
                    this.h.setVisibility(8);
                    this.d.setVisibility(8);
                    this.k.setVisibility(8);
                default:
            }
        }
    }

    void b() {
        if (this.g != null) {
            a(this.T, this.f, this.g);
        }
    }

    void c() {
        if (this.b == null) {
            a(2);
            this.b = az.a(this.T).a(this.f == 2 ? new abz(this.T, this.g, this.n, 1) : new acb(this.T, this.g, this.n, 1), new x(this));
        }
    }

    void f() {
        if (this.b == null) {
            this.n = null;
            a(3);
            this.b = az.a(this.T).a(this.f == 2 ? new abz(this.T, this.g, null, 0) : new acb(this.T, this.g, null, 0), new y(this));
        }
    }

    void a(List<f> list, String str) {
        this.m = list;
        this.n = str;
        if (this.d != null) {
            if (list == null) {
                this.d.a(n.g(), false);
                a(0);
            } else if (list.isEmpty()) {
                this.d.a(n.g(), false);
                a(5);
            } else {
                this.d.a(list, h());
                a(4);
            }
        }
    }

    void b(List<f> list, String str) {
        if (CollectionUtils.b((Collection) list)) {
            this.n = null;
        } else {
            this.m = (List) n.a(this.m.size() + list.size()).c(this.m).c((Iterable) list).q();
            this.n = str;
        }
        if (this.d != null) {
            this.d.b(this.m, h());
        }
    }

    void c(List<f> list, String str) {
        if (!CollectionUtils.b((Collection) list)) {
            this.m = list;
            this.n = str;
            if (this.d != null) {
                this.d.b(this.m, h());
            }
        }
    }

    void g() {
        if (this.o > 0 && !CollectionUtils.b(this.m)) {
            this.d.a(this.o, this.p);
            this.o = 0;
        }
    }

    private boolean h() {
        return (this.n == null || this.n.isEmpty()) ? false : true;
    }

    private void i() {
        Context context = getContext();
        if (context != null) {
            if (e.a(context).b()) {
                this.d.setPlayAnimation(true);
                this.k.setVisibility(8);
                return;
            }
            boolean a = e.a(context).a();
            this.l.setChecked(a);
            this.d.setPlayAnimation(a);
            this.k.setVisibility(0);
        }
    }
}

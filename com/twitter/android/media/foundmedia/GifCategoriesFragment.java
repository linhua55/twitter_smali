package com.twitter.android.media.foundmedia;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Switch;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.media.widget.GifCategoriesView;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.g;
import com.twitter.library.client.az;
import com.twitter.model.media.foundmedia.c;
import defpackage.abx;
import java.util.List;

/* compiled from: Twttr */
public class GifCategoriesFragment extends BaseFragment {
    ComposerType a;
    String b;
    List<c> c;
    private GifCategoriesView d;
    private View e;
    private Switch f;
    private View g;
    private View h;

    public /* synthetic */ g o() {
        return b();
    }

    public GifCategoriesFragment() {
        this.a = ComposerType.FULL_COMPOSER;
        setRetainInstance(true);
    }

    public m b() {
        return new m(this);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = b().a();
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        return layoutInflater.inflate(2130968831, null);
    }

    public void onViewCreated(View view, Bundle bundle) {
        this.g = view.findViewById(2131952471);
        this.d = (GifCategoriesView) view.findViewById(2131952486);
        this.d.setOnScrollListener(new h(this));
        this.d.setGifCategoriesListener(new i(this));
        this.e = view.findViewById(2131952520);
        this.f = (Switch) this.e.findViewById(2131952521);
        if (this.c != null) {
            b(this.c);
        } else if (this.b == null) {
            a(1);
        }
        this.h = view.findViewById(2131952657);
        this.h.findViewById(2131952658).setOnClickListener(new j(this));
    }

    public void a() {
        super.a();
        g();
        this.f.setOnCheckedChangeListener(new k(this));
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.b != null) {
            az.a(getActivity()).b(this.b);
            this.b = null;
        }
    }

    void a(int i) {
        this.b = az.a(getActivity().getApplicationContext()).a(new abx(getActivity().getApplicationContext(), i), new l(this));
    }

    void c() {
        this.b = null;
        this.d.setVisibility(8);
        this.g.setVisibility(8);
        this.h.setVisibility(0);
        this.d.a(true);
        this.e.setVisibility(8);
    }

    void a(List<c> list) {
        this.b = null;
        this.c = list;
        if (getActivity() != null) {
            b(list);
        }
        this.d.a(true);
        g();
    }

    void f() {
        this.d.setVisibility(0);
        this.g.setVisibility(0);
        this.h.setVisibility(8);
        a(1);
    }

    private void b(List<c> list) {
        this.d.a(list);
        this.g.setVisibility(8);
    }

    private void g() {
        Context context = getContext();
        if (context != null) {
            if (e.a(context).b()) {
                this.d.setPlayAnimation(true);
                this.e.setVisibility(8);
                return;
            }
            boolean a = e.a(context).a();
            this.f.setChecked(a);
            this.d.setPlayAnimation(a);
            this.e.setVisibility(0);
        }
    }
}

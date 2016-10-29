package com.twitter.android.widget;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.twitter.android.geo.GeoTagState;
import com.twitter.android.geo.PlacePickerModel;
import com.twitter.android.geo.f;
import com.twitter.android.geo.i;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.TwitterPlace.PlaceType;
import com.twitter.model.geo.d;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.t;
import defpackage.bwf;
import java.util.List;

/* compiled from: Twttr */
class s extends BaseAdapter {
    final /* synthetic */ ComposerPoiFragment a;
    private final PlacePickerModel b;
    private List<TwitterPlace> c;
    private i d;
    private final LayoutInflater e;
    private final int f;
    private final int g;
    private final Resources h;

    public /* synthetic */ Object getItem(int i) {
        return a(i);
    }

    s(ComposerPoiFragment composerPoiFragment, int i, int i2, PlacePickerModel placePickerModel, i iVar) {
        this.a = composerPoiFragment;
        this.c = n.g();
        this.h = composerPoiFragment.getResources();
        this.e = LayoutInflater.from(composerPoiFragment.getActivity());
        this.f = i;
        this.g = i2;
        placePickerModel.registerObserver(new t(this, composerPoiFragment));
        this.b = placePickerModel;
        this.d = iVar;
    }

    public int getViewTypeCount() {
        return 2;
    }

    public int getItemViewType(int i) {
        GeoTagState b = this.a.b();
        return (b.c() && a(i).equals(b.e())) ? 1 : 0;
    }

    public int getCount() {
        return this.c.size();
    }

    public TwitterPlace a(int i) {
        return (TwitterPlace) this.c.get(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        v vVar;
        TwitterPlace a = a(i);
        GeoTagState b = this.a.b();
        int i2 = (b.c() && b.e().equals(a)) ? 1 : 0;
        if (view == null) {
            view = ComposerPoiFragment.a(this.a, this.e, i2 != 0 ? this.g : this.f, viewGroup);
            vVar = new v(view);
            view.setTag(vVar);
        } else {
            vVar = (v) view.getTag();
        }
        vVar.a.setText(bwf.a(a));
        if (i2 != 0) {
            vVar.e.setOnClickListener(this.a);
        }
        CharSequence charSequence = a.m;
        CharSequence charSequence2 = a.l;
        CharSequence charSequence3 = null;
        d dVar = this.a.g;
        d dVar2 = a.h;
        if (!(a.c != PlaceType.a || dVar2 == null || dVar == null)) {
            charSequence3 = t.a(this.h, dVar.a(dVar2));
            if (aj.b(charSequence2)) {
                charSequence3 = " \u00b7 " + charSequence3;
            }
        }
        a(vVar.b, charSequence);
        a(vVar.d, charSequence3);
        a(vVar.c, charSequence2);
        vVar.d.measure(0, 0);
        vVar.c.setMaxWidth((int) ((((float) ComposerPoiFragment.a(this.a).getWidth()) - (this.a.getResources().getDimension(2131690332) * 2.0f)) - ((float) vVar.d.getMeasuredWidth())));
        ComposerPoiFragment.c(this.a).add(new u(a.b, a.c, ComposerPoiFragment.b(this.a), this.b.b(a), this.b.a(a), i));
        return view;
    }

    public i a() {
        return this.d;
    }

    public void a(i iVar) {
        this.d = iVar;
        notifyDataSetChanged();
    }

    public void notifyDataSetChanged() {
        this.c = this.d.a();
        f a = this.b.a(this.d.b());
        if (a != null) {
            ComposerPoiFragment.d(this.a).a(a.b());
        } else {
            ComposerPoiFragment.d(this.a).a(n.g());
        }
        super.notifyDataSetChanged();
    }

    private void a(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (aj.a(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }
}

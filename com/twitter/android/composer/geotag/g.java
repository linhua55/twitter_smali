package com.twitter.android.composer.geotag;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.collection.n;
import defpackage.bwf;
import java.util.List;

/* compiled from: Twttr */
public class g extends Adapter<k> {
    private final LayoutInflater a;
    private final TextView b;
    private final j c;
    private List<TwitterPlace> d;

    public /* synthetic */ void onBindViewHolder(ViewHolder viewHolder, int i) {
        a((k) viewHolder, i);
    }

    public /* synthetic */ ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return a(viewGroup, i);
    }

    public g(Context context, TextView textView, j jVar) {
        this.d = n.g();
        this.a = LayoutInflater.from(context);
        this.b = textView;
        this.c = jVar;
    }

    public int getItemViewType(int i) {
        if (i == this.d.size()) {
            return 1;
        }
        return 0;
    }

    public int getItemCount() {
        return this.d.size() + 1;
    }

    public TwitterPlace a(int i) {
        return i < this.d.size() ? (TwitterPlace) this.d.get(i) : null;
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public k a(ViewGroup viewGroup, int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                return new k(this.a.inflate(2130968954, viewGroup, false));
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return new k(this.a.inflate(2130968955, viewGroup, false));
            default:
                return null;
        }
    }

    public void a(k kVar, int i) {
        int itemViewType = getItemViewType(i);
        TwitterPlace a = a(i);
        switch (itemViewType) {
            case Util.TYPE_DASH /*0*/:
                if (a != null) {
                    kVar.a(bwf.a(a));
                }
                kVar.a(new h(this, kVar, a, i));
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                kVar.a(new i(this, kVar, i));
            default:
        }
    }

    public void a(List<TwitterPlace> list) {
        this.d = list;
        notifyDataSetChanged();
    }
}

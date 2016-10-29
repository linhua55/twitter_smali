package com.twitter.android.businessprofiles.gallery;

import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.d;
import com.twitter.library.av.playback.be;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.MediaEntity;
import defpackage.bdc;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class a extends Adapter<ViewHolder> {
    private final Context a;
    private final List<c> b;
    private final int c;
    private final e d;
    private final d e;
    private final TwitterScribeAssociation f;
    private MediaImageView g;

    public a(Context context, int i, e eVar, d dVar, TwitterScribeAssociation twitterScribeAssociation) {
        this.b = new ArrayList();
        this.a = context;
        this.c = i;
        this.d = eVar;
        this.e = dVar;
        this.f = twitterScribeAssociation;
    }

    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(this.a);
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                this.g = (MediaImageView) from.inflate(2130968981, viewGroup, false);
                return new f(this.g);
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return new g(from.inflate(2130968982, viewGroup, false));
            default:
                return null;
        }
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        int itemViewType = getItemViewType(i);
        c cVar = (c) this.b.get(i);
        OnClickListener bVar = new b(this, viewHolder, cVar, i);
        switch (itemViewType) {
            case Util.TYPE_DASH /*0*/:
                if ((viewHolder instanceof f) && (viewHolder.itemView instanceof MediaImageView)) {
                    ((f) viewHolder).a(cVar, bVar);
                    if (this.e != null) {
                        this.e.a(viewHolder.itemView, cVar, i);
                    }
                    MediaEntity e = cVar.e();
                    if (e != null) {
                        if (!TextUtils.isEmpty(e.x)) {
                            this.g.setContentDescription(this.a.getResources().getString(bdc.timeline_tweet_media_format, new Object[]{r0}));
                        }
                    }
                }
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (viewHolder instanceof g) {
                    ((g) viewHolder).a(cVar, bVar, this.f);
                    if (this.e != null) {
                        this.e.a(viewHolder.itemView, cVar, i);
                    }
                }
            default:
        }
    }

    public int getItemCount() {
        return this.b.size();
    }

    public int getItemViewType(int i) {
        c cVar = (c) this.b.get(i);
        if (cVar != null && d.a("android_media_profile_tab_autoplay_videos") && be.b(cVar.b)) {
            return 1;
        }
        return 0;
    }
}

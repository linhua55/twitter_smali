package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import ccu;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.db;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.MediaEntity;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
class ox implements OnClickListener {
    final /* synthetic */ Context a;
    final /* synthetic */ SearchPhotosFragment b;

    ox(SearchPhotosFragment searchPhotosFragment, Context context) {
        this.b = searchPhotosFragment;
        this.a = context;
    }

    public void onClick(View view) {
        jx jxVar = ((jy) view.getTag()).a;
        Intent putExtra = new Intent(this.a, GalleryActivity.class).setData(ck.a(db.a, SearchPhotosFragment.a(this.b).g())).putExtra("prj", ccu.a).putExtra("sel", this.b.r()).putExtra("selArgs", new String[]{String.valueOf(this.b.s)}).putExtra("orderBy", "type_id ASC, _id ASC").putExtra(TtmlNode.ATTR_ID, jxVar.d().H).putExtra("context", 2).putExtra("media", m.a(jxVar.e(), MediaEntity.a)).putExtra("page_cache_size", 1);
        this.b.a(this.b.B + ":photo_grid:photo::click");
        GalleryActivity.a(this.b.getActivity(), putExtra, (MediaImageView) view);
    }
}

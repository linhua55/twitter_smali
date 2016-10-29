package com.twitter.android.media.imageeditor.stickers;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.view.View.OnClickListener;
import cjw;
import com.twitter.android.media.stickers.StickerCatalogMediaImageView;
import com.twitter.library.media.util.ad;
import com.twitter.media.request.a;

/* compiled from: Twttr */
public class r {
    public static u a(Context context) {
        StickerCatalogMediaImageView stickerCatalogMediaImageView = new StickerCatalogMediaImageView(context);
        stickerCatalogMediaImageView.setAspectRatio(1.0f);
        stickerCatalogMediaImageView.setDefaultDrawable(context.getResources().getDrawable(2130840195));
        return new u(stickerCatalogMediaImageView);
    }

    public static void a(cjw cjw, u uVar, OnClickListener onClickListener) {
        uVar.a.a(a.a(cjw.j.c.c).a("stickers").a(new ad(cjw.j)), true);
        uVar.a.setOnClickListener(onClickListener);
    }

    public static ItemDecoration a(int i) {
        return new s(i);
    }
}

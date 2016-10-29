package com.twitter.android.media.imageeditor.stickers;

import android.content.SharedPreferences.Editor;
import cjw;
import com.twitter.library.client.bg;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
class g implements q {
    final /* synthetic */ f a;

    g(f fVar) {
        this.a = fVar;
    }

    public void a(cjw cjw, cjw cjw2) {
        String l = Long.toString(bg.a().c().g());
        String str = l + ':' + "stickers_primary_variant_list";
        Set stringSet = this.a.d.c.getStringSet(str, new HashSet());
        stringSet.add(Long.toString(cjw.h, 36));
        Editor edit = this.a.d.c.edit();
        edit.putStringSet(str, stringSet);
        edit.putLong(l + ':' + "stickers_primary_variant_" + cjw.h, cjw2.h).apply();
        this.a.d.e.a();
        this.a.a.a(cjw2);
        this.a.d.notifyItemChanged(this.a.b.getAdapterPosition());
    }
}

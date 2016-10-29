package com.twitter.android.moments.data;

import android.database.Cursor;
import byi;
import ccc;
import chj;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.android.moments.viewmodels.ac;
import com.twitter.library.av.playback.be;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.DisplayStyle;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.aj;
import com.twitter.model.moments.k;
import com.twitter.util.math.Size;
import com.twitter.util.object.e;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.s;
import defpackage.cll;

/* compiled from: Twttr */
public class x extends chj<MomentModule> {
    public MomentModule a(Cursor cursor) {
        ab b = byi.b(cursor);
        cll a = byi.a(cursor);
        Size size = (Size) e.b(m.a(cursor.getBlob(cursor.getColumnIndex("moments_guide_media_size")), Size.a), Size.b);
        Tweet a2 = ccc.a.a(cursor);
        String a3 = a(cursor, a2);
        k kVar = (k) e.b(m.a(cursor.getBlob(cursor.getColumnIndex("moments_guide_crop_data")), k.a), k.b);
        DisplayStyle displayStyle = (DisplayStyle) e.b(m.a(cursor.getBlob(cursor.getColumnIndex("moments_guide_display_type")), s.a(DisplayStyle.class)), DisplayStyle.a);
        String string = cursor.getString(cursor.getColumnIndex("moments_guide_context_string"));
        aj ajVar = (aj) m.a(cursor.getBlob(cursor.getColumnIndex("moments_guide_context_scribe_info")), aj.a);
        return be.b(a2) ? (MomentModule) ((ac) ((ac) ((ac) ((ac) ((ac) ((ac) new ac().a(b)).a(a)).a(size).a(kVar).a(displayStyle)).b(string)).a(a2)).a(ajVar)).q() : (MomentModule) ((com.twitter.android.moments.viewmodels.e) ((com.twitter.android.moments.viewmodels.e) ((com.twitter.android.moments.viewmodels.e) ((com.twitter.android.moments.viewmodels.e) ((com.twitter.android.moments.viewmodels.e) ((com.twitter.android.moments.viewmodels.e) new com.twitter.android.moments.viewmodels.e().a(b)).a(a)).a(displayStyle)).a(a3).a(size).a(kVar).b(string)).a(a2)).a(ajVar)).q();
    }

    private static String a(Cursor cursor, Tweet tweet) {
        return w.a(tweet, cursor.getLong(cursor.getColumnIndex("moments_guide_media_id")), cursor.getString(cursor.getColumnIndex("moments_guide_media_url")));
    }
}

package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.q;
import com.twitter.database.model.p;
import com.twitter.util.collection.ar;
import defpackage.baw;
import defpackage.bax;
import java.util.Collection;

/* compiled from: Twttr */
public final class od extends q implements baw {
    private static final Collection<Class<? extends p>> b;
    private static final String[] c;
    private final m<bax> d;

    public /* synthetic */ com.twitter.database.model.q f() {
        return d();
    }

    static {
        b = ar.g();
        c = new String[]{"stickers__id", "stickers_name", "stickers_type", "stickers_annotation_id", "stickers_sticker_set_annotation_id", "stickers_variant_item_id", "stickers_category_annotation_id", "stickers_author_id", "stickers_dominant_color", "stickers_background_color", "stickers_variant_name", "stickers_start_time", "stickers_end_time", "stickers_last_modified_time", "stickers_available_for_creation", "stickers_variants", "sticker_items__id", "category_id"};
    }

    @aoa
    public od(f fVar) {
        super(fVar);
        this.d = new oh(this, this.e_);
    }

    public final String a() {
        return "stickers_view";
    }

    public final String b() {
        return "CREATE VIEW stickers_view\n\tAS SELECT\n\t\tstickers._id AS stickers__id,\n\t\tstickers.name AS stickers_name,\n\t\tstickers.type AS stickers_type,\n\t\tstickers.annotation_id AS stickers_annotation_id,\n\t\tstickers.sticker_set_annotation_id AS stickers_sticker_set_annotation_id,\n\t\tstickers.variant_item_id AS stickers_variant_item_id,\n\t\tstickers.category_annotation_id AS stickers_category_annotation_id,\n\t\tstickers.author_id AS stickers_author_id,\n\t\tstickers.dominant_color AS stickers_dominant_color,\n\t\tstickers.background_color AS stickers_background_color,\n\t\tstickers.variant_name AS stickers_variant_name,\n\t\tstickers.start_time AS stickers_start_time,\n\t\tstickers.end_time AS stickers_end_time,\n\t\tstickers.last_modified_time AS stickers_last_modified_time,\n\t\tstickers.available_for_creation AS stickers_available_for_creation,\n\t\tstickers.variants AS stickers_variants,\n\t\tsticker_items._id AS sticker_items__id,\n\t\tsticker_items.category_id AS category_id\n\tFROM stickers\n\tINNER JOIN sticker_items AS sticker_items ON stickers__id=sticker_items__id;";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final m<bax> d() {
        return this.d;
    }
}

package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.q;
import com.twitter.database.model.p;
import com.twitter.util.collection.ar;
import defpackage.ayy;
import defpackage.ayz;
import java.util.Collection;

/* compiled from: Twttr */
public final class kc extends q implements ayy {
    private static final Collection<Class<? extends p>> b;
    private static final String[] c;
    private final m<ayz> d;

    public /* synthetic */ com.twitter.database.model.q f() {
        return d();
    }

    static {
        b = ar.g();
        c = new String[]{"_id", "search_queries_type", "search_queries_name", "search_queries_query", "search_queries_query_id", "search_queries_time", "search_queries_latitude", "search_queries_longitude", "search_queries_radius", "search_queries_location", "search_queries_pc", "search_queries_cluster_titles", "user_groups_view_user_groups_user_id", "user_groups_view_users_username", "user_groups_view_users_image_url", "user_groups_view_user_groups_rank", "user_groups_view_user_groups_type", "user_groups_view_user_groups_tag"};
    }

    @aoa
    public kc(f fVar) {
        super(fVar);
        this.d = new kf(this, this.e_);
    }

    public final String a() {
        return "categories_view";
    }

    public final String b() {
        return "CREATE VIEW categories_view\n\tAS SELECT\n\t\tsearch_queries._id AS _id,\n\t\tsearch_queries.type AS search_queries_type,\n\t\tsearch_queries.name AS search_queries_name,\n\t\tsearch_queries.query AS search_queries_query,\n\t\tsearch_queries.query_id AS search_queries_query_id,\n\t\tsearch_queries.time AS search_queries_time,\n\t\tsearch_queries.latitude AS search_queries_latitude,\n\t\tsearch_queries.longitude AS search_queries_longitude,\n\t\tsearch_queries.radius AS search_queries_radius,\n\t\tsearch_queries.location AS search_queries_location,\n\t\tsearch_queries.pc AS search_queries_pc,\n\t\tsearch_queries.cluster_titles AS search_queries_cluster_titles,\n\t\tuser_groups_view.user_groups_user_id AS user_groups_view_user_groups_user_id,\n\t\tuser_groups_view.users_username AS user_groups_view_users_username,\n\t\tuser_groups_view.users_image_url AS user_groups_view_users_image_url,\n\t\tuser_groups_view.user_groups_rank AS user_groups_view_user_groups_rank,\n\t\tuser_groups_view.user_groups_type AS user_groups_view_user_groups_type,\n\t\tuser_groups_view.user_groups_tag AS user_groups_view_user_groups_tag\n\tFROM search_queries\n\tLEFT OUTER JOIN user_groups_view AS user_groups_view ON search_queries_query_id=user_groups_view_user_groups_tag\n\tWHERE user_groups_view_user_groups_type=6;";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final m<ayz> d() {
        return this.d;
    }
}

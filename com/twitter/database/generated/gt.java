package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.q;
import com.twitter.database.model.p;
import com.twitter.util.collection.ar;
import defpackage.axj;
import defpackage.axk;
import java.util.Collection;

/* compiled from: Twttr */
public final class gt extends q implements axj {
    private static final Collection<Class<? extends p>> b;
    private static final String[] c;
    private final m<axk> d;

    public /* synthetic */ com.twitter.database.model.q f() {
        return d();
    }

    static {
        b = ar.g();
        c = new String[]{"_id", "topics_ev_id", "topics_ev_type", "topics_ev_query", "topics_ev_seed_hashtag", "topics_ev_title", "topics_ev_subtitle", "topics_ev_view_url", "topics_ev_status", "topics_ev_image_url", "topics_ev_explanation", "topics_ev_tweet_count", "topics_ev_start_time", "topics_ev_owner_id", "topics_ev_pc", "topics_ev_content", "topics_ev_hash", "list_mapping__id", "list_mapping_list_mapping_list_id", "list_mapping_list_mapping_type", "list_mapping_list_mapping_user_id", "list_mapping_list_is_last", "users__id", "users_user_id", "users_username", "users_name", "users_description", "users_description_entities", "users_web_url", "users_url_entities", "users_bg_color", "users_link_color", "users_image_url", "users_header_url", "users_extended_profile_fields", "users_location", "users_structured_location", "users_user_flags", "users_followers", "users_fast_followers", "users_friends", "users_statuses", "users_favorites", "users_media_count", "users_friendship", "users_friendship_time", "users_profile_created", "users_updated", "users_pinned_tweet_id", "users_advertiser_type", "users_business_profile_state", "users_hash"};
    }

    @aoa
    public gt(f fVar) {
        super(fVar);
        this.d = new gy(this, this.e_);
    }

    public final String a() {
        return "lists_view";
    }

    public final String b() {
        return "CREATE VIEW lists_view\n\tAS SELECT\n\t\ttopics._id AS _id,\n\t\ttopics.ev_id AS topics_ev_id,\n\t\ttopics.ev_type AS topics_ev_type,\n\t\ttopics.ev_query AS topics_ev_query,\n\t\ttopics.ev_seed_hashtag AS topics_ev_seed_hashtag,\n\t\ttopics.ev_title AS topics_ev_title,\n\t\ttopics.ev_subtitle AS topics_ev_subtitle,\n\t\ttopics.ev_view_url AS topics_ev_view_url,\n\t\ttopics.ev_status AS topics_ev_status,\n\t\ttopics.ev_image_url AS topics_ev_image_url,\n\t\ttopics.ev_explanation AS topics_ev_explanation,\n\t\ttopics.ev_tweet_count AS topics_ev_tweet_count,\n\t\ttopics.ev_start_time AS topics_ev_start_time,\n\t\ttopics.ev_owner_id AS topics_ev_owner_id,\n\t\ttopics.ev_pc AS topics_ev_pc,\n\t\ttopics.ev_content AS topics_ev_content,\n\t\ttopics.ev_hash AS topics_ev_hash,\n\t\tlist_mapping._id AS list_mapping__id,\n\t\tlist_mapping.list_mapping_list_id AS list_mapping_list_mapping_list_id,\n\t\tlist_mapping.list_mapping_type AS list_mapping_list_mapping_type,\n\t\tlist_mapping.list_mapping_user_id AS list_mapping_list_mapping_user_id,\n\t\tlist_mapping.list_is_last AS list_mapping_list_is_last,\n\t\tusers._id AS users__id,\n\t\tusers.user_id AS users_user_id,\n\t\tusers.username AS users_username,\n\t\tusers.name AS users_name,\n\t\tusers.description AS users_description,\n\t\tusers.description_entities AS users_description_entities,\n\t\tusers.web_url AS users_web_url,\n\t\tusers.url_entities AS users_url_entities,\n\t\tusers.bg_color AS users_bg_color,\n\t\tusers.link_color AS users_link_color,\n\t\tusers.image_url AS users_image_url,\n\t\tusers.header_url AS users_header_url,\n\t\tusers.extended_profile_fields AS users_extended_profile_fields,\n\t\tusers.location AS users_location,\n\t\tusers.structured_location AS users_structured_location,\n\t\tusers.user_flags AS users_user_flags,\n\t\tusers.followers AS users_followers,\n\t\tusers.fast_followers AS users_fast_followers,\n\t\tusers.friends AS users_friends,\n\t\tusers.statuses AS users_statuses,\n\t\tusers.favorites AS users_favorites,\n\t\tusers.media_count AS users_media_count,\n\t\tusers.friendship AS users_friendship,\n\t\tusers.friendship_time AS users_friendship_time,\n\t\tusers.profile_created AS users_profile_created,\n\t\tusers.updated AS users_updated,\n\t\tusers.pinned_tweet_id AS users_pinned_tweet_id,\n\t\tusers.advertiser_type AS users_advertiser_type,\n\t\tusers.business_profile_state AS users_business_profile_state,\n\t\tusers.hash AS users_hash\n\tFROM topics\n\tLEFT OUTER JOIN list_mapping AS list_mapping ON topics_ev_id=list_mapping_list_mapping_list_id\n\tLEFT OUTER JOIN users AS users ON topics_ev_owner_id=users_user_id\n\tWHERE topics_ev_type IN (5,4);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final m<axk> d() {
        return this.d;
    }
}

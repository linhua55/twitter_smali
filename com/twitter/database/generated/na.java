package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.q;
import com.twitter.database.model.p;
import com.twitter.util.collection.ar;
import defpackage.bag;
import defpackage.bah;
import java.util.Collection;

/* compiled from: Twttr */
public final class na extends q implements bag {
    private static final Collection<Class<? extends p>> b;
    private static final String[] c;
    private final m<bah> d;

    public /* synthetic */ com.twitter.database.model.q f() {
        return d();
    }

    static {
        b = ar.g();
        c = new String[]{"_id", "tokens_text", "tokens_weight", "tokens_type", "tokens_ref_id", "users__id", "users_user_id", "users_username", "users_name", "users_description", "users_description_entities", "users_web_url", "users_url_entities", "users_bg_color", "users_link_color", "users_image_url", "users_header_url", "users_extended_profile_fields", "users_location", "users_structured_location", "users_user_flags", "users_followers", "users_fast_followers", "users_friends", "users_statuses", "users_favorites", "users_media_count", "users_friendship", "users_friendship_time", "users_profile_created", "users_updated", "users_pinned_tweet_id", "users_advertiser_type", "users_business_profile_state", "users_hash", "user_metadata__id", "user_metadata_owner_id", "user_metadata_user_id", "user_metadata_user_group_type", "user_metadata_user_group_tag", "user_metadata_soc_type", "user_metadata_soc_name", "user_metadata_soc_follow_count", "user_metadata_user_title", "user_metadata_token"};
    }

    @aoa
    public na(f fVar) {
        super(fVar);
        this.d = new nf(this, this.e_);
    }

    public final String a() {
        return "tokens_user_view";
    }

    public final String b() {
        return "CREATE VIEW tokens_user_view\n\tAS SELECT\n\t\ttokens._id AS _id,\n\t\ttokens.text AS tokens_text,\n\t\ttokens.weight AS tokens_weight,\n\t\ttokens.type AS tokens_type,\n\t\ttokens.ref_id AS tokens_ref_id,\n\t\tusers._id AS users__id,\n\t\tusers.user_id AS users_user_id,\n\t\tusers.username AS users_username,\n\t\tusers.name AS users_name,\n\t\tusers.description AS users_description,\n\t\tusers.description_entities AS users_description_entities,\n\t\tusers.web_url AS users_web_url,\n\t\tusers.url_entities AS users_url_entities,\n\t\tusers.bg_color AS users_bg_color,\n\t\tusers.link_color AS users_link_color,\n\t\tusers.image_url AS users_image_url,\n\t\tusers.header_url AS users_header_url,\n\t\tusers.extended_profile_fields AS users_extended_profile_fields,\n\t\tusers.location AS users_location,\n\t\tusers.structured_location AS users_structured_location,\n\t\tusers.user_flags AS users_user_flags,\n\t\tusers.followers AS users_followers,\n\t\tusers.fast_followers AS users_fast_followers,\n\t\tusers.friends AS users_friends,\n\t\tusers.statuses AS users_statuses,\n\t\tusers.favorites AS users_favorites,\n\t\tusers.media_count AS users_media_count,\n\t\tusers.friendship AS users_friendship,\n\t\tusers.friendship_time AS users_friendship_time,\n\t\tusers.profile_created AS users_profile_created,\n\t\tusers.updated AS users_updated,\n\t\tusers.pinned_tweet_id AS users_pinned_tweet_id,\n\t\tusers.advertiser_type AS users_advertiser_type,\n\t\tusers.business_profile_state AS users_business_profile_state,\n\t\tusers.hash AS users_hash,\n\t\tuser_metadata._id AS user_metadata__id,\n\t\tuser_metadata.owner_id AS user_metadata_owner_id,\n\t\tuser_metadata.user_id AS user_metadata_user_id,\n\t\tuser_metadata.user_group_type AS user_metadata_user_group_type,\n\t\tuser_metadata.user_group_tag AS user_metadata_user_group_tag,\n\t\tuser_metadata.soc_type AS user_metadata_soc_type,\n\t\tuser_metadata.soc_name AS user_metadata_soc_name,\n\t\tuser_metadata.soc_follow_count AS user_metadata_soc_follow_count,\n\t\tuser_metadata.user_title AS user_metadata_user_title,\n\t\tuser_metadata.token AS user_metadata_token\n\tFROM tokens\n\tLEFT OUTER JOIN users AS users ON tokens_ref_id=users_user_id\n\tLEFT OUTER JOIN user_metadata AS user_metadata ON tokens_ref_id=user_metadata_user_id;";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final m<bah> d() {
        return this.d;
    }
}

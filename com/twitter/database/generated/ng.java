package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.q;
import com.twitter.database.model.p;
import com.twitter.util.collection.ar;
import defpackage.bai;
import defpackage.baj;
import java.util.Collection;

/* compiled from: Twttr */
public final class ng extends q implements bai {
    private static final Collection<Class<? extends p>> b;
    private static final String[] c;
    private final m<baj> d;

    public /* synthetic */ com.twitter.database.model.q f() {
        return d();
    }

    static {
        b = ar.g();
        c = new String[]{"_id", "user_id", "username", "name", "description", "description_entities", "web_url", "url_entities", "bg_color", "link_color", "image_url", "header_url", "extended_profile_fields", "location", "structured_location", "user_flags", "followers", "fast_followers", "friends", "statuses", "favorites", "media_count", "friendship", "friendship_time", "profile_created", "updated", "pinned_tweet_id", "advertiser_type", "business_profile_state", "hash", "tokens__id", "tokens_text", "tokens_weight", "tokens_type", "tokens_ref_id"};
    }

    @aoa
    public ng(f fVar) {
        super(fVar);
        this.d = new nk(this, this.e_);
    }

    public final String a() {
        return "weighted_users";
    }

    public final String b() {
        return "CREATE VIEW weighted_users\n\tAS SELECT\n\t\tusers._id AS _id,\n\t\tusers.user_id AS user_id,\n\t\tusers.username AS username,\n\t\tusers.name AS name,\n\t\tusers.description AS description,\n\t\tusers.description_entities AS description_entities,\n\t\tusers.web_url AS web_url,\n\t\tusers.url_entities AS url_entities,\n\t\tusers.bg_color AS bg_color,\n\t\tusers.link_color AS link_color,\n\t\tusers.image_url AS image_url,\n\t\tusers.header_url AS header_url,\n\t\tusers.extended_profile_fields AS extended_profile_fields,\n\t\tusers.location AS location,\n\t\tusers.structured_location AS structured_location,\n\t\tusers.user_flags AS user_flags,\n\t\tusers.followers AS followers,\n\t\tusers.fast_followers AS fast_followers,\n\t\tusers.friends AS friends,\n\t\tusers.statuses AS statuses,\n\t\tusers.favorites AS favorites,\n\t\tusers.media_count AS media_count,\n\t\tusers.friendship AS friendship,\n\t\tusers.friendship_time AS friendship_time,\n\t\tusers.profile_created AS profile_created,\n\t\tusers.updated AS updated,\n\t\tusers.pinned_tweet_id AS pinned_tweet_id,\n\t\tusers.advertiser_type AS advertiser_type,\n\t\tusers.business_profile_state AS business_profile_state,\n\t\tusers.hash AS hash,\n\t\ttokens._id AS tokens__id,\n\t\ttokens.text AS tokens_text,\n\t\ttokens.weight AS tokens_weight,\n\t\ttokens.type AS tokens_type,\n\t\ttokens.ref_id AS tokens_ref_id\n\tFROM users\n\tLEFT OUTER JOIN tokens AS tokens ON user_id=tokens_ref_id\n\tGROUP BY user_id;";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final m<baj> d() {
        return this.d;
    }
}

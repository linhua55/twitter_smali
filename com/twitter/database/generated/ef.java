package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.q;
import com.twitter.database.model.p;
import defpackage.awh;
import defpackage.awj;
import defpackage.awk;
import defpackage.awn;
import defpackage.axh;
import defpackage.aye;
import defpackage.ayi;
import defpackage.azk;
import defpackage.azw;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class ef extends q implements awj {
    private static final Collection<Class<? extends p>> b;
    private static final String[] c;
    private final m<awk> d;

    public /* synthetic */ com.twitter.database.model.q f() {
        return d();
    }

    static {
        b = new LinkedHashSet(7);
        c = new String[]{"_id", "status_groups_tweet_type", "status_groups_type", "status_groups_sender_id", "status_groups_owner_id", "status_groups_tag", "status_groups_g_status_id", "status_groups_ref_id", "status_groups_is_read", "status_groups_is_last", "status_groups_timeline", "status_groups_page", "status_groups_updated_at", "status_groups_pc", "status_groups_g_flags", "status_groups_preview_draft_id", "status_groups_preview_media", "status_groups_tweet_pivots", "statuses__id", "statuses_status_id", "statuses_author_id", "statuses_content", "statuses_r_content", "statuses_source", "statuses_created", "statuses_in_r_user_id", "statuses_in_r_status_id", "statuses_in_r_screen_name", "statuses_favorited", "statuses_retweeted", "statuses_favorite_count", "statuses_retweet_count", "statuses_view_count", "statuses_flags", "statuses_latitude", "statuses_longitude", "statuses_place_data", "statuses_entities", "statuses_card", "statuses_lang", "statuses_supplemental_language", "statuses_quoted_tweet_data", "statuses_quoted_tweet_id", "card_state__id", "card_state_card_status_id", "card_state_card_id", "card_state_card_state", "users__id", "users_user_id", "users_username", "users_name", "users_description", "users_description_entities", "users_web_url", "users_url_entities", "users_bg_color", "users_link_color", "users_image_url", "users_header_url", "users_extended_profile_fields", "users_location", "users_structured_location", "users_user_flags", "users_followers", "users_fast_followers", "users_friends", "users_statuses", "users_favorites", "users_media_count", "users_friendship", "users_friendship_time", "users_profile_created", "users_updated", "users_pinned_tweet_id", "users_advertiser_type", "users_business_profile_state", "users_hash", "sender__id", "sender_user_id", "sender_username", "sender_name", "sender_description", "sender_description_entities", "sender_web_url", "sender_url_entities", "sender_bg_color", "sender_link_color", "sender_image_url", "sender_header_url", "sender_extended_profile_fields", "sender_location", "sender_structured_location", "sender_user_flags", "sender_followers", "sender_fast_followers", "sender_friends", "sender_statuses", "sender_favorites", "sender_media_count", "sender_friendship", "sender_friendship_time", "sender_profile_created", "sender_updated", "sender_pinned_tweet_id", "sender_advertiser_type", "sender_business_profile_state", "sender_hash", "status_metadata__id", "status_metadata_owner_id", "status_metadata_status_id", "status_metadata_status_group", "status_metadata_status_group_tag", "status_metadata_soc_type", "status_metadata_soc_name", "status_metadata_soc_second_name", "status_metadata_soc_others_count", "status_metadata_soc_fav_count", "status_metadata_soc_rt_count", "status_metadata_reason_icon_type", "status_metadata_reason_text", "status_metadata_highlights"};
        b.add(azw.class);
        b.add(ayi.class);
        b.add(awn.class);
        b.add(axh.class);
        b.add(azk.class);
        b.add(awh.class);
        b.add(aye.class);
    }

    @aoa
    public ef(f fVar) {
        super(fVar);
        this.d = new en(this, this.e_);
    }

    public final String a() {
        return "status_groups_view";
    }

    public final String b() {
        return "CREATE VIEW status_groups_view\n\tAS SELECT\n\t\tstatus_groups._id AS _id,\n\t\tstatus_groups.tweet_type AS status_groups_tweet_type,\n\t\tstatus_groups.type AS status_groups_type,\n\t\tstatus_groups.sender_id AS status_groups_sender_id,\n\t\tstatus_groups.owner_id AS status_groups_owner_id,\n\t\tstatus_groups.tag AS status_groups_tag,\n\t\tstatus_groups.g_status_id AS status_groups_g_status_id,\n\t\tstatus_groups.ref_id AS status_groups_ref_id,\n\t\tstatus_groups.is_read AS status_groups_is_read,\n\t\tstatus_groups.is_last AS status_groups_is_last,\n\t\tstatus_groups.timeline AS status_groups_timeline,\n\t\tstatus_groups.page AS status_groups_page,\n\t\tstatus_groups.updated_at AS status_groups_updated_at,\n\t\tstatus_groups.pc AS status_groups_pc,\n\t\tstatus_groups.g_flags AS status_groups_g_flags,\n\t\tstatus_groups.preview_draft_id AS status_groups_preview_draft_id,\n\t\tstatus_groups.preview_media AS status_groups_preview_media,\n\t\tstatus_groups.tweet_pivots AS status_groups_tweet_pivots,\n\t\tstatuses._id AS statuses__id,\n\t\tstatuses.status_id AS statuses_status_id,\n\t\tstatuses.author_id AS statuses_author_id,\n\t\tstatuses.content AS statuses_content,\n\t\tstatuses.r_content AS statuses_r_content,\n\t\tstatuses.source AS statuses_source,\n\t\tstatuses.created AS statuses_created,\n\t\tstatuses.in_r_user_id AS statuses_in_r_user_id,\n\t\tstatuses.in_r_status_id AS statuses_in_r_status_id,\n\t\tstatuses.in_r_screen_name AS statuses_in_r_screen_name,\n\t\tstatuses.favorited AS statuses_favorited,\n\t\tstatuses.retweeted AS statuses_retweeted,\n\t\tstatuses.favorite_count AS statuses_favorite_count,\n\t\tstatuses.retweet_count AS statuses_retweet_count,\n\t\tstatuses.view_count AS statuses_view_count,\n\t\tstatuses.flags AS statuses_flags,\n\t\tstatuses.latitude AS statuses_latitude,\n\t\tstatuses.longitude AS statuses_longitude,\n\t\tstatuses.place_data AS statuses_place_data,\n\t\tstatuses.entities AS statuses_entities,\n\t\tstatuses.card AS statuses_card,\n\t\tstatuses.lang AS statuses_lang,\n\t\tstatuses.supplemental_language AS statuses_supplemental_language,\n\t\tstatuses.quoted_tweet_data AS statuses_quoted_tweet_data,\n\t\tstatuses.quoted_tweet_id AS statuses_quoted_tweet_id,\n\t\tcard_state._id AS card_state__id,\n\t\tcard_state.card_status_id AS card_state_card_status_id,\n\t\tcard_state.card_id AS card_state_card_id,\n\t\tcard_state.card_state AS card_state_card_state,\n\t\tusers._id AS users__id,\n\t\tusers.user_id AS users_user_id,\n\t\tusers.username AS users_username,\n\t\tusers.name AS users_name,\n\t\tusers.description AS users_description,\n\t\tusers.description_entities AS users_description_entities,\n\t\tusers.web_url AS users_web_url,\n\t\tusers.url_entities AS users_url_entities,\n\t\tusers.bg_color AS users_bg_color,\n\t\tusers.link_color AS users_link_color,\n\t\tusers.image_url AS users_image_url,\n\t\tusers.header_url AS users_header_url,\n\t\tusers.extended_profile_fields AS users_extended_profile_fields,\n\t\tusers.location AS users_location,\n\t\tusers.structured_location AS users_structured_location,\n\t\tusers.user_flags AS users_user_flags,\n\t\tusers.followers AS users_followers,\n\t\tusers.fast_followers AS users_fast_followers,\n\t\tusers.friends AS users_friends,\n\t\tusers.statuses AS users_statuses,\n\t\tusers.favorites AS users_favorites,\n\t\tusers.media_count AS users_media_count,\n\t\tusers.friendship AS users_friendship,\n\t\tusers.friendship_time AS users_friendship_time,\n\t\tusers.profile_created AS users_profile_created,\n\t\tusers.updated AS users_updated,\n\t\tusers.pinned_tweet_id AS users_pinned_tweet_id,\n\t\tusers.advertiser_type AS users_advertiser_type,\n\t\tusers.business_profile_state AS users_business_profile_state,\n\t\tusers.hash AS users_hash,\n\t\tsender._id AS sender__id,\n\t\tsender.user_id AS sender_user_id,\n\t\tsender.username AS sender_username,\n\t\tsender.name AS sender_name,\n\t\tsender.description AS sender_description,\n\t\tsender.description_entities AS sender_description_entities,\n\t\tsender.web_url AS sender_web_url,\n\t\tsender.url_entities AS sender_url_entities,\n\t\tsender.bg_color AS sender_bg_color,\n\t\tsender.link_color AS sender_link_color,\n\t\tsender.image_url AS sender_image_url,\n\t\tsender.header_url AS sender_header_url,\n\t\tsender.extended_profile_fields AS sender_extended_profile_fields,\n\t\tsender.location AS sender_location,\n\t\tsender.structured_location AS sender_structured_location,\n\t\tsender.user_flags AS sender_user_flags,\n\t\tsender.followers AS sender_followers,\n\t\tsender.fast_followers AS sender_fast_followers,\n\t\tsender.friends AS sender_friends,\n\t\tsender.statuses AS sender_statuses,\n\t\tsender.favorites AS sender_favorites,\n\t\tsender.media_count AS sender_media_count,\n\t\tsender.friendship AS sender_friendship,\n\t\tsender.friendship_time AS sender_friendship_time,\n\t\tsender.profile_created AS sender_profile_created,\n\t\tsender.updated AS sender_updated,\n\t\tsender.pinned_tweet_id AS sender_pinned_tweet_id,\n\t\tsender.advertiser_type AS sender_advertiser_type,\n\t\tsender.business_profile_state AS sender_business_profile_state,\n\t\tsender.hash AS sender_hash,\n\t\tstatus_metadata._id AS status_metadata__id,\n\t\tstatus_metadata.owner_id AS status_metadata_owner_id,\n\t\tstatus_metadata.status_id AS status_metadata_status_id,\n\t\tstatus_metadata.status_group AS status_metadata_status_group,\n\t\tstatus_metadata.status_group_tag AS status_metadata_status_group_tag,\n\t\tstatus_metadata.soc_type AS status_metadata_soc_type,\n\t\tstatus_metadata.soc_name AS status_metadata_soc_name,\n\t\tstatus_metadata.soc_second_name AS status_metadata_soc_second_name,\n\t\tstatus_metadata.soc_others_count AS status_metadata_soc_others_count,\n\t\tstatus_metadata.soc_fav_count AS status_metadata_soc_fav_count,\n\t\tstatus_metadata.soc_rt_count AS status_metadata_soc_rt_count,\n\t\tstatus_metadata.reason_icon_type AS status_metadata_reason_icon_type,\n\t\tstatus_metadata.reason_text AS status_metadata_reason_text,\n\t\tstatus_metadata.highlights AS status_metadata_highlights\n\tFROM status_groups\n\tLEFT OUTER JOIN statuses AS statuses ON status_groups_g_status_id=statuses_status_id\n\tLEFT OUTER JOIN card_state AS card_state ON status_groups_g_status_id=card_state_card_status_id\n\tLEFT OUTER JOIN users AS users ON statuses_author_id=users_user_id\n\tLEFT OUTER JOIN users AS sender ON status_groups_sender_id=sender_user_id\n\tLEFT OUTER JOIN status_metadata AS status_metadata ON status_groups_owner_id=status_metadata_owner_id AND statuses_status_id=status_metadata_status_id AND status_groups_type=status_metadata_status_group AND status_groups_tag=status_metadata_status_group_tag;";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final m<awk> d() {
        return this.d;
    }
}

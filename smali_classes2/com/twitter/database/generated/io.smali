.class public final Lcom/twitter/database/generated/io;
.super Lcom/twitter/database/internal/q;
.source "Twttr"

# interfaces
.implements Lbfu;


# static fields
.field private static final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:[Ljava/lang/String;


# instance fields
.field private final d:Lcom/twitter/database/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbfv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/twitter/util/collection/au;->g()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/twitter/database/generated/io;->b:Ljava/util/Collection;

    .line 57
    const/16 v0, 0x9b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "moments_pages_moment_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moments_pages_page_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "moments_pages_tweet_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "moments_pages_page_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "moments_pages_last_read_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "moments_pages_content_version"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "moments_pages_capsule_page_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "moments__id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "moments_title"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "moments_can_subscribe"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "moments_is_live"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "moments_is_sensitive"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "moments_subcategory_string"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "moments_subcategory_favicon_url"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "moments_time_string"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "moments_duration_string"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "moments_is_subscribed"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "moments_description"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "moments_moment_url"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "moments_num_subscribers"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "moments_author_info"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "moments_promoted_content"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "moments_event_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "moments_event_type"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "moments_capsule_content_version"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "status_groups_view__id"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "status_groups_tweet_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "status_groups_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "status_groups_sender_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "status_groups_owner_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "status_groups_tag"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "status_groups_g_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "status_groups_ref_id"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "status_groups_is_read"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "status_groups_is_last"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "status_groups_timeline"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "status_groups_page"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "status_groups_updated_at"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "status_groups_pc"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "status_groups_g_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "status_groups_preview_draft_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "status_groups_preview_media"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "status_groups_tweet_pivots"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "statuses__id"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "statuses_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "statuses_author_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "statuses_content"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "statuses_r_content"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "statuses_source"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "statuses_created"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "statuses_in_r_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "statuses_in_r_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "statuses_in_r_screen_name"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "statuses_favorited"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "statuses_retweeted"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "statuses_favorite_count"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "statuses_retweet_count"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "statuses_view_count"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "statuses_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "statuses_latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "statuses_longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "statuses_place_data"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "statuses_entities"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "statuses_card"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "statuses_lang"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "statuses_supplemental_language"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "statuses_quoted_tweet_data"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "statuses_quoted_tweet_id"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "statuses_withheld_scope"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "card_state__id"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "card_state_card_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "card_state_card_id"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "card_state_card_state"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "users__id"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "users_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "users_username"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "users_name"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "users_description"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "users_description_entities"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "users_web_url"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "users_url_entities"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "users_bg_color"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "users_link_color"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "users_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "users_header_url"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "users_extended_profile_fields"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "users_location"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "users_structured_location"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "users_user_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "users_followers"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "users_fast_followers"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "users_friends"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "users_statuses"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "users_favorites"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string/jumbo v2, "users_media_count"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string/jumbo v2, "users_friendship"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string/jumbo v2, "users_friendship_time"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "users_profile_created"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string/jumbo v2, "users_updated"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string/jumbo v2, "users_pinned_tweet_id"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string/jumbo v2, "users_advertiser_type"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "users_business_profile_state"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "users_customer_service_state"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "users_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "sender__id"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string/jumbo v2, "sender_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "sender_username"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "sender_name"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "sender_description"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "sender_description_entities"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "sender_web_url"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "sender_url_entities"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v2, "sender_bg_color"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v2, "sender_link_color"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "sender_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "sender_header_url"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "sender_extended_profile_fields"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "sender_location"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "sender_structured_location"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "sender_user_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "sender_followers"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "sender_fast_followers"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "sender_friends"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string/jumbo v2, "sender_statuses"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string/jumbo v2, "sender_favorites"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string/jumbo v2, "sender_media_count"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string/jumbo v2, "sender_friendship"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string/jumbo v2, "sender_friendship_time"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string/jumbo v2, "sender_profile_created"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string/jumbo v2, "sender_updated"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string/jumbo v2, "sender_pinned_tweet_id"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string/jumbo v2, "sender_advertiser_type"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string/jumbo v2, "sender_business_profile_state"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string/jumbo v2, "sender_customer_service_state"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string/jumbo v2, "sender_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string/jumbo v2, "status_metadata__id"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string/jumbo v2, "status_metadata_owner_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string/jumbo v2, "status_metadata_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string/jumbo v2, "status_metadata_status_group"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string/jumbo v2, "status_metadata_status_group_tag"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "status_metadata_soc_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string/jumbo v2, "status_metadata_soc_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string/jumbo v2, "status_metadata_soc_second_name"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string/jumbo v2, "status_metadata_soc_others_count"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string/jumbo v2, "status_metadata_soc_fav_count"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string/jumbo v2, "status_metadata_soc_rt_count"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v2, "status_metadata_reason_icon_type"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string/jumbo v2, "status_metadata_reason_text"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string/jumbo v2, "status_metadata_highlights"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string/jumbo v2, "moment_sports_events__id"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string/jumbo v2, "moment_sports_events_key"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string/jumbo v2, "moment_sports_events_value"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string/jumbo v2, "tweet_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string/jumbo v2, "user_friendship"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/database/generated/io;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/internal/f;)V
    .locals 2
    .annotation build Latx;
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/q;-><init>(Lcom/twitter/database/internal/f;)V

    .line 221
    new-instance v0, Lcom/twitter/database/generated/iz;

    iget-object v1, p0, Lcom/twitter/database/generated/io;->f_:Lcom/twitter/database/internal/f;

    invoke-direct {v0, p0, v1}, Lcom/twitter/database/generated/iz;-><init>(Lcom/twitter/database/generated/io;Lcom/twitter/database/internal/f;)V

    iput-object v0, p0, Lcom/twitter/database/generated/io;->d:Lcom/twitter/database/internal/m;

    .line 222
    return-void
.end method

.method static synthetic e()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/twitter/database/generated/io;->c:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    const-string/jumbo v0, "moments_pages_view"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string/jumbo v0, "CREATE VIEW moments_pages_view\n\tAS SELECT\n\t\tmoments_pages._id AS _id,\n\t\tmoments_pages.moment_id AS moments_pages_moment_id,\n\t\tmoments_pages.page_id AS moments_pages_page_id,\n\t\tmoments_pages.tweet_id AS moments_pages_tweet_id,\n\t\tmoments_pages.page_number AS moments_pages_page_number,\n\t\tmoments_pages.last_read_timestamp AS moments_pages_last_read_timestamp,\n\t\tmoments_pages.content_version AS moments_pages_content_version,\n\t\tmoments_pages.capsule_page_data AS moments_pages_capsule_page_data,\n\t\tmoments._id AS moments__id,\n\t\tmoments.title AS moments_title,\n\t\tmoments.can_subscribe AS moments_can_subscribe,\n\t\tmoments.is_live AS moments_is_live,\n\t\tmoments.is_sensitive AS moments_is_sensitive,\n\t\tmoments.subcategory_string AS moments_subcategory_string,\n\t\tmoments.subcategory_favicon_url AS moments_subcategory_favicon_url,\n\t\tmoments.time_string AS moments_time_string,\n\t\tmoments.duration_string AS moments_duration_string,\n\t\tmoments.is_subscribed AS moments_is_subscribed,\n\t\tmoments.description AS moments_description,\n\t\tmoments.moment_url AS moments_moment_url,\n\t\tmoments.num_subscribers AS moments_num_subscribers,\n\t\tmoments.author_info AS moments_author_info,\n\t\tmoments.promoted_content AS moments_promoted_content,\n\t\tmoments.event_id AS moments_event_id,\n\t\tmoments.event_type AS moments_event_type,\n\t\tmoments.capsule_content_version AS moments_capsule_content_version,\n\t\tstatus_groups_view._id AS status_groups_view__id,\n\t\tstatus_groups_view.status_groups_tweet_type AS status_groups_tweet_type,\n\t\tstatus_groups_view.status_groups_type AS status_groups_type,\n\t\tstatus_groups_view.status_groups_sender_id AS status_groups_sender_id,\n\t\tstatus_groups_view.status_groups_owner_id AS status_groups_owner_id,\n\t\tstatus_groups_view.status_groups_tag AS status_groups_tag,\n\t\tstatus_groups_view.status_groups_g_status_id AS status_groups_g_status_id,\n\t\tstatus_groups_view.status_groups_ref_id AS status_groups_ref_id,\n\t\tstatus_groups_view.status_groups_is_read AS status_groups_is_read,\n\t\tstatus_groups_view.status_groups_is_last AS status_groups_is_last,\n\t\tstatus_groups_view.status_groups_timeline AS status_groups_timeline,\n\t\tstatus_groups_view.status_groups_page AS status_groups_page,\n\t\tstatus_groups_view.status_groups_updated_at AS status_groups_updated_at,\n\t\tstatus_groups_view.status_groups_pc AS status_groups_pc,\n\t\tstatus_groups_view.status_groups_g_flags AS status_groups_g_flags,\n\t\tstatus_groups_view.status_groups_preview_draft_id AS status_groups_preview_draft_id,\n\t\tstatus_groups_view.status_groups_preview_media AS status_groups_preview_media,\n\t\tstatus_groups_view.status_groups_tweet_pivots AS status_groups_tweet_pivots,\n\t\tstatus_groups_view.statuses__id AS statuses__id,\n\t\tstatus_groups_view.statuses_status_id AS statuses_status_id,\n\t\tstatus_groups_view.statuses_author_id AS statuses_author_id,\n\t\tstatus_groups_view.statuses_content AS statuses_content,\n\t\tstatus_groups_view.statuses_r_content AS statuses_r_content,\n\t\tstatus_groups_view.statuses_source AS statuses_source,\n\t\tstatus_groups_view.statuses_created AS statuses_created,\n\t\tstatus_groups_view.statuses_in_r_user_id AS statuses_in_r_user_id,\n\t\tstatus_groups_view.statuses_in_r_status_id AS statuses_in_r_status_id,\n\t\tstatus_groups_view.statuses_in_r_screen_name AS statuses_in_r_screen_name,\n\t\tstatus_groups_view.statuses_favorited AS statuses_favorited,\n\t\tstatus_groups_view.statuses_retweeted AS statuses_retweeted,\n\t\tstatus_groups_view.statuses_favorite_count AS statuses_favorite_count,\n\t\tstatus_groups_view.statuses_retweet_count AS statuses_retweet_count,\n\t\tstatus_groups_view.statuses_view_count AS statuses_view_count,\n\t\tstatus_groups_view.statuses_flags AS statuses_flags,\n\t\tstatus_groups_view.statuses_latitude AS statuses_latitude,\n\t\tstatus_groups_view.statuses_longitude AS statuses_longitude,\n\t\tstatus_groups_view.statuses_place_data AS statuses_place_data,\n\t\tstatus_groups_view.statuses_entities AS statuses_entities,\n\t\tstatus_groups_view.statuses_card AS statuses_card,\n\t\tstatus_groups_view.statuses_lang AS statuses_lang,\n\t\tstatus_groups_view.statuses_supplemental_language AS statuses_supplemental_language,\n\t\tstatus_groups_view.statuses_quoted_tweet_data AS statuses_quoted_tweet_data,\n\t\tstatus_groups_view.statuses_quoted_tweet_id AS statuses_quoted_tweet_id,\n\t\tstatus_groups_view.statuses_withheld_scope AS statuses_withheld_scope,\n\t\tstatus_groups_view.card_state__id AS card_state__id,\n\t\tstatus_groups_view.card_state_card_status_id AS card_state_card_status_id,\n\t\tstatus_groups_view.card_state_card_id AS card_state_card_id,\n\t\tstatus_groups_view.card_state_card_state AS card_state_card_state,\n\t\tstatus_groups_view.users__id AS users__id,\n\t\tstatus_groups_view.users_user_id AS users_user_id,\n\t\tstatus_groups_view.users_username AS users_username,\n\t\tstatus_groups_view.users_name AS users_name,\n\t\tstatus_groups_view.users_description AS users_description,\n\t\tstatus_groups_view.users_description_entities AS users_description_entities,\n\t\tstatus_groups_view.users_web_url AS users_web_url,\n\t\tstatus_groups_view.users_url_entities AS users_url_entities,\n\t\tstatus_groups_view.users_bg_color AS users_bg_color,\n\t\tstatus_groups_view.users_link_color AS users_link_color,\n\t\tstatus_groups_view.users_image_url AS users_image_url,\n\t\tstatus_groups_view.users_header_url AS users_header_url,\n\t\tstatus_groups_view.users_extended_profile_fields AS users_extended_profile_fields,\n\t\tstatus_groups_view.users_location AS users_location,\n\t\tstatus_groups_view.users_structured_location AS users_structured_location,\n\t\tstatus_groups_view.users_user_flags AS users_user_flags,\n\t\tstatus_groups_view.users_followers AS users_followers,\n\t\tstatus_groups_view.users_fast_followers AS users_fast_followers,\n\t\tstatus_groups_view.users_friends AS users_friends,\n\t\tstatus_groups_view.users_statuses AS users_statuses,\n\t\tstatus_groups_view.users_favorites AS users_favorites,\n\t\tstatus_groups_view.users_media_count AS users_media_count,\n\t\tstatus_groups_view.users_friendship AS users_friendship,\n\t\tstatus_groups_view.users_friendship_time AS users_friendship_time,\n\t\tstatus_groups_view.users_profile_created AS users_profile_created,\n\t\tstatus_groups_view.users_updated AS users_updated,\n\t\tstatus_groups_view.users_pinned_tweet_id AS users_pinned_tweet_id,\n\t\tstatus_groups_view.users_advertiser_type AS users_advertiser_type,\n\t\tstatus_groups_view.users_business_profile_state AS users_business_profile_state,\n\t\tstatus_groups_view.users_customer_service_state AS users_customer_service_state,\n\t\tstatus_groups_view.users_hash AS users_hash,\n\t\tstatus_groups_view.sender__id AS sender__id,\n\t\tstatus_groups_view.sender_user_id AS sender_user_id,\n\t\tstatus_groups_view.sender_username AS sender_username,\n\t\tstatus_groups_view.sender_name AS sender_name,\n\t\tstatus_groups_view.sender_description AS sender_description,\n\t\tstatus_groups_view.sender_description_entities AS sender_description_entities,\n\t\tstatus_groups_view.sender_web_url AS sender_web_url,\n\t\tstatus_groups_view.sender_url_entities AS sender_url_entities,\n\t\tstatus_groups_view.sender_bg_color AS sender_bg_color,\n\t\tstatus_groups_view.sender_link_color AS sender_link_color,\n\t\tstatus_groups_view.sender_image_url AS sender_image_url,\n\t\tstatus_groups_view.sender_header_url AS sender_header_url,\n\t\tstatus_groups_view.sender_extended_profile_fields AS sender_extended_profile_fields,\n\t\tstatus_groups_view.sender_location AS sender_location,\n\t\tstatus_groups_view.sender_structured_location AS sender_structured_location,\n\t\tstatus_groups_view.sender_user_flags AS sender_user_flags,\n\t\tstatus_groups_view.sender_followers AS sender_followers,\n\t\tstatus_groups_view.sender_fast_followers AS sender_fast_followers,\n\t\tstatus_groups_view.sender_friends AS sender_friends,\n\t\tstatus_groups_view.sender_statuses AS sender_statuses,\n\t\tstatus_groups_view.sender_favorites AS sender_favorites,\n\t\tstatus_groups_view.sender_media_count AS sender_media_count,\n\t\tstatus_groups_view.sender_friendship AS sender_friendship,\n\t\tstatus_groups_view.sender_friendship_time AS sender_friendship_time,\n\t\tstatus_groups_view.sender_profile_created AS sender_profile_created,\n\t\tstatus_groups_view.sender_updated AS sender_updated,\n\t\tstatus_groups_view.sender_pinned_tweet_id AS sender_pinned_tweet_id,\n\t\tstatus_groups_view.sender_advertiser_type AS sender_advertiser_type,\n\t\tstatus_groups_view.sender_business_profile_state AS sender_business_profile_state,\n\t\tstatus_groups_view.sender_customer_service_state AS sender_customer_service_state,\n\t\tstatus_groups_view.sender_hash AS sender_hash,\n\t\tstatus_groups_view.status_metadata__id AS status_metadata__id,\n\t\tstatus_groups_view.status_metadata_owner_id AS status_metadata_owner_id,\n\t\tstatus_groups_view.status_metadata_status_id AS status_metadata_status_id,\n\t\tstatus_groups_view.status_metadata_status_group AS status_metadata_status_group,\n\t\tstatus_groups_view.status_metadata_status_group_tag AS status_metadata_status_group_tag,\n\t\tstatus_groups_view.status_metadata_soc_type AS status_metadata_soc_type,\n\t\tstatus_groups_view.status_metadata_soc_name AS status_metadata_soc_name,\n\t\tstatus_groups_view.status_metadata_soc_second_name AS status_metadata_soc_second_name,\n\t\tstatus_groups_view.status_metadata_soc_others_count AS status_metadata_soc_others_count,\n\t\tstatus_groups_view.status_metadata_soc_fav_count AS status_metadata_soc_fav_count,\n\t\tstatus_groups_view.status_metadata_soc_rt_count AS status_metadata_soc_rt_count,\n\t\tstatus_groups_view.status_metadata_reason_icon_type AS status_metadata_reason_icon_type,\n\t\tstatus_groups_view.status_metadata_reason_text AS status_metadata_reason_text,\n\t\tstatus_groups_view.status_metadata_highlights AS status_metadata_highlights,\n\t\tmoment_sports_events._id AS moment_sports_events__id,\n\t\tmoment_sports_events.key AS moment_sports_events_key,\n\t\tmoment_sports_events.value AS moment_sports_events_value,\n\t\ttweet.flags AS tweet_flags,\n\t\tuser.friendship AS user_friendship\n\tFROM moments_pages\n\tLEFT OUTER JOIN moments AS moments ON moments_pages_moment_id=moments__id\n\tLEFT OUTER JOIN status_groups_view AS status_groups_view ON moments_pages_tweet_id=status_groups_g_status_id AND moments__id=status_groups_tag AND status_groups_type=33\n\tLEFT OUTER JOIN moment_sports_events AS moment_sports_events ON moments_event_id=moment_sports_events_key\n\tLEFT OUTER JOIN statuses AS tweet ON moments_pages_tweet_id=tweet.status_id\n\tLEFT OUTER JOIN users AS user ON statuses_author_id=user.user_id;"

    return-object v0
.end method

.method protected final c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 401
    sget-object v0, Lcom/twitter/database/generated/io;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final d()Lcom/twitter/database/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbfv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/twitter/database/generated/io;->d:Lcom/twitter/database/internal/m;

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/database/model/q;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/twitter/database/generated/io;->d()Lcom/twitter/database/internal/m;

    move-result-object v0

    return-object v0
.end method

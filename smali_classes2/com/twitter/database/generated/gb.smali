.class public final Lcom/twitter/database/generated/gb;
.super Lcom/twitter/database/internal/q;
.source "Twttr"

# interfaces
.implements Lbet;


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
            "Lbeu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/twitter/util/collection/au;->g()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/twitter/database/generated/gb;->b:Ljava/util/Collection;

    .line 60
    const/16 v0, 0xbe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "story_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "story_order"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "story_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "story_proof_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "story_proof_addl_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "data_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "data_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "story_is_read"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "story_meta_title"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "story_meta_subtitle"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "story_meta_query"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "story_meta_header_img_url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "story_source"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "story_impression_info"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "story_tag"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "status_groups_view__id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "status_groups_tweet_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "status_groups_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "status_groups_sender_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "status_groups_owner_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "status_groups_tag"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "status_groups_g_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "status_groups_ref_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "status_groups_is_read"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "status_groups_is_last"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "status_groups_timeline"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "status_groups_page"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "status_groups_updated_at"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "status_groups_pc"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "status_groups_g_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "status_groups_preview_draft_id"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "status_groups_preview_media"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "status_groups_tweet_pivots"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "statuses__id"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "statuses_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "statuses_author_id"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "statuses_content"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "statuses_r_content"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "statuses_source"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "statuses_created"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "statuses_in_r_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "statuses_in_r_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "statuses_in_r_screen_name"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "statuses_favorited"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "statuses_retweeted"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "statuses_favorite_count"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "statuses_retweet_count"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "statuses_view_count"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "statuses_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "statuses_latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "statuses_longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "statuses_place_data"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "statuses_entities"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "statuses_card"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "statuses_lang"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "statuses_supplemental_language"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "statuses_quoted_tweet_data"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "statuses_quoted_tweet_id"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "statuses_withheld_scope"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "card_state__id"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "card_state_card_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "card_state_card_id"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "card_state_card_state"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "users__id"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "users_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "users_username"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "users_name"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "users_description"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "users_description_entities"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "users_web_url"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "users_url_entities"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "users_bg_color"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "users_link_color"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "users_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "users_header_url"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "users_extended_profile_fields"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "users_location"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "users_structured_location"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "users_user_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "users_followers"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "users_fast_followers"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "users_friends"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "users_statuses"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "users_favorites"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "users_media_count"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "users_friendship"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "users_friendship_time"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "users_profile_created"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "users_updated"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "users_pinned_tweet_id"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "users_advertiser_type"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "users_business_profile_state"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "users_customer_service_state"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "users_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string/jumbo v2, "sender__id"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string/jumbo v2, "sender_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string/jumbo v2, "sender_username"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "sender_name"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string/jumbo v2, "sender_description"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string/jumbo v2, "sender_description_entities"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string/jumbo v2, "sender_web_url"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "sender_url_entities"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "sender_bg_color"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "sender_link_color"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "sender_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string/jumbo v2, "sender_header_url"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "sender_extended_profile_fields"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "sender_location"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "sender_structured_location"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "sender_user_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "sender_followers"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "sender_fast_followers"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v2, "sender_friends"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v2, "sender_statuses"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "sender_favorites"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "sender_media_count"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "sender_friendship"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "sender_friendship_time"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "sender_profile_created"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "sender_updated"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "sender_pinned_tweet_id"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "sender_advertiser_type"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "sender_business_profile_state"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string/jumbo v2, "sender_customer_service_state"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string/jumbo v2, "sender_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string/jumbo v2, "status_metadata__id"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string/jumbo v2, "status_metadata_owner_id"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string/jumbo v2, "status_metadata_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string/jumbo v2, "status_metadata_status_group"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string/jumbo v2, "status_metadata_status_group_tag"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string/jumbo v2, "status_metadata_soc_type"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string/jumbo v2, "status_metadata_soc_name"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string/jumbo v2, "status_metadata_soc_second_name"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string/jumbo v2, "status_metadata_soc_others_count"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string/jumbo v2, "status_metadata_soc_fav_count"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string/jumbo v2, "status_metadata_soc_rt_count"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string/jumbo v2, "status_metadata_reason_icon_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string/jumbo v2, "status_metadata_reason_text"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string/jumbo v2, "status_metadata_highlights"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string/jumbo v2, "u__id"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "u_user_groups_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string/jumbo v2, "u_user_groups_tag"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string/jumbo v2, "u_user_groups_rank"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string/jumbo v2, "u_user_groups_owner_id"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string/jumbo v2, "u_user_groups_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string/jumbo v2, "u_user_groups_is_last"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v2, "u_user_groups_pc"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string/jumbo v2, "u_user_groups_g_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string/jumbo v2, "u_users__id"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string/jumbo v2, "u_users_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string/jumbo v2, "u_users_username"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string/jumbo v2, "u_users_name"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string/jumbo v2, "u_users_description"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string/jumbo v2, "u_users_description_entities"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string/jumbo v2, "u_users_web_url"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string/jumbo v2, "u_users_url_entities"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string/jumbo v2, "u_users_bg_color"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string/jumbo v2, "u_users_link_color"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string/jumbo v2, "u_users_image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string/jumbo v2, "u_users_header_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string/jumbo v2, "u_users_extended_profile_fields"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string/jumbo v2, "u_users_location"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string/jumbo v2, "u_users_structured_location"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string/jumbo v2, "u_users_user_flags"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string/jumbo v2, "u_users_followers"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string/jumbo v2, "u_users_fast_followers"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string/jumbo v2, "u_users_friends"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string/jumbo v2, "u_users_statuses"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string/jumbo v2, "u_users_favorites"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string/jumbo v2, "u_users_media_count"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string/jumbo v2, "u_users_friendship"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string/jumbo v2, "u_users_friendship_time"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string/jumbo v2, "u_users_profile_created"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string/jumbo v2, "u_users_updated"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string/jumbo v2, "u_users_pinned_tweet_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string/jumbo v2, "u_users_advertiser_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string/jumbo v2, "u_users_business_profile_state"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string/jumbo v2, "u_users_customer_service_state"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string/jumbo v2, "u_users_hash"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string/jumbo v2, "u_user_metadata__id"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string/jumbo v2, "u_user_metadata_owner_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string/jumbo v2, "u_user_metadata_user_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string/jumbo v2, "u_user_metadata_user_group_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string/jumbo v2, "u_user_metadata_user_group_tag"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string/jumbo v2, "u_user_metadata_soc_type"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string/jumbo v2, "u_user_metadata_soc_name"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string/jumbo v2, "u_user_metadata_soc_follow_count"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string/jumbo v2, "u_user_metadata_user_title"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string/jumbo v2, "u_user_metadata_token"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/database/generated/gb;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/internal/f;)V
    .locals 2
    .annotation build Latx;
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/q;-><init>(Lcom/twitter/database/internal/f;)V

    .line 259
    new-instance v0, Lcom/twitter/database/generated/gn;

    iget-object v1, p0, Lcom/twitter/database/generated/gb;->f_:Lcom/twitter/database/internal/f;

    invoke-direct {v0, p0, v1}, Lcom/twitter/database/generated/gn;-><init>(Lcom/twitter/database/generated/gb;Lcom/twitter/database/internal/f;)V

    iput-object v0, p0, Lcom/twitter/database/generated/gb;->d:Lcom/twitter/database/internal/m;

    .line 260
    return-void
.end method

.method static synthetic e()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/twitter/database/generated/gb;->c:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const-string/jumbo v0, "stories_view"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    const-string/jumbo v0, "CREATE VIEW stories_view\n\tAS SELECT\n\t\tstories._id AS _id,\n\t\tstories.story_id AS story_id,\n\t\tstories.story_order AS story_order,\n\t\tstories.story_type AS story_type,\n\t\tstories.story_proof_type AS story_proof_type,\n\t\tstories.story_proof_addl_count AS story_proof_addl_count,\n\t\tstories.data_type AS data_type,\n\t\tstories.data_id AS data_id,\n\t\tstories.story_is_read AS story_is_read,\n\t\tstories.story_meta_title AS story_meta_title,\n\t\tstories.story_meta_subtitle AS story_meta_subtitle,\n\t\tstories.story_meta_query AS story_meta_query,\n\t\tstories.story_meta_header_img_url AS story_meta_header_img_url,\n\t\tstories.story_source AS story_source,\n\t\tstories.story_impression_info AS story_impression_info,\n\t\tstories.story_tag AS story_tag,\n\t\tstatus_groups_view._id AS status_groups_view__id,\n\t\tstatus_groups_view.status_groups_tweet_type AS status_groups_tweet_type,\n\t\tstatus_groups_view.status_groups_type AS status_groups_type,\n\t\tstatus_groups_view.status_groups_sender_id AS status_groups_sender_id,\n\t\tstatus_groups_view.status_groups_owner_id AS status_groups_owner_id,\n\t\tstatus_groups_view.status_groups_tag AS status_groups_tag,\n\t\tstatus_groups_view.status_groups_g_status_id AS status_groups_g_status_id,\n\t\tstatus_groups_view.status_groups_ref_id AS status_groups_ref_id,\n\t\tstatus_groups_view.status_groups_is_read AS status_groups_is_read,\n\t\tstatus_groups_view.status_groups_is_last AS status_groups_is_last,\n\t\tstatus_groups_view.status_groups_timeline AS status_groups_timeline,\n\t\tstatus_groups_view.status_groups_page AS status_groups_page,\n\t\tstatus_groups_view.status_groups_updated_at AS status_groups_updated_at,\n\t\tstatus_groups_view.status_groups_pc AS status_groups_pc,\n\t\tstatus_groups_view.status_groups_g_flags AS status_groups_g_flags,\n\t\tstatus_groups_view.status_groups_preview_draft_id AS status_groups_preview_draft_id,\n\t\tstatus_groups_view.status_groups_preview_media AS status_groups_preview_media,\n\t\tstatus_groups_view.status_groups_tweet_pivots AS status_groups_tweet_pivots,\n\t\tstatus_groups_view.statuses__id AS statuses__id,\n\t\tstatus_groups_view.statuses_status_id AS statuses_status_id,\n\t\tstatus_groups_view.statuses_author_id AS statuses_author_id,\n\t\tstatus_groups_view.statuses_content AS statuses_content,\n\t\tstatus_groups_view.statuses_r_content AS statuses_r_content,\n\t\tstatus_groups_view.statuses_source AS statuses_source,\n\t\tstatus_groups_view.statuses_created AS statuses_created,\n\t\tstatus_groups_view.statuses_in_r_user_id AS statuses_in_r_user_id,\n\t\tstatus_groups_view.statuses_in_r_status_id AS statuses_in_r_status_id,\n\t\tstatus_groups_view.statuses_in_r_screen_name AS statuses_in_r_screen_name,\n\t\tstatus_groups_view.statuses_favorited AS statuses_favorited,\n\t\tstatus_groups_view.statuses_retweeted AS statuses_retweeted,\n\t\tstatus_groups_view.statuses_favorite_count AS statuses_favorite_count,\n\t\tstatus_groups_view.statuses_retweet_count AS statuses_retweet_count,\n\t\tstatus_groups_view.statuses_view_count AS statuses_view_count,\n\t\tstatus_groups_view.statuses_flags AS statuses_flags,\n\t\tstatus_groups_view.statuses_latitude AS statuses_latitude,\n\t\tstatus_groups_view.statuses_longitude AS statuses_longitude,\n\t\tstatus_groups_view.statuses_place_data AS statuses_place_data,\n\t\tstatus_groups_view.statuses_entities AS statuses_entities,\n\t\tstatus_groups_view.statuses_card AS statuses_card,\n\t\tstatus_groups_view.statuses_lang AS statuses_lang,\n\t\tstatus_groups_view.statuses_supplemental_language AS statuses_supplemental_language,\n\t\tstatus_groups_view.statuses_quoted_tweet_data AS statuses_quoted_tweet_data,\n\t\tstatus_groups_view.statuses_quoted_tweet_id AS statuses_quoted_tweet_id,\n\t\tstatus_groups_view.statuses_withheld_scope AS statuses_withheld_scope,\n\t\tstatus_groups_view.card_state__id AS card_state__id,\n\t\tstatus_groups_view.card_state_card_status_id AS card_state_card_status_id,\n\t\tstatus_groups_view.card_state_card_id AS card_state_card_id,\n\t\tstatus_groups_view.card_state_card_state AS card_state_card_state,\n\t\tstatus_groups_view.users__id AS users__id,\n\t\tstatus_groups_view.users_user_id AS users_user_id,\n\t\tstatus_groups_view.users_username AS users_username,\n\t\tstatus_groups_view.users_name AS users_name,\n\t\tstatus_groups_view.users_description AS users_description,\n\t\tstatus_groups_view.users_description_entities AS users_description_entities,\n\t\tstatus_groups_view.users_web_url AS users_web_url,\n\t\tstatus_groups_view.users_url_entities AS users_url_entities,\n\t\tstatus_groups_view.users_bg_color AS users_bg_color,\n\t\tstatus_groups_view.users_link_color AS users_link_color,\n\t\tstatus_groups_view.users_image_url AS users_image_url,\n\t\tstatus_groups_view.users_header_url AS users_header_url,\n\t\tstatus_groups_view.users_extended_profile_fields AS users_extended_profile_fields,\n\t\tstatus_groups_view.users_location AS users_location,\n\t\tstatus_groups_view.users_structured_location AS users_structured_location,\n\t\tstatus_groups_view.users_user_flags AS users_user_flags,\n\t\tstatus_groups_view.users_followers AS users_followers,\n\t\tstatus_groups_view.users_fast_followers AS users_fast_followers,\n\t\tstatus_groups_view.users_friends AS users_friends,\n\t\tstatus_groups_view.users_statuses AS users_statuses,\n\t\tstatus_groups_view.users_favorites AS users_favorites,\n\t\tstatus_groups_view.users_media_count AS users_media_count,\n\t\tstatus_groups_view.users_friendship AS users_friendship,\n\t\tstatus_groups_view.users_friendship_time AS users_friendship_time,\n\t\tstatus_groups_view.users_profile_created AS users_profile_created,\n\t\tstatus_groups_view.users_updated AS users_updated,\n\t\tstatus_groups_view.users_pinned_tweet_id AS users_pinned_tweet_id,\n\t\tstatus_groups_view.users_advertiser_type AS users_advertiser_type,\n\t\tstatus_groups_view.users_business_profile_state AS users_business_profile_state,\n\t\tstatus_groups_view.users_customer_service_state AS users_customer_service_state,\n\t\tstatus_groups_view.users_hash AS users_hash,\n\t\tstatus_groups_view.sender__id AS sender__id,\n\t\tstatus_groups_view.sender_user_id AS sender_user_id,\n\t\tstatus_groups_view.sender_username AS sender_username,\n\t\tstatus_groups_view.sender_name AS sender_name,\n\t\tstatus_groups_view.sender_description AS sender_description,\n\t\tstatus_groups_view.sender_description_entities AS sender_description_entities,\n\t\tstatus_groups_view.sender_web_url AS sender_web_url,\n\t\tstatus_groups_view.sender_url_entities AS sender_url_entities,\n\t\tstatus_groups_view.sender_bg_color AS sender_bg_color,\n\t\tstatus_groups_view.sender_link_color AS sender_link_color,\n\t\tstatus_groups_view.sender_image_url AS sender_image_url,\n\t\tstatus_groups_view.sender_header_url AS sender_header_url,\n\t\tstatus_groups_view.sender_extended_profile_fields AS sender_extended_profile_fields,\n\t\tstatus_groups_view.sender_location AS sender_location,\n\t\tstatus_groups_view.sender_structured_location AS sender_structured_location,\n\t\tstatus_groups_view.sender_user_flags AS sender_user_flags,\n\t\tstatus_groups_view.sender_followers AS sender_followers,\n\t\tstatus_groups_view.sender_fast_followers AS sender_fast_followers,\n\t\tstatus_groups_view.sender_friends AS sender_friends,\n\t\tstatus_groups_view.sender_statuses AS sender_statuses,\n\t\tstatus_groups_view.sender_favorites AS sender_favorites,\n\t\tstatus_groups_view.sender_media_count AS sender_media_count,\n\t\tstatus_groups_view.sender_friendship AS sender_friendship,\n\t\tstatus_groups_view.sender_friendship_time AS sender_friendship_time,\n\t\tstatus_groups_view.sender_profile_created AS sender_profile_created,\n\t\tstatus_groups_view.sender_updated AS sender_updated,\n\t\tstatus_groups_view.sender_pinned_tweet_id AS sender_pinned_tweet_id,\n\t\tstatus_groups_view.sender_advertiser_type AS sender_advertiser_type,\n\t\tstatus_groups_view.sender_business_profile_state AS sender_business_profile_state,\n\t\tstatus_groups_view.sender_customer_service_state AS sender_customer_service_state,\n\t\tstatus_groups_view.sender_hash AS sender_hash,\n\t\tstatus_groups_view.status_metadata__id AS status_metadata__id,\n\t\tstatus_groups_view.status_metadata_owner_id AS status_metadata_owner_id,\n\t\tstatus_groups_view.status_metadata_status_id AS status_metadata_status_id,\n\t\tstatus_groups_view.status_metadata_status_group AS status_metadata_status_group,\n\t\tstatus_groups_view.status_metadata_status_group_tag AS status_metadata_status_group_tag,\n\t\tstatus_groups_view.status_metadata_soc_type AS status_metadata_soc_type,\n\t\tstatus_groups_view.status_metadata_soc_name AS status_metadata_soc_name,\n\t\tstatus_groups_view.status_metadata_soc_second_name AS status_metadata_soc_second_name,\n\t\tstatus_groups_view.status_metadata_soc_others_count AS status_metadata_soc_others_count,\n\t\tstatus_groups_view.status_metadata_soc_fav_count AS status_metadata_soc_fav_count,\n\t\tstatus_groups_view.status_metadata_soc_rt_count AS status_metadata_soc_rt_count,\n\t\tstatus_groups_view.status_metadata_reason_icon_type AS status_metadata_reason_icon_type,\n\t\tstatus_groups_view.status_metadata_reason_text AS status_metadata_reason_text,\n\t\tstatus_groups_view.status_metadata_highlights AS status_metadata_highlights,\n\t\tu._id AS u__id,\n\t\tu.user_groups_type AS u_user_groups_type,\n\t\tu.user_groups_tag AS u_user_groups_tag,\n\t\tu.user_groups_rank AS u_user_groups_rank,\n\t\tu.user_groups_owner_id AS u_user_groups_owner_id,\n\t\tu.user_groups_user_id AS u_user_groups_user_id,\n\t\tu.user_groups_is_last AS u_user_groups_is_last,\n\t\tu.user_groups_pc AS u_user_groups_pc,\n\t\tu.user_groups_g_flags AS u_user_groups_g_flags,\n\t\tu.users__id AS u_users__id,\n\t\tu.users_user_id AS u_users_user_id,\n\t\tu.users_username AS u_users_username,\n\t\tu.users_name AS u_users_name,\n\t\tu.users_description AS u_users_description,\n\t\tu.users_description_entities AS u_users_description_entities,\n\t\tu.users_web_url AS u_users_web_url,\n\t\tu.users_url_entities AS u_users_url_entities,\n\t\tu.users_bg_color AS u_users_bg_color,\n\t\tu.users_link_color AS u_users_link_color,\n\t\tu.users_image_url AS u_users_image_url,\n\t\tu.users_header_url AS u_users_header_url,\n\t\tu.users_extended_profile_fields AS u_users_extended_profile_fields,\n\t\tu.users_location AS u_users_location,\n\t\tu.users_structured_location AS u_users_structured_location,\n\t\tu.users_user_flags AS u_users_user_flags,\n\t\tu.users_followers AS u_users_followers,\n\t\tu.users_fast_followers AS u_users_fast_followers,\n\t\tu.users_friends AS u_users_friends,\n\t\tu.users_statuses AS u_users_statuses,\n\t\tu.users_favorites AS u_users_favorites,\n\t\tu.users_media_count AS u_users_media_count,\n\t\tu.users_friendship AS u_users_friendship,\n\t\tu.users_friendship_time AS u_users_friendship_time,\n\t\tu.users_profile_created AS u_users_profile_created,\n\t\tu.users_updated AS u_users_updated,\n\t\tu.users_pinned_tweet_id AS u_users_pinned_tweet_id,\n\t\tu.users_advertiser_type AS u_users_advertiser_type,\n\t\tu.users_business_profile_state AS u_users_business_profile_state,\n\t\tu.users_customer_service_state AS u_users_customer_service_state,\n\t\tu.users_hash AS u_users_hash,\n\t\tu.user_metadata__id AS u_user_metadata__id,\n\t\tu.user_metadata_owner_id AS u_user_metadata_owner_id,\n\t\tu.user_metadata_user_id AS u_user_metadata_user_id,\n\t\tu.user_metadata_user_group_type AS u_user_metadata_user_group_type,\n\t\tu.user_metadata_user_group_tag AS u_user_metadata_user_group_tag,\n\t\tu.user_metadata_soc_type AS u_user_metadata_soc_type,\n\t\tu.user_metadata_soc_name AS u_user_metadata_soc_name,\n\t\tu.user_metadata_soc_follow_count AS u_user_metadata_soc_follow_count,\n\t\tu.user_metadata_user_title AS u_user_metadata_user_title,\n\t\tu.user_metadata_token AS u_user_metadata_token\n\tFROM stories\n\tLEFT OUTER JOIN status_groups_view AS status_groups_view ON data_type=4 AND data_id=status_groups_g_status_id AND status_groups_type=29 AND story_order=status_groups_tag\n\tLEFT OUTER JOIN user_groups_view AS u ON data_type IN (2,3) AND data_id=user_groups_user_id AND user_groups_type=34 AND story_order=user_groups_tag;"

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
    .line 471
    sget-object v0, Lcom/twitter/database/generated/gb;->b:Ljava/util/Collection;

    return-object v0
.end method

.method public final d()Lcom/twitter/database/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/database/internal/m",
            "<",
            "Lbeu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/twitter/database/generated/gb;->d:Lcom/twitter/database/internal/m;

    return-object v0
.end method

.method public synthetic f()Lcom/twitter/database/model/q;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/twitter/database/generated/gb;->d()Lcom/twitter/database/internal/m;

    move-result-object v0

    return-object v0
.end method

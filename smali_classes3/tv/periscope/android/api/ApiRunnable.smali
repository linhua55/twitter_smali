.class public Ltv/periscope/android/api/ApiRunnable;
.super Ldoc;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldoc",
        "<",
        "Ltv/periscope/android/event/ApiEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_CODE_ACCESS_CHAT:I = 0x42

.field public static final ACTION_CODE_ACCESS_VIDEO:I = 0x41

.field public static final ACTION_CODE_ACTIVE_JUROR:I = 0x4b

.field public static final ACTION_CODE_ADJUST_BROADCAST_RANK:I = 0x3a

.field public static final ACTION_CODE_ASSOCIATE_DIGITS_ACCOUNT:I = 0x51

.field public static final ACTION_CODE_AUTHORIZE_TOKEN:I = 0x47

.field public static final ACTION_CODE_BATCH_FOLLOW:I = 0x15

.field public static final ACTION_CODE_BLOCK:I = 0x23

.field public static final ACTION_CODE_BROADCAST_META:I = 0x36

.field public static final ACTION_CODE_BROADCAST_RANK:I = 0x33

.field public static final ACTION_CODE_BROADCAST_SEARCH:I = 0x45

.field public static final ACTION_CODE_BROADCAST_SUMMARY:I = 0x22

.field public static final ACTION_CODE_CHANNELS_SEARCH:I = 0x50

.field public static final ACTION_CODE_CREATE_BROADCAST:I = 0x4e

.field public static final ACTION_CODE_DEACTIVATE_ACCOUNT:I = 0x4f

.field public static final ACTION_CODE_DELETE_BROADCAST:I = 0x2b

.field public static final ACTION_CODE_END_BROADCAST:I = 0x1f

.field public static final ACTION_CODE_END_WATCHING:I = 0x1c

.field public static final ACTION_CODE_FIND_FRIENDS:I = 0xe

.field public static final ACTION_CODE_FOLLOW:I = 0x8

.field public static final ACTION_CODE_GET_BLOCKED:I = 0x25

.field public static final ACTION_CODE_GET_BROADCASTS:I = 0x13

.field public static final ACTION_CODE_GET_BROADCASTS_FOR_CHANNEL:I = 0x4c

.field public static final ACTION_CODE_GET_BROADCASTS_FOR_TELEPORT:I = 0x40

.field public static final ACTION_CODE_GET_BROADCAST_ID_FROM_URL:I = 0x27

.field public static final ACTION_CODE_GET_BROADCAST_SHARE_URL:I = 0x21

.field public static final ACTION_CODE_GET_BROADCAST_TRAILER:I = 0x52

.field public static final ACTION_CODE_GET_BROADCAST_VIEWERS:I = 0x14

.field public static final ACTION_CODE_GET_CHANNEL_INFO:I = 0x53

.field public static final ACTION_CODE_GET_FOLLOWERS:I = 0x6

.field public static final ACTION_CODE_GET_FOLLOWERS_BY_ID:I = 0xc

.field public static final ACTION_CODE_GET_FOLLOWING:I = 0x7

.field public static final ACTION_CODE_GET_FOLLOWING_BY_ID:I = 0xb

.field public static final ACTION_CODE_GET_GLOBAL_BROADCAST_FEED:I = 0x4

.field public static final ACTION_CODE_GET_MUTUAL_FOLLOWS:I = 0x3c

.field public static final ACTION_CODE_GET_RANK_PARAMETERS:I = 0x31

.field public static final ACTION_CODE_GET_SETTINGS:I = 0x1e

.field public static final ACTION_CODE_GET_SUGGESTED_CHANNELS:I = 0x46

.field public static final ACTION_CODE_GET_TRENDING_LOCATIONS:I = 0x48

.field public static final ACTION_CODE_GET_USER:I = 0x5

.field public static final ACTION_CODE_GET_USER_BY_ID:I = 0xa

.field public static final ACTION_CODE_GET_USER_BY_USERNAME:I = 0x3d

.field public static final ACTION_CODE_HELLO:I = 0x3b

.field public static final ACTION_CODE_MAIN_FEATURED:I = 0x12

.field public static final ACTION_CODE_MAIN_FOLLOWING:I = 0x11

.field public static final ACTION_CODE_MAIN_GLOBAL_MAP:I = 0x34

.field public static final ACTION_CODE_MARK_BROADCAST_PERSISTENT:I = 0x4d

.field public static final ACTION_CODE_MUTE:I = 0x37

.field public static final ACTION_CODE_PING_BROADCAST:I = 0x20

.field public static final ACTION_CODE_PING_WATCHING:I = 0x1b

.field public static final ACTION_CODE_PLAYBACK_META:I = 0x35

.field public static final ACTION_CODE_PUBLIC_ACCESS_CHAT:I = 0xd2

.field public static final ACTION_CODE_PUBLIC_ACCESS_VIDEO:I = 0xd1

.field public static final ACTION_CODE_PUBLIC_BLOCK:I = 0xd0

.field public static final ACTION_CODE_PUBLIC_END_REPLAY_VIEWED:I = 0xcd

.field public static final ACTION_CODE_PUBLIC_END_WATCHING:I = 0xcb

.field public static final ACTION_CODE_PUBLIC_GET_BROADCASTS:I = 0xc8

.field public static final ACTION_CODE_PUBLIC_MARK_ABUSE:I = 0xcf

.field public static final ACTION_CODE_PUBLIC_PING_REPLAY_VIEWED:I = 0xd4

.field public static final ACTION_CODE_PUBLIC_PING_WATCHING:I = 0xca

.field public static final ACTION_CODE_PUBLIC_REPLAY_THUMBNAIL_PLAYLIST:I = 0xce

.field public static final ACTION_CODE_PUBLIC_REPLAY_VIEWED:I = 0xcc

.field public static final ACTION_CODE_PUBLIC_START_WATCHING:I = 0xd3

.field public static final ACTION_CODE_PUBLISH_BROADCAST:I = 0x1a

.field public static final ACTION_CODE_REPLAY_THUMBNAIL_PLAYLIST:I = 0x3e

.field public static final ACTION_CODE_REPORT_BROADCAST:I = 0x29

.field public static final ACTION_CODE_REPORT_COMMENT:I = 0x49

.field public static final ACTION_CODE_SET_RANK_PARAMETERS:I = 0x32

.field public static final ACTION_CODE_SET_SETTINGS:I = 0x1d

.field public static final ACTION_CODE_SHARE_BROADCAST:I = 0x26

.field public static final ACTION_CODE_START_WATCHING:I = 0x43

.field public static final ACTION_CODE_SUPPORTED_LANGUAGES:I = 0x39

.field public static final ACTION_CODE_TWITTER_LOGIN:I = 0x1

.field public static final ACTION_CODE_TWITTER_TOKEN_LOGIN:I = 0x54

.field public static final ACTION_CODE_UNBAN:I = 0x3f

.field public static final ACTION_CODE_UNBLOCK:I = 0x24

.field public static final ACTION_CODE_UNFOLLOW:I = 0x9

.field public static final ACTION_CODE_UNKNOWN:I = -0x1

.field public static final ACTION_CODE_UNMUTE:I = 0x38

.field public static final ACTION_CODE_UPDATE_PROFILE_DESCRIPTION:I = 0x2e

.field public static final ACTION_CODE_UPDATE_PROFILE_DISPLAY_NAME:I = 0x2f

.field public static final ACTION_CODE_UPLOAD_PROFILE_IMAGE:I = 0x2d

.field public static final ACTION_CODE_UPLOAD_TEST:I = 0x28

.field public static final ACTION_CODE_USER_BROADCASTS:I = 0x2c

.field public static final ACTION_CODE_USER_SEARCH:I = 0xf

.field public static final ACTION_CODE_VALIDATE_USERNAME:I = 0x2

.field public static final ACTION_CODE_VERIFY_USERNAME:I = 0x3

.field public static final ACTION_CODE_VOTE:I = 0x4a

.field public static final BACKOFF_INTERVAL_NONE:J = 0x0L

.field private static final DEADLINE_MS:J

.field public static final DEFAULT_BACKOFF_MS:J = 0x3e8L

.field public static final DEFAULT_RETRIES:I = 0x5

.field public static final EXTRA_ABUSE_TYPE:Ljava/lang/String; = "e_abuse_type"

.field public static final EXTRA_AUTHORIZE_SERVICE_NAME:Ljava/lang/String; = "e_service_name"

.field public static final EXTRA_BACKGROUND:Ljava/lang/String; = "e_background"

.field public static final EXTRA_BIT_RATE:Ljava/lang/String; = "e_bit_rate"

.field public static final EXTRA_BROADCAST_ID:Ljava/lang/String; = "e_broadcast_id"

.field public static final EXTRA_CACHE_DIR:Ljava/lang/String; = "e_cache_dir"

.field public static final EXTRA_CAMERA_ROTATION:Ljava/lang/String; = "e_camera_rotation"

.field public static final EXTRA_CHANNEL:Ljava/lang/String; = "e_channel"

.field public static final EXTRA_COMPLETION:Ljava/lang/String; = "e_completion"

.field public static final EXTRA_COOKIE:Ljava/lang/String; = "e_cookie"

.field public static final EXTRA_COUNT:Ljava/lang/String; = "e_count"

.field public static final EXTRA_DECAY_COEFFICIENT:Ljava/lang/String; = "e_rank_decay"

.field public static final EXTRA_DECAY_HALF_LIFE:Ljava/lang/String; = "e_rank_decay_half_life"

.field public static final EXTRA_DECREASE_RANK:Ljava/lang/String; = "e_decrease_rank"

.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "e_description"

.field public static final EXTRA_DIGITS_IDS:Ljava/lang/String; = "e_digits_ids"

.field public static final EXTRA_DISPLAY_NAME:Ljava/lang/String; = "e_display_name"

.field public static final EXTRA_DURATION:Ljava/lang/String; = "e_duration"

.field public static final EXTRA_EVENT_TYPE:Ljava/lang/String; = "e_event_type"

.field public static final EXTRA_FILE_DIR:Ljava/lang/String; = "e_file_dir"

.field public static final EXTRA_FOLLOWING_ONLY_CHAT:Ljava/lang/String; = "e_following_only_chat"

.field public static final EXTRA_HAS_LOCATION:Ljava/lang/String; = "e_has_loc"

.field public static final EXTRA_HAS_MODERATION:Ljava/lang/String; = "e_has_moderation"

.field public static final EXTRA_HEIGHT:Ljava/lang/String; = "extra_height"

.field public static final EXTRA_IDS:Ljava/lang/String; = "extra_ids"

.field public static final EXTRA_INCREASE_RANK:Ljava/lang/String; = "e_increase_rank"

.field public static final EXTRA_INSTALL_ID:Ljava/lang/String; = "e_install_id"

.field public static final EXTRA_IS_AUTODELETE_BROADCAST_ENABLED:Ljava/lang/String; = "e_autodelete_enabled"

.field public static final EXTRA_IS_AUTOSAVE_ENABLED:Ljava/lang/String; = "e_autosave_enabled"

.field public static final EXTRA_IS_BROADCAST_MODERATION_ENABLED:Ljava/lang/String; = "e_broadcast_moderation_enabled"

.field public static final EXTRA_IS_FIND_MY_PROFILE_ENABLED:Ljava/lang/String; = "e_find_my_profile_enabled"

.field public static final EXTRA_IS_USER_FOLLOW_ENABLED:Ljava/lang/String; = "e_user_follow_enabled"

.field public static final EXTRA_IS_VIEWER_MODERATION_ENABLED:Ljava/lang/String; = "e_viewer_moderation_enabled"

.field public static final EXTRA_LANGUAGES:Ljava/lang/String; = "e_languages"

.field public static final EXTRA_LAT:Ljava/lang/String; = "e_lat"

.field public static final EXTRA_LOCALE:Ljava/lang/String; = "e_locale"

.field public static final EXTRA_LOCKED_IDs:Ljava/lang/String; = "e_locked_ids"

.field public static final EXTRA_LOGGER_NAME:Ljava/lang/String; = "e_logger_name"

.field public static final EXTRA_LONG:Ljava/lang/String; = "e_long"

.field public static final EXTRA_MY_USER_ID:Ljava/lang/String; = "e_my_user_id"

.field public static final EXTRA_NUM_COMMENTS:Ljava/lang/String; = "e_n_comments"

.field public static final EXTRA_NUM_HEARTS:Ljava/lang/String; = "e_num_hearts"

.field public static final EXTRA_ONLY_PUBLIC_PUBLISH:Ljava/lang/String; = "e_only_public_publish"

.field public static final EXTRA_PERSISTENT:Ljava/lang/String; = "persistent"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "e_phone_number"

.field public static final EXTRA_POINT_1_LAT:Ljava/lang/String; = "e_point_1_lat"

.field public static final EXTRA_POINT_1_LNG:Ljava/lang/String; = "e_point_1_lng"

.field public static final EXTRA_POINT_2_LAT:Ljava/lang/String; = "e_point_2_lat"

.field public static final EXTRA_POINT_2_LNG:Ljava/lang/String; = "e_point_2_lng"

.field public static final EXTRA_QUERY:Ljava/lang/String; = "extra_query"

.field public static final EXTRA_REASON:Ljava/lang/String; = "e_reason"

.field public static final EXTRA_REGION:Ljava/lang/String; = "e_region"

.field public static final EXTRA_REPORT_CORTEX_SCORE_COEFFICIENT:Ljava/lang/String; = "e_rank_cortex_score"

.field public static final EXTRA_REPORT_HAS_LOCATION_COEFFICIENT:Ljava/lang/String; = "e_rank_has_location"

.field public static final EXTRA_REPORT_RATIO_COEFFICIENT:Ljava/lang/String; = "e_rank_report_ratio"

.field public static final EXTRA_REPORT_SHARES_COEFFICIENT:Ljava/lang/String; = "e_rank_shares"

.field public static final EXTRA_SECRET_KEY:Ljava/lang/String; = "e_secret_key"

.field public static final EXTRA_SECRET_TOKEN:Ljava/lang/String; = "e_secret_token"

.field public static final EXTRA_SERVICE_AUTORIZATION_TOKEN:Ljava/lang/String; = "e_service_auth_token"

.field public static final EXTRA_SERVICE_CHANNEL_ID:Ljava/lang/String; = "e_service_channel_id"

.field public static final EXTRA_SERVICE_CHANNEL_NAME:Ljava/lang/String; = "e_service_channel_name"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "e_session_id"

.field public static final EXTRA_SESSION_TYPE:Ljava/lang/String; = "e_session_type"

.field public static final EXTRA_SIGN_UP:Ljava/lang/String; = "e_sign_up"

.field public static final EXTRA_SINCE:Ljava/lang/String; = "e_since"

.field public static final EXTRA_STATS:Ljava/lang/String; = "e_stats"

.field public static final EXTRA_STICKINESS_COEFFICIENT:Ljava/lang/String; = "e_rank_stickiness"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "e_title"

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "e_token"

.field public static final EXTRA_TRACKING_AUTOPLAY:Ljava/lang/String; = "e_autoplay"

.field public static final EXTRA_UNLIMITED_CHAT:Ljava/lang/String; = "e_unlimited_chat"

.field public static final EXTRA_USERNAME:Ljava/lang/String; = "e_username"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "e_user_id"

.field public static final EXTRA_USER_IDS:Ljava/lang/String; = "e_user_ids"

.field public static final EXTRA_USE_ML:Ljava/lang/String; = "e_use_ml"

.field public static final EXTRA_USE_PERSONAL:Ljava/lang/String; = "e_use_personal"

.field public static final EXTRA_VERIFIED_COEFFICIENT:Ljava/lang/String; = "e_rank_verified"

.field public static final EXTRA_VIEWERS_COUNT_COEFFICIENT:Ljava/lang/String; = "e_rank_viewers"

.field public static final EXTRA_VIEWER_MODERATION:Ljava/lang/String; = "e_viewer_moderation"

.field public static final EXTRA_WIDTH:Ljava/lang/String; = "extra_width"

.field public static final MAX_BATCH_FOLLOW:I = 0x64

.field public static final MAX_GET_BROADCASTS:I = 0x64

.field public static final NUM_RETRIES_NONE:I = 0x0

.field private static final PROFILE_IMAGE_FILENAME:Ljava/lang/String; = "image.jpeg"

.field private static final TAG:Ljava/lang/String; = "PsApi"

.field private static final UPLOAD_TEST_SIZE:I = 0x3d090


# instance fields
.field private final mActionCode:I

.field private final mBundle:Landroid/os/Bundle;

.field private final mChannelsService:Ltv/periscope/android/api/service/channels/ChannelsService;

.field private final mEventBus:Lde/greenrobot/event/c;

.field private final mPublicService:Ltv/periscope/android/api/PublicApiService;

.field private final mRequest:Ltv/periscope/android/api/ApiRequest;

.field private final mRequestId:Ljava/lang/String;

.field private final mSafetyService:Ltv/periscope/android/api/service/safety/SafetyService;

.field private final mService:Ltv/periscope/android/api/ApiService;

.field private final mSigner:Ltv/periscope/android/signer/SignerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 242
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ltv/periscope/android/api/ApiRunnable;->DEADLINE_MS:J

    return-void
.end method

.method constructor <init>(Lde/greenrobot/event/c;Ltv/periscope/android/api/ApiService;Ltv/periscope/android/api/PublicApiService;Ltv/periscope/android/signer/SignerService;Ltv/periscope/android/api/service/channels/ChannelsService;Ltv/periscope/android/api/service/safety/SafetyService;ILjava/lang/String;Ltv/periscope/android/api/ApiRequest;Landroid/os/Bundle;IJ)V
    .locals 2

    .prologue
    .line 358
    sget-wide v0, Ltv/periscope/android/api/ApiRunnable;->DEADLINE_MS:J

    invoke-direct {p0, v0, v1}, Ldoc;-><init>(J)V

    .line 359
    iput-object p1, p0, Ltv/periscope/android/api/ApiRunnable;->mEventBus:Lde/greenrobot/event/c;

    .line 360
    iput-object p2, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    .line 361
    iput-object p3, p0, Ltv/periscope/android/api/ApiRunnable;->mPublicService:Ltv/periscope/android/api/PublicApiService;

    .line 362
    iput-object p4, p0, Ltv/periscope/android/api/ApiRunnable;->mSigner:Ltv/periscope/android/signer/SignerService;

    .line 363
    iput-object p5, p0, Ltv/periscope/android/api/ApiRunnable;->mChannelsService:Ltv/periscope/android/api/service/channels/ChannelsService;

    .line 364
    iput-object p6, p0, Ltv/periscope/android/api/ApiRunnable;->mSafetyService:Ltv/periscope/android/api/service/safety/SafetyService;

    .line 365
    iput p7, p0, Ltv/periscope/android/api/ApiRunnable;->mActionCode:I

    .line 366
    iput-object p8, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    .line 367
    iput-object p9, p0, Ltv/periscope/android/api/ApiRunnable;->mRequest:Ltv/periscope/android/api/ApiRequest;

    .line 368
    iput-object p10, p0, Ltv/periscope/android/api/ApiRunnable;->mBundle:Landroid/os/Bundle;

    .line 369
    return-void
.end method

.method static synthetic access$000(Ltv/periscope/android/api/ApiRunnable;[Ljava/io/File;)Lretrofit/mime/TypedInput;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ltv/periscope/android/api/ApiRunnable;->newLogFileForUpload([Ljava/io/File;)Lretrofit/mime/TypedInput;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ltv/periscope/android/api/ApiRunnable;)Ltv/periscope/android/api/ApiService;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    return-object v0
.end method

.method static synthetic access$200(Ltv/periscope/android/api/ApiRunnable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method private accessChat(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1358
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1359
    const-string/jumbo v0, "e_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1360
    const-string/jumbo v1, "e_viewer_moderation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1361
    const-string/jumbo v2, "e_unlimited_chat"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1362
    new-instance v3, Ltv/periscope/android/api/AccessChatRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/AccessChatRequest;-><init>()V

    .line 1363
    const-string/jumbo v4, "e_cookie"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ltv/periscope/android/api/AccessChatRequest;->cookie:Ljava/lang/String;

    .line 1364
    iput-object v0, v3, Ltv/periscope/android/api/AccessChatRequest;->chatToken:Ljava/lang/String;

    .line 1365
    iput-boolean v2, v3, Ltv/periscope/android/api/AccessChatRequest;->unlimitedChat:Z

    .line 1366
    iput-boolean v1, v3, Ltv/periscope/android/api/AccessChatRequest;->viewerModeration:Z

    .line 1368
    :try_start_0
    const-string/jumbo v1, "PsApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accessing chat for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->accessChat(Ltv/periscope/android/api/AccessChatRequest;)Ltv/periscope/android/api/AccessChatResponse;

    move-result-object v4

    .line 1370
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "accessChat succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->r:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-virtual {v4}, Ltv/periscope/android/api/AccessChatResponse;->create()Ltv/periscope/model/u;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    :goto_0
    return-object v0

    .line 1372
    :catch_0
    move-exception v4

    .line 1373
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "accessChat failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1374
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->r:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private accessChatPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1795
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1796
    new-instance v3, Ltv/periscope/android/api/AccessChatPublicRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/AccessChatPublicRequest;-><init>()V

    .line 1797
    const-string/jumbo v0, "e_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1798
    const-string/jumbo v1, "e_install_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/AccessChatPublicRequest;->installId:Ljava/lang/String;

    .line 1799
    iput-object v0, v3, Ltv/periscope/android/api/AccessChatPublicRequest;->chatToken:Ljava/lang/String;

    .line 1801
    :try_start_0
    const-string/jumbo v1, "PsApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accessing public chat for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mPublicService:Ltv/periscope/android/api/PublicApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/PublicApiService;->getAccessChatPublic(Ltv/periscope/android/api/AccessChatPublicRequest;)Ltv/periscope/android/api/AccessChatResponse;

    move-result-object v4

    .line 1803
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "accessChatPublic succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->r:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-virtual {v4}, Ltv/periscope/android/api/AccessChatResponse;->create()Ltv/periscope/model/u;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1807
    :goto_0
    return-object v0

    .line 1805
    :catch_0
    move-exception v4

    .line 1806
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "accessChatPublic failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1807
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->r:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private accessVideo(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1338
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1339
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1340
    const-string/jumbo v1, "e_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1341
    new-instance v3, Ltv/periscope/android/api/AccessVideoRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/AccessVideoRequest;-><init>()V

    .line 1342
    const-string/jumbo v2, "e_cookie"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Ltv/periscope/android/api/AccessVideoRequest;->cookie:Ljava/lang/String;

    .line 1343
    iput-object v1, v3, Ltv/periscope/android/api/AccessVideoRequest;->lifeCycleToken:Ljava/lang/String;

    .line 1344
    iput-object v0, v3, Ltv/periscope/android/api/AccessVideoRequest;->broadcastId:Ljava/lang/String;

    .line 1346
    :try_start_0
    const-string/jumbo v1, "PsApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accessing video for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->accessVideo(Ltv/periscope/android/api/AccessVideoRequest;)Ltv/periscope/android/api/AccessVideoResponse;

    move-result-object v4

    .line 1348
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "accessVideo succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->q:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-virtual {v4}, Ltv/periscope/android/api/AccessVideoResponse;->create()Ltv/periscope/model/ac;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :goto_0
    return-object v0

    .line 1350
    :catch_0
    move-exception v4

    .line 1351
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "accessVideo failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1352
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->q:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private accessVideoPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 8

    .prologue
    .line 1761
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1765
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1766
    const-string/jumbo v1, "e_install_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1767
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1768
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1769
    new-instance v4, Ltv/periscope/android/api/GetBroadcastsPublicRequest;

    invoke-direct {v4}, Ltv/periscope/android/api/GetBroadcastsPublicRequest;-><init>()V

    .line 1770
    iput-object v1, v4, Ltv/periscope/android/api/GetBroadcastsPublicRequest;->installId:Ljava/lang/String;

    .line 1771
    iput-object v2, v4, Ltv/periscope/android/api/GetBroadcastsPublicRequest;->ids:Ljava/util/ArrayList;

    .line 1773
    new-instance v3, Ltv/periscope/android/api/AccessVideoPublicRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/AccessVideoPublicRequest;-><init>()V

    .line 1774
    iput-object v1, v3, Ltv/periscope/android/api/AccessVideoPublicRequest;->installId:Ljava/lang/String;

    .line 1775
    iput-object v0, v3, Ltv/periscope/android/api/AccessVideoPublicRequest;->broadcastId:Ljava/lang/String;

    .line 1777
    :try_start_0
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mPublicService:Ltv/periscope/android/api/PublicApiService;

    invoke-interface {v1, v4}, Ltv/periscope/android/api/PublicApiService;->getBroadcastsPublic(Ltv/periscope/android/api/GetBroadcastsPublicRequest;)Ljava/util/List;

    move-result-object v1

    .line 1778
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1779
    const-string/jumbo v2, "PsApi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "accessing public video  for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mPublicService:Ltv/periscope/android/api/PublicApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/PublicApiService;->getAccessVideoPublic(Ltv/periscope/android/api/AccessVideoPublicRequest;)Ltv/periscope/android/api/AccessVideoResponse;

    move-result-object v4

    .line 1781
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsBroadcast;

    iput-object v0, v4, Ltv/periscope/android/api/AccessVideoResponse;->broadcast:Ltv/periscope/android/api/PsBroadcast;

    .line 1782
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "accessVideoPublic succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->q:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-virtual {v4}, Ltv/periscope/android/api/AccessVideoResponse;->create()Ltv/periscope/model/ac;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V

    .line 1790
    :goto_0
    return-object v0

    .line 1785
    :cond_0
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->q:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    const-string/jumbo v4, "getBroadcastsPublic"

    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "accessVideoPublic returned no results"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v6}, Lretrofit/RetrofitError;->unexpectedError(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1788
    :catch_0
    move-exception v4

    .line 1789
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "accessVideoPublic failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1790
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->q:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private activeJuror(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 14

    .prologue
    .line 1941
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1942
    const-string/jumbo v0, "e_service_auth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1943
    const-string/jumbo v1, "tv.periscope.android.api.service.safety.EXTRA_ACTIVE_JUROR_REQUEST"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Lorg/parceler/bu;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/periscope/android/api/service/safety/ActiveJurorRequest;

    .line 1945
    :try_start_0
    invoke-direct {p0, v0}, Ltv/periscope/android/api/ApiRunnable;->verifyAuthToken(Ljava/lang/String;)V

    .line 1946
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mSafetyService:Ltv/periscope/android/api/service/safety/SafetyService;

    invoke-interface {v1, v0, v3}, Ltv/periscope/android/api/service/safety/SafetyService;->juror(Ljava/lang/String;Ltv/periscope/android/api/service/safety/ActiveJurorRequest;)Ltv/periscope/android/api/service/safety/ActiveJurorResponse;

    move-result-object v4

    .line 1947
    new-instance v0, Ltv/periscope/android/event/c;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->an:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1949
    :goto_0
    return-object v0

    .line 1948
    :catch_0
    move-exception v11

    .line 1949
    new-instance v6, Ltv/periscope/android/event/c;

    sget-object v7, Ltv/periscope/android/event/ApiEvent$Type;->an:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v8, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    sget-object v10, Ltv/periscope/android/api/BackendServiceName;->SAFETY:Ltv/periscope/android/api/BackendServiceName;

    move-object v9, v3

    move v12, v5

    move-object v13, p0

    invoke-direct/range {v6 .. v13}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Lretrofit/RetrofitError;ZLtv/periscope/android/api/ApiRunnable;)V

    move-object v0, v6

    goto :goto_0
.end method

.method private adjustBroadcastRank(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1658
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1659
    new-instance v3, Ltv/periscope/android/api/AdjustBroadcastRankRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/AdjustBroadcastRankRequest;-><init>()V

    .line 1660
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/AdjustBroadcastRankRequest;->cookie:Ljava/lang/String;

    .line 1661
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/AdjustBroadcastRankRequest;->broadcastId:Ljava/lang/String;

    .line 1662
    const-string/jumbo v0, "e_increase_rank"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Ltv/periscope/android/api/AdjustBroadcastRankRequest;->increase:Z

    .line 1663
    const-string/jumbo v0, "e_decrease_rank"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Ltv/periscope/android/api/AdjustBroadcastRankRequest;->decrease:Z

    .line 1665
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->adjustBroadcastRank(Ltv/periscope/android/api/AdjustBroadcastRankRequest;)Ltv/periscope/android/api/AdjustBroadcastRankResponse;

    move-result-object v4

    .line 1666
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->L:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    :goto_0
    return-object v0

    .line 1667
    :catch_0
    move-exception v4

    .line 1668
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->L:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private block(Ljava/lang/String;Ltv/periscope/android/api/BlockRequest;Z)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1691
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, p2}, Ltv/periscope/android/api/ApiService;->block(Ltv/periscope/android/api/BlockRequest;)Ltv/periscope/android/api/BlockResponse;

    move-result-object v4

    .line 1692
    iget-object v0, p2, Ltv/periscope/android/api/BlockRequest;->userId:Ljava/lang/String;

    iput-object v0, v4, Ltv/periscope/android/api/BlockResponse;->userId:Ljava/lang/String;

    .line 1693
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->X:Ltv/periscope/android/event/ApiEvent$Type;

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1695
    :goto_0
    return-object v0

    .line 1694
    :catch_0
    move-exception v4

    .line 1695
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->X:Ltv/periscope/android/event/ApiEvent$Type;

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private blockPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1895
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1896
    new-instance v3, Ltv/periscope/android/api/BlockPublicRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/BlockPublicRequest;-><init>()V

    .line 1897
    const-string/jumbo v0, "e_user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/BlockPublicRequest;->userId:Ljava/lang/String;

    .line 1898
    const-string/jumbo v0, "e_session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/BlockPublicRequest;->session:Ljava/lang/String;

    .line 1899
    const-string/jumbo v0, "e_install_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/BlockPublicRequest;->installId:Ljava/lang/String;

    .line 1901
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mPublicService:Ltv/periscope/android/api/PublicApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/PublicApiService;->blockPublic(Ltv/periscope/android/api/BlockPublicRequest;)Ltv/periscope/android/api/BlockResponse;

    move-result-object v4

    .line 1902
    iget-object v0, v3, Ltv/periscope/android/api/BlockPublicRequest;->userId:Ljava/lang/String;

    iput-object v0, v4, Ltv/periscope/android/api/BlockResponse;->userId:Ljava/lang/String;

    .line 1903
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->X:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1905
    :goto_0
    return-object v0

    .line 1904
    :catch_0
    move-exception v4

    .line 1905
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->X:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private broadcastSearch(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1322
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1323
    const-string/jumbo v0, "extra_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1324
    new-instance v3, Ltv/periscope/android/api/BroadcastSearchRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/BroadcastSearchRequest;-><init>()V

    .line 1325
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/BroadcastSearchRequest;->cookie:Ljava/lang/String;

    .line 1326
    iput-object v0, v3, Ltv/periscope/android/api/BroadcastSearchRequest;->query:Ljava/lang/String;

    iput-object v0, v3, Ltv/periscope/android/api/BroadcastSearchRequest;->search:Ljava/lang/String;

    .line 1327
    const/4 v0, 0x1

    iput-boolean v0, v3, Ltv/periscope/android/api/BroadcastSearchRequest;->includeReplay:Z

    .line 1329
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->broadcastSearch(Ltv/periscope/android/api/BroadcastSearchRequest;)Ljava/util/List;

    move-result-object v4

    .line 1330
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->v:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->convert(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    :goto_0
    return-object v0

    .line 1331
    :catch_0
    move-exception v4

    .line 1332
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->v:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private convert(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ltv/periscope/android/api/PsBroadcast;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ltv/periscope/model/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1715
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1716
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/PsBroadcast;

    .line 1717
    invoke-virtual {v0}, Ltv/periscope/android/api/PsBroadcast;->create()Ltv/periscope/model/o;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1719
    :cond_0
    return-object v1
.end method

.method private convertBids(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltv/periscope/android/api/service/channels/PsGetBroadcastsForChannelResponse$Bid;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1309
    if-nez p1, :cond_0

    .line 1310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1317
    :goto_0
    return-object v0

    .line 1313
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/service/channels/PsGetBroadcastsForChannelResponse$Bid;

    .line 1315
    iget-object v0, v0, Ltv/periscope/android/api/service/channels/PsGetBroadcastsForChannelResponse$Bid;->bid:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1317
    goto :goto_0
.end method

.method private convertPsChannels(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ltv/periscope/android/api/service/channels/PsChannel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ltv/periscope/model/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1723
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1724
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/api/service/channels/PsChannel;

    .line 1725
    invoke-virtual {v0}, Ltv/periscope/android/api/service/channels/PsChannel;->create()Ltv/periscope/model/s;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1727
    :cond_0
    return-object v1
.end method

.method private deleteBroadcast(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1609
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1610
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1611
    new-instance v3, Ltv/periscope/android/api/DeleteBroadcastRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/DeleteBroadcastRequest;-><init>()V

    .line 1612
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/DeleteBroadcastRequest;->cookie:Ljava/lang/String;

    .line 1613
    iput-object v4, v3, Ltv/periscope/android/api/DeleteBroadcastRequest;->broadcastId:Ljava/lang/String;

    .line 1615
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->deleteBroadcast(Ltv/periscope/android/api/DeleteBroadcastRequest;)Ltv/periscope/android/api/PsResponse;

    .line 1616
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->I:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    .line 1617
    invoke-static {v4}, Ltv/periscope/model/x;->a(Ljava/lang/String;)Ltv/periscope/model/x;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    :goto_0
    return-object v0

    .line 1618
    :catch_0
    move-exception v4

    .line 1619
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->I:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private endBroadcast(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 5

    .prologue
    .line 1563
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1564
    const-string/jumbo v1, "e_broadcast_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1565
    const-string/jumbo v2, "e_logger_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1566
    const-string/jumbo v3, "e_cookie"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1567
    new-instance v4, Ltv/periscope/android/api/ApiRunnable$5;

    invoke-direct {v4, p0, v3, v1, v0}, Ltv/periscope/android/api/ApiRunnable$5;-><init>(Ltv/periscope/android/api/ApiRunnable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1582
    invoke-virtual {v4, v2}, Ltv/periscope/android/api/ApiRequestWithLogs;->execute(Ljava/lang/String;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    return-object v0
.end method

.method private endWatching(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 8

    .prologue
    .line 1514
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1515
    const-string/jumbo v0, "e_session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1516
    const-string/jumbo v0, "e_logger_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1517
    const-string/jumbo v0, "e_num_hearts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1518
    const-string/jumbo v0, "e_n_comments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1519
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1520
    new-instance v0, Ltv/periscope/android/api/ApiRunnable$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ltv/periscope/android/api/ApiRunnable$3;-><init>(Ltv/periscope/android/api/ApiRunnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1535
    invoke-virtual {v0, v7}, Ltv/periscope/android/api/ApiRequestWithLogs;->execute(Ljava/lang/String;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    return-object v0
.end method

.method private endWatchingPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1849
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1850
    new-instance v3, Ltv/periscope/android/api/EndWatchingPublicRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/EndWatchingPublicRequest;-><init>()V

    .line 1851
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/EndWatchingPublicRequest;->broadcastId:Ljava/lang/String;

    .line 1852
    const-string/jumbo v0, "e_session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/EndWatchingPublicRequest;->session:Ljava/lang/String;

    .line 1853
    const-string/jumbo v0, "e_install_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/EndWatchingPublicRequest;->installId:Ljava/lang/String;

    .line 1855
    :try_start_0
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "stop watching"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mPublicService:Ltv/periscope/android/api/PublicApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/PublicApiService;->endWatchingPublic(Ltv/periscope/android/api/EndWatchingPublicRequest;)Ltv/periscope/android/api/PsResponse;

    move-result-object v4

    .line 1857
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "endWatching succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->N:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1861
    :goto_0
    return-object v0

    .line 1859
    :catch_0
    move-exception v4

    .line 1860
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "endWatching failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1861
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->N:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private getBlocked(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1731
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1732
    new-instance v3, Ltv/periscope/android/api/PsRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/PsRequest;-><init>()V

    .line 1733
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/PsRequest;->cookie:Ljava/lang/String;

    .line 1735
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getBlocked(Ltv/periscope/android/api/PsRequest;)Ljava/util/List;

    move-result-object v4

    .line 1736
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->Z:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1738
    :goto_0
    return-object v0

    .line 1737
    :catch_0
    move-exception v4

    .line 1738
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->Z:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private getBroadcastShareUrl(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1673
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1674
    new-instance v3, Ltv/periscope/android/api/GetBroadcastShareUrlRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/GetBroadcastShareUrlRequest;-><init>()V

    .line 1675
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/GetBroadcastShareUrlRequest;->cookie:Ljava/lang/String;

    .line 1676
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/GetBroadcastShareUrlRequest;->id:Ljava/lang/String;

    .line 1678
    :try_start_0
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "getting broadcast share url"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getBroadcastShareUrl(Ltv/periscope/android/api/GetBroadcastShareUrlRequest;)Ltv/periscope/android/api/GetBroadcastShareUrlResponse;

    move-result-object v4

    .line 1680
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "getBroadcastShareUrl succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    iget-object v0, v3, Ltv/periscope/android/api/GetBroadcastShareUrlRequest;->id:Ljava/lang/String;

    iput-object v0, v4, Ltv/periscope/android/api/GetBroadcastShareUrlResponse;->id:Ljava/lang/String;

    .line 1682
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->A:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    :goto_0
    return-object v0

    .line 1683
    :catch_0
    move-exception v4

    .line 1684
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "getBroadcastShareUrl failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1685
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->A:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private getBroadcastsPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1744
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1745
    const-string/jumbo v0, "extra_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1746
    new-instance v3, Ltv/periscope/android/api/GetBroadcastsPublicRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/GetBroadcastsPublicRequest;-><init>()V

    .line 1747
    const-string/jumbo v1, "e_install_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/GetBroadcastsPublicRequest;->installId:Ljava/lang/String;

    .line 1748
    iput-object v0, v3, Ltv/periscope/android/api/GetBroadcastsPublicRequest;->ids:Ljava/util/ArrayList;

    .line 1750
    :try_start_0
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "getting broadcasts"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mPublicService:Ltv/periscope/android/api/PublicApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/PublicApiService;->getBroadcastsPublic(Ltv/periscope/android/api/GetBroadcastsPublicRequest;)Ljava/util/List;

    move-result-object v4

    .line 1752
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "getBroadcasts succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->y:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->convert(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    :goto_0
    return-object v0

    .line 1754
    :catch_0
    move-exception v4

    .line 1755
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "getBroadcasts failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1756
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->y:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private getMapBroadcastFeed(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1444
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1445
    new-instance v3, Ltv/periscope/android/api/MapGeoBroadcastFeedRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/MapGeoBroadcastFeedRequest;-><init>()V

    .line 1446
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/MapGeoBroadcastFeedRequest;->cookie:Ljava/lang/String;

    .line 1447
    const-string/jumbo v0, "e_point_1_lat"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v3, Ltv/periscope/android/api/MapGeoBroadcastFeedRequest;->p1Lat:F

    .line 1448
    const-string/jumbo v0, "e_point_1_lng"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v3, Ltv/periscope/android/api/MapGeoBroadcastFeedRequest;->p1Lng:F

    .line 1449
    const-string/jumbo v0, "e_point_2_lat"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v3, Ltv/periscope/android/api/MapGeoBroadcastFeedRequest;->p2Lat:F

    .line 1450
    const-string/jumbo v0, "e_point_2_lng"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v3, Ltv/periscope/android/api/MapGeoBroadcastFeedRequest;->p2Lng:F

    .line 1451
    const/4 v0, 0x1

    iput-boolean v0, v3, Ltv/periscope/android/api/MapGeoBroadcastFeedRequest;->includeReplay:Z

    .line 1453
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->mapGeoBroadcastFeed(Ltv/periscope/android/api/MapGeoBroadcastFeedRequest;)Ljava/util/List;

    move-result-object v4

    .line 1454
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->E:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->convert(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1456
    :goto_0
    return-object v0

    .line 1455
    :catch_0
    move-exception v4

    .line 1456
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->E:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private hello(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1430
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1431
    new-instance v3, Ltv/periscope/android/api/HelloRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/HelloRequest;-><init>()V

    .line 1432
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/HelloRequest;->cookie:Ljava/lang/String;

    .line 1433
    const-string/jumbo v0, "e_locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/HelloRequest;->locale:Ljava/util/List;

    .line 1435
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->hello(Ltv/periscope/android/api/HelloRequest;)Ltv/periscope/android/api/HelloResponse;

    move-result-object v4

    .line 1436
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->f:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1438
    :goto_0
    return-object v0

    .line 1437
    :catch_0
    move-exception v4

    .line 1438
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->f:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private is500Error(Lretrofit/RetrofitError;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 398
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/client/Response;->getStatus()I

    move-result v1

    .line 400
    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_0

    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 402
    :cond_0
    return v0
.end method

.method private isTimeout(Lretrofit/RetrofitError;)Z
    .locals 3

    .prologue
    .line 406
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 407
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getKind()Lretrofit/RetrofitError$Kind;

    move-result-object v1

    sget-object v2, Lretrofit/RetrofitError$Kind;->NETWORK:Lretrofit/RetrofitError$Kind;

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-nez v1, :cond_0

    instance-of v0, v0, Ljava/net/ConnectException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markAbusePublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1881
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1882
    new-instance v3, Ltv/periscope/android/api/MarkAbusePublicRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/MarkAbusePublicRequest;-><init>()V

    .line 1883
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/MarkAbusePublicRequest;->broadcastId:Ljava/lang/String;

    .line 1884
    const-string/jumbo v0, "e_abuse_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/MarkAbusePublicRequest;->abuseType:Ljava/lang/String;

    .line 1885
    const-string/jumbo v0, "e_install_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/MarkAbusePublicRequest;->installId:Ljava/lang/String;

    .line 1887
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mPublicService:Ltv/periscope/android/api/PublicApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/PublicApiService;->markAbusePublic(Ltv/periscope/android/api/MarkAbusePublicRequest;)Ltv/periscope/android/api/MarkAbuseResponse;

    move-result-object v4

    .line 1888
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->K:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1890
    :goto_0
    return-object v0

    .line 1889
    :catch_0
    move-exception v4

    .line 1890
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->K:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private newLogFileForUpload([Ljava/io/File;)Lretrofit/mime/TypedInput;
    .locals 3

    .prologue
    .line 1586
    if-eqz p1, :cond_0

    .line 1587
    new-instance v0, Ltv/periscope/android/api/TypedFiles;

    const-string/jumbo v1, "logs.txt"

    invoke-direct {v0, p1, v1}, Ltv/periscope/android/api/TypedFiles;-><init>([Ljava/io/File;Ljava/lang/String;)V

    .line 1589
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ltv/periscope/android/api/TypedFileString;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "logs.txt"

    invoke-direct {v0, v1, v2}, Ltv/periscope/android/api/TypedFileString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pingBroadcast(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 7

    .prologue
    .line 1539
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1540
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1541
    const-string/jumbo v0, "e_logger_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1542
    const-string/jumbo v0, "e_bit_rate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1543
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1544
    new-instance v0, Ltv/periscope/android/api/ApiRunnable$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/api/ApiRunnable$4;-><init>(Ltv/periscope/android/api/ApiRunnable;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1559
    invoke-virtual {v0, v6}, Ltv/periscope/android/api/ApiRequestWithLogs;->execute(Ljava/lang/String;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    return-object v0
.end method

.method private pingWatching(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 8

    .prologue
    .line 1489
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1490
    const-string/jumbo v0, "e_session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1491
    const-string/jumbo v0, "e_logger_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1492
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1493
    const-string/jumbo v0, "e_num_hearts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1494
    const-string/jumbo v0, "e_n_comments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1495
    new-instance v0, Ltv/periscope/android/api/ApiRunnable$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ltv/periscope/android/api/ApiRunnable$2;-><init>(Ltv/periscope/android/api/ApiRunnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1510
    invoke-virtual {v0, v7}, Ltv/periscope/android/api/ApiRequestWithLogs;->execute(Ljava/lang/String;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    return-object v0
.end method

.method private pingWatchingPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1832
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1833
    new-instance v3, Ltv/periscope/android/api/PingPublicRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/PingPublicRequest;-><init>()V

    .line 1834
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/PingPublicRequest;->broadcastId:Ljava/lang/String;

    .line 1835
    const-string/jumbo v0, "e_session_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/PingPublicRequest;->session:Ljava/lang/String;

    .line 1836
    const-string/jumbo v0, "e_install_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/PingPublicRequest;->installId:Ljava/lang/String;

    .line 1838
    :try_start_0
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "ping watching"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mPublicService:Ltv/periscope/android/api/PublicApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/PublicApiService;->pingPublic(Ltv/periscope/android/api/PingPublicRequest;)Ltv/periscope/android/api/PingWatchingResponse;

    move-result-object v4

    .line 1840
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "pingWatching succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->M:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1844
    :goto_0
    return-object v0

    .line 1842
    :catch_0
    move-exception v4

    .line 1843
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "pingWatching failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1844
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->M:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private replayThumbnailPlaylist(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1594
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1595
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1596
    new-instance v3, Ltv/periscope/android/api/ThumbnailPlaylistRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/ThumbnailPlaylistRequest;-><init>()V

    .line 1597
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/ThumbnailPlaylistRequest;->cookie:Ljava/lang/String;

    .line 1598
    iput-object v0, v3, Ltv/periscope/android/api/ThumbnailPlaylistRequest;->broadcastId:Ljava/lang/String;

    .line 1600
    :try_start_0
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v1, v3}, Ltv/periscope/android/api/ApiService;->replayThumbnailPlayList(Ltv/periscope/android/api/ThumbnailPlaylistRequest;)Ltv/periscope/android/api/ThumbnailPlaylistResponse;

    move-result-object v4

    .line 1601
    iput-object v0, v4, Ltv/periscope/android/api/ThumbnailPlaylistResponse;->broadcastId:Ljava/lang/String;

    .line 1602
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->F:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    :goto_0
    return-object v0

    .line 1603
    :catch_0
    move-exception v4

    .line 1604
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->F:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private replayThumbnailPlaylistPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1866
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1867
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1868
    new-instance v3, Ltv/periscope/android/api/ThumbnailPlaylistPublicRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/ThumbnailPlaylistPublicRequest;-><init>()V

    .line 1869
    iput-object v0, v3, Ltv/periscope/android/api/ThumbnailPlaylistPublicRequest;->broadcastId:Ljava/lang/String;

    .line 1870
    const-string/jumbo v1, "e_install_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/ThumbnailPlaylistPublicRequest;->installId:Ljava/lang/String;

    .line 1872
    :try_start_0
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mPublicService:Ltv/periscope/android/api/PublicApiService;

    invoke-interface {v1, v3}, Ltv/periscope/android/api/PublicApiService;->replayThumbnailPlaylistPublic(Ltv/periscope/android/api/ThumbnailPlaylistPublicRequest;)Ltv/periscope/android/api/ThumbnailPlaylistResponse;

    move-result-object v4

    .line 1873
    iput-object v0, v4, Ltv/periscope/android/api/ThumbnailPlaylistResponse;->broadcastId:Ljava/lang/String;

    .line 1874
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->F:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1876
    :goto_0
    return-object v0

    .line 1875
    :catch_0
    move-exception v4

    .line 1876
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->F:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private reportBroadcast(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1641
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1642
    new-instance v3, Ltv/periscope/android/api/MarkAbuseRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/MarkAbuseRequest;-><init>()V

    .line 1643
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/MarkAbuseRequest;->cookie:Ljava/lang/String;

    .line 1644
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/MarkAbuseRequest;->broadcastId:Ljava/lang/String;

    .line 1645
    const-string/jumbo v0, "e_abuse_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/MarkAbuseRequest;->abuseType:Ljava/lang/String;

    .line 1647
    :try_start_0
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "reporting broadcast"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->markAbuse(Ltv/periscope/android/api/MarkAbuseRequest;)Ltv/periscope/android/api/MarkAbuseResponse;

    move-result-object v4

    .line 1649
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "report Broadcast succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->K:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1653
    :goto_0
    return-object v0

    .line 1651
    :catch_0
    move-exception v4

    .line 1652
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "report Broadcast failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1653
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->K:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private reportComment(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 14

    .prologue
    .line 1911
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1912
    const-string/jumbo v0, "e_service_auth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1913
    const-string/jumbo v1, "tv.periscope.android.api.service.safety.EXTRA_REPORT_COMMENT_REQUEST"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Lorg/parceler/bu;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/periscope/android/api/service/safety/ReportCommentRequest;

    .line 1915
    :try_start_0
    invoke-direct {p0, v0}, Ltv/periscope/android/api/ApiRunnable;->verifyAuthToken(Ljava/lang/String;)V

    .line 1916
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mSafetyService:Ltv/periscope/android/api/service/safety/SafetyService;

    invoke-interface {v1, v0, v3}, Ltv/periscope/android/api/service/safety/SafetyService;->report(Ljava/lang/String;Ltv/periscope/android/api/service/safety/ReportCommentRequest;)Ltv/periscope/android/api/service/safety/ReportCommentResponse;

    move-result-object v4

    .line 1917
    new-instance v0, Ltv/periscope/android/event/c;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->al:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    :goto_0
    return-object v0

    .line 1918
    :catch_0
    move-exception v11

    .line 1919
    new-instance v6, Ltv/periscope/android/event/c;

    sget-object v7, Ltv/periscope/android/event/ApiEvent$Type;->al:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v8, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    sget-object v10, Ltv/periscope/android/api/BackendServiceName;->SAFETY:Ltv/periscope/android/api/BackendServiceName;

    move-object v9, v3

    move v12, v5

    move-object v13, p0

    invoke-direct/range {v6 .. v13}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Lretrofit/RetrofitError;ZLtv/periscope/android/api/ApiRunnable;)V

    move-object v0, v6

    goto :goto_0
.end method

.method private shareBroadcast(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1624
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1625
    new-instance v3, Ltv/periscope/android/api/ShareBroadcastRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/ShareBroadcastRequest;-><init>()V

    .line 1626
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/ShareBroadcastRequest;->cookie:Ljava/lang/String;

    .line 1627
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/ShareBroadcastRequest;->broadcastId:Ljava/lang/String;

    .line 1628
    const-string/jumbo v0, "e_user_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/ShareBroadcastRequest;->userIds:Ljava/util/ArrayList;

    .line 1630
    :try_start_0
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "sharing broadcast"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->shareBroadcast(Ltv/periscope/android/api/ShareBroadcastRequest;)Ltv/periscope/android/api/ShareBroadcastResponse;

    move-result-object v4

    .line 1632
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "shareBroadcast succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->J:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1636
    :goto_0
    return-object v0

    .line 1634
    :catch_0
    move-exception v4

    .line 1635
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "shareBroadcast failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1636
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->J:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private startWatching(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1380
    const-string/jumbo v0, "e_autoplay"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1381
    const-string/jumbo v1, "e_background"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1382
    const-string/jumbo v1, "e_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1383
    new-instance v3, Ltv/periscope/android/api/StartWatchingRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/StartWatchingRequest;-><init>()V

    .line 1384
    const-string/jumbo v2, "e_cookie"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Ltv/periscope/android/api/StartWatchingRequest;->cookie:Ljava/lang/String;

    .line 1385
    iput-object v1, v3, Ltv/periscope/android/api/StartWatchingRequest;->lifeCycleToken:Ljava/lang/String;

    .line 1386
    iput-boolean v0, v3, Ltv/periscope/android/api/StartWatchingRequest;->autoplay:Z

    .line 1388
    :try_start_0
    const-string/jumbo v0, "PsApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start watching for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->startWatching(Ltv/periscope/android/api/StartWatchingRequest;)Ltv/periscope/android/api/StartWatchingResponse;

    move-result-object v4

    .line 1390
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "startWatching succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->s:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    :goto_0
    return-object v0

    .line 1392
    :catch_0
    move-exception v4

    .line 1393
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "startWatching failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1394
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->s:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private startWatchingPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1812
    const-string/jumbo v0, "e_autoplay"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1813
    const-string/jumbo v1, "e_background"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1814
    new-instance v3, Ltv/periscope/android/api/StartWatchingPublicRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/StartWatchingPublicRequest;-><init>()V

    .line 1815
    const-string/jumbo v1, "e_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1816
    const-string/jumbo v2, "e_install_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Ltv/periscope/android/api/StartWatchingPublicRequest;->installId:Ljava/lang/String;

    .line 1817
    iput-object v1, v3, Ltv/periscope/android/api/StartWatchingPublicRequest;->lifeCycleToken:Ljava/lang/String;

    .line 1818
    iput-boolean v0, v3, Ltv/periscope/android/api/StartWatchingPublicRequest;->autoplay:Z

    .line 1820
    :try_start_0
    const-string/jumbo v0, "PsApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start watching for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mPublicService:Ltv/periscope/android/api/PublicApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/PublicApiService;->startWatchingPublic(Ltv/periscope/android/api/StartWatchingPublicRequest;)Ltv/periscope/android/api/StartWatchingResponse;

    move-result-object v4

    .line 1822
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "startWatchingPublic succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->s:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    :goto_0
    return-object v0

    .line 1824
    :catch_0
    move-exception v4

    .line 1825
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "startWatchingPublic failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1826
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->s:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private unblock(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1700
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1701
    const-string/jumbo v0, "e_user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1702
    new-instance v3, Ltv/periscope/android/api/BlockRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/BlockRequest;-><init>()V

    .line 1703
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/BlockRequest;->cookie:Ljava/lang/String;

    .line 1704
    iput-object v0, v3, Ltv/periscope/android/api/BlockRequest;->userId:Ljava/lang/String;

    .line 1706
    :try_start_0
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v1, v3}, Ltv/periscope/android/api/ApiService;->unblock(Ltv/periscope/android/api/BlockRequest;)Ltv/periscope/android/api/BlockResponse;

    move-result-object v4

    .line 1707
    iput-object v0, v4, Ltv/periscope/android/api/BlockResponse;->userId:Ljava/lang/String;

    .line 1708
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->Y:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1710
    :goto_0
    return-object v0

    .line 1709
    :catch_0
    move-exception v4

    .line 1710
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->Y:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private updateProfileDescription(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1475
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1476
    const-string/jumbo v0, "e_description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1477
    new-instance v3, Ltv/periscope/android/api/UpdateDescriptionRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/UpdateDescriptionRequest;-><init>()V

    .line 1478
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/UpdateDescriptionRequest;->cookie:Ljava/lang/String;

    .line 1479
    iput-object v0, v3, Ltv/periscope/android/api/UpdateDescriptionRequest;->description:Ljava/lang/String;

    .line 1481
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->updateDescription(Ltv/periscope/android/api/UpdateDescriptionRequest;)Ltv/periscope/android/api/UpdateDescriptionResponse;

    move-result-object v4

    .line 1482
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->af:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    :goto_0
    return-object v0

    .line 1483
    :catch_0
    move-exception v4

    .line 1484
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->af:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private updateProfileDisplayName(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 6

    .prologue
    .line 1461
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1462
    const-string/jumbo v0, "e_display_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1463
    new-instance v3, Ltv/periscope/android/api/UpdateDisplayNameRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/UpdateDisplayNameRequest;-><init>()V

    .line 1464
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/UpdateDisplayNameRequest;->cookie:Ljava/lang/String;

    .line 1465
    iput-object v0, v3, Ltv/periscope/android/api/UpdateDisplayNameRequest;->displayName:Ljava/lang/String;

    .line 1467
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->updateDisplayName(Ltv/periscope/android/api/UpdateDisplayNameRequest;)Ltv/periscope/android/api/UpdateDisplayNameResponse;

    move-result-object v4

    .line 1468
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ae:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    :goto_0
    return-object v0

    .line 1469
    :catch_0
    move-exception v4

    .line 1470
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ae:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0
.end method

.method private uploadToast(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1400
    const-string/jumbo v1, "e_background"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1403
    :try_start_0
    const-string/jumbo v1, "e_file_dir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1404
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "padding.padding"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1406
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    const v0, 0x3d090

    :try_start_1
    new-array v0, v0, [C

    .line 1408
    invoke-virtual {v6, v0}, Ljava/io/OutputStreamWriter;->write([C)V

    .line 1409
    new-instance v0, Lretrofit/mime/TypedFile;

    const-string/jumbo v1, "multipart/form-data"

    invoke-direct {v0, v1, v2}, Lretrofit/mime/TypedFile;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 1410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1412
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1414
    :try_start_2
    iget-object v4, p0, Ltv/periscope/android/api/ApiRunnable;->mSigner:Ltv/periscope/android/signer/SignerService;

    invoke-interface {v4, v1, v0}, Ltv/periscope/android/signer/SignerService;->uploadPadding(Ljava/lang/String;Lretrofit/mime/TypedFile;)Ltv/periscope/android/api/UploadTestResponse;

    move-result-object v4

    .line 1415
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 1417
    const v1, 0x48742400    # 250000.0f

    div-float v0, v1, v0

    iput v0, v4, Ltv/periscope/android/api/UploadTestResponse;->byteRateSeconds:F

    .line 1418
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ab:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_2
    .catch Lretrofit/RetrofitError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1425
    invoke-static {v6}, Ltv/periscope/android/util/g;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    .line 1419
    :catch_0
    move-exception v4

    .line 1420
    :try_start_3
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ab:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1425
    invoke-static {v6}, Ltv/periscope/android/util/g;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1422
    :catch_1
    move-exception v4

    move-object v6, v0

    .line 1423
    :goto_1
    :try_start_4
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ab:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1425
    invoke-static {v6}, Ltv/periscope/android/util/g;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    :goto_2
    invoke-static {v6}, Ltv/periscope/android/util/g;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1422
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private verifyAuthToken(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lretrofit/RetrofitError;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1962
    invoke-static {p1}, Ldod;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    new-instance v0, Lretrofit/client/Response;

    const-string/jumbo v1, ""

    const/16 v2, 0x191

    const-string/jumbo v3, "auth token is empty"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {v0 .. v5}, Lretrofit/client/Response;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lretrofit/mime/TypedInput;)V

    .line 1965
    invoke-static {v5, v0, v5, v5}, Lretrofit/RetrofitError;->httpError(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;)Lretrofit/RetrofitError;

    move-result-object v0

    throw v0

    .line 1967
    :cond_0
    return-void
.end method

.method private vote(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;
    .locals 14

    .prologue
    .line 1926
    const-string/jumbo v0, "e_background"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1927
    const-string/jumbo v0, "e_service_auth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1928
    const-string/jumbo v1, "tv.periscope.android.api.service.safety.EXTRA_VOTE_REQUEST"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Lorg/parceler/bu;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/periscope/android/api/service/safety/VoteRequest;

    .line 1930
    :try_start_0
    invoke-direct {p0, v0}, Ltv/periscope/android/api/ApiRunnable;->verifyAuthToken(Ljava/lang/String;)V

    .line 1931
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mSafetyService:Ltv/periscope/android/api/service/safety/SafetyService;

    invoke-interface {v1, v0, v3}, Ltv/periscope/android/api/service/safety/SafetyService;->vote(Ljava/lang/String;Ltv/periscope/android/api/service/safety/VoteRequest;)Ltv/periscope/android/api/service/safety/VoteResponse;

    move-result-object v4

    .line 1932
    new-instance v0, Ltv/periscope/android/event/c;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->am:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1934
    :goto_0
    return-object v0

    .line 1933
    :catch_0
    move-exception v11

    .line 1934
    new-instance v6, Ltv/periscope/android/event/c;

    sget-object v7, Ltv/periscope/android/event/ApiEvent$Type;->am:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v8, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    sget-object v10, Ltv/periscope/android/api/BackendServiceName;->SAFETY:Ltv/periscope/android/api/BackendServiceName;

    move-object v9, v3

    move v12, v5

    move-object v13, p0

    invoke-direct/range {v6 .. v13}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Lretrofit/RetrofitError;ZLtv/periscope/android/api/ApiRunnable;)V

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic canRetry(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 62
    check-cast p1, Ltv/periscope/android/event/ApiEvent;

    invoke-virtual {p0, p1}, Ltv/periscope/android/api/ApiRunnable;->canRetry(Ltv/periscope/android/event/ApiEvent;)Z

    move-result v0

    return v0
.end method

.method protected canRetry(Ltv/periscope/android/event/ApiEvent;)Z
    .locals 6

    .prologue
    .line 388
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ltv/periscope/android/event/ApiEvent;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->e:Lretrofit/RetrofitError;

    .line 389
    invoke-direct {p0, v0}, Ltv/periscope/android/api/ApiRunnable;->is500Error(Lretrofit/RetrofitError;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Ltv/periscope/android/event/ApiEvent;->e:Lretrofit/RetrofitError;

    invoke-direct {p0, v0}, Ltv/periscope/android/api/ApiRunnable;->isTimeout(Lretrofit/RetrofitError;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 390
    :goto_0
    if-eqz v0, :cond_1

    .line 391
    const-string/jumbo v1, "PsApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "A problem was detected for action code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ltv/periscope/android/api/ApiRunnable;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Retrying. Num retries left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 392
    invoke-virtual {p0}, Ltv/periscope/android/api/ApiRunnable;->numRetries()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Current backoff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ltv/periscope/android/api/ApiRunnable;->currentBackoff()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-static {v1, v2}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_1
    return v0

    .line 389
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Ltv/periscope/android/api/ApiRunnable;->execute()Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    return-object v0
.end method

.method protected execute()Ltv/periscope/android/event/ApiEvent;
    .locals 14

    .prologue
    const/16 v6, 0x64

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 443
    iget-object v4, p0, Ltv/periscope/android/api/ApiRunnable;->mBundle:Landroid/os/Bundle;

    .line 444
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mRequest:Ltv/periscope/android/api/ApiRequest;

    .line 445
    const-string/jumbo v3, "e_background"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 446
    iget v3, p0, Ltv/periscope/android/api/ApiRunnable;->mActionCode:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move-object v0, v9

    .line 1305
    :goto_0
    return-object v0

    .line 448
    :sswitch_0
    const-string/jumbo v0, "e_secret_key"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    const-string/jumbo v1, "e_secret_token"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    const-string/jumbo v2, "e_username"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    const-string/jumbo v3, "e_user_id"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 452
    const-string/jumbo v3, "e_phone_number"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 453
    const-string/jumbo v3, "e_install_id"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 454
    const-string/jumbo v3, "e_session_type"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 455
    new-instance v3, Ltv/periscope/android/api/TwitterLoginRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/TwitterLoginRequest;-><init>()V

    .line 456
    iput-object v1, v3, Ltv/periscope/android/api/TwitterLoginRequest;->sessionKey:Ljava/lang/String;

    .line 457
    iput-object v0, v3, Ltv/periscope/android/api/TwitterLoginRequest;->sessionSecret:Ljava/lang/String;

    .line 458
    iput-object v2, v3, Ltv/periscope/android/api/TwitterLoginRequest;->userName:Ljava/lang/String;

    .line 459
    iput-object v6, v3, Ltv/periscope/android/api/TwitterLoginRequest;->userId:Ljava/lang/String;

    .line 460
    iput-object v7, v3, Ltv/periscope/android/api/TwitterLoginRequest;->phoneNumber:Ljava/lang/String;

    .line 461
    iput-object v8, v3, Ltv/periscope/android/api/TwitterLoginRequest;->installId:Ljava/lang/String;

    .line 463
    :try_start_0
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->login(Ltv/periscope/android/api/TwitterLoginRequest;)Ltv/periscope/android/api/TwitterLoginResponse;

    move-result-object v4

    .line 464
    invoke-static {v9}, Ltv/periscope/android/session/Session$Type;->valueOf(Ljava/lang/String;)Ltv/periscope/android/session/Session$Type;

    move-result-object v0

    iput-object v0, v4, Ltv/periscope/android/api/TwitterLoginResponse;->sessionType:Ltv/periscope/android/session/Session$Type;

    .line 465
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->a:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v4

    .line 467
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->a:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto :goto_0

    .line 471
    :sswitch_1
    new-instance v3, Ltv/periscope/android/api/TwitterTokenLoginRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/TwitterTokenLoginRequest;-><init>()V

    .line 472
    const-string/jumbo v0, "e_token"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/TwitterTokenLoginRequest;->jwt:Ljava/lang/String;

    .line 473
    const-string/jumbo v0, "e_install_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/TwitterTokenLoginRequest;->installId:Ljava/lang/String;

    .line 475
    :try_start_1
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->loginTwitterToken(Ltv/periscope/android/api/TwitterTokenLoginRequest;)Ltv/periscope/android/api/TwitterTokenLoginResponse;

    move-result-object v4

    .line 476
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->b:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_1
    .catch Lretrofit/RetrofitError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 477
    :catch_1
    move-exception v4

    .line 478
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->b:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 482
    :sswitch_2
    new-instance v3, Ltv/periscope/android/api/AuthorizeTokenRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/AuthorizeTokenRequest;-><init>()V

    .line 483
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/AuthorizeTokenRequest;->cookie:Ljava/lang/String;

    .line 484
    const-string/jumbo v0, "e_service_name"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/AuthorizeTokenRequest;->service:Ljava/lang/String;

    .line 486
    :try_start_2
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getAuthorizationTokenForService(Ltv/periscope/android/api/AuthorizeTokenRequest;)Ltv/periscope/android/api/AuthorizeTokenResponse;

    move-result-object v4

    .line 487
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->c:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_2
    .catch Lretrofit/RetrofitError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 488
    :catch_2
    move-exception v4

    .line 489
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->c:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 493
    :sswitch_3
    new-instance v3, Ltv/periscope/android/api/ValidateUsernameRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/ValidateUsernameRequest;-><init>()V

    .line 494
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/ValidateUsernameRequest;->cookie:Ljava/lang/String;

    .line 495
    const-string/jumbo v0, "e_username"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/ValidateUsernameRequest;->username:Ljava/lang/String;

    .line 496
    const-string/jumbo v0, "e_secret_key"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/ValidateUsernameRequest;->sessionKey:Ljava/lang/String;

    .line 497
    const-string/jumbo v0, "e_secret_token"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/ValidateUsernameRequest;->sessionSecret:Ljava/lang/String;

    .line 499
    :try_start_3
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    .line 500
    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->validateUsername(Ltv/periscope/android/api/ValidateUsernameRequest;)Ltv/periscope/android/api/ValidateUsernameResponse;

    move-result-object v4

    .line 501
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->d:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_3
    .catch Lretrofit/RetrofitError; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 503
    :catch_3
    move-exception v11

    .line 505
    :try_start_4
    new-instance v6, Ltv/periscope/android/event/ApiEvent;

    sget-object v7, Ltv/periscope/android/event/ApiEvent$Type;->d:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v8, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    const-class v0, Ltv/periscope/android/api/ValidateUsernameError;

    .line 506
    invoke-virtual {v11, v0}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v3

    move v12, v5

    invoke-direct/range {v6 .. v12}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Lretrofit/RetrofitError;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v6

    goto/16 :goto_0

    .line 507
    :catch_4
    move-exception v0

    .line 508
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->d:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 513
    :sswitch_4
    new-instance v3, Ltv/periscope/android/api/AssociateDigitsAccountRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/AssociateDigitsAccountRequest;-><init>()V

    .line 514
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/AssociateDigitsAccountRequest;->cookie:Ljava/lang/String;

    .line 515
    const-string/jumbo v0, "e_secret_token"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/AssociateDigitsAccountRequest;->sessionKey:Ljava/lang/String;

    .line 516
    const-string/jumbo v0, "e_secret_key"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/AssociateDigitsAccountRequest;->sessionSecret:Ljava/lang/String;

    .line 518
    :try_start_5
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    .line 519
    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->associateDigitsAccount(Ltv/periscope/android/api/AssociateDigitsAccountRequest;)Ltv/periscope/android/api/PsResponse;

    move-result-object v4

    .line 520
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ar:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_5
    .catch Lretrofit/RetrofitError; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 522
    :catch_5
    move-exception v4

    .line 523
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ar:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 527
    :sswitch_5
    new-instance v3, Ltv/periscope/android/api/VerifyUsernameRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/VerifyUsernameRequest;-><init>()V

    .line 528
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/VerifyUsernameRequest;->cookie:Ljava/lang/String;

    .line 529
    const-string/jumbo v0, "e_username"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/VerifyUsernameRequest;->username:Ljava/lang/String;

    .line 530
    const-string/jumbo v0, "e_display_name"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/VerifyUsernameRequest;->displayName:Ljava/lang/String;

    .line 531
    const-string/jumbo v0, "e_secret_key"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/VerifyUsernameRequest;->sessionKey:Ljava/lang/String;

    .line 532
    const-string/jumbo v0, "e_secret_token"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/VerifyUsernameRequest;->sessionSecret:Ljava/lang/String;

    .line 534
    :try_start_6
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->verifyUsername(Ltv/periscope/android/api/VerifyUsernameRequest;)Ltv/periscope/android/api/VerifyUsernameResponse;

    move-result-object v4

    .line 535
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->e:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_6
    .catch Lretrofit/RetrofitError; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 537
    :catch_6
    move-exception v11

    .line 539
    :try_start_7
    new-instance v6, Ltv/periscope/android/event/ApiEvent;

    sget-object v7, Ltv/periscope/android/event/ApiEvent$Type;->e:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v8, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    const-class v0, Ltv/periscope/android/api/ValidateUsernameError;

    .line 540
    invoke-virtual {v11, v0}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v3

    move v12, v5

    invoke-direct/range {v6 .. v12}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Lretrofit/RetrofitError;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    move-object v0, v6

    goto/16 :goto_0

    .line 541
    :catch_7
    move-exception v0

    .line 542
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->e:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 547
    :sswitch_6
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->hello(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 550
    :sswitch_7
    new-instance v3, Ltv/periscope/android/api/GetUserRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/GetUserRequest;-><init>()V

    .line 551
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/GetUserRequest;->cookie:Ljava/lang/String;

    .line 552
    const-string/jumbo v0, "e_my_user_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/GetUserRequest;->userId:Ljava/lang/String;

    .line 554
    :try_start_8
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getUser(Ltv/periscope/android/api/GetUserRequest;)Ltv/periscope/android/api/GetUserResponse;

    move-result-object v4

    .line 555
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->g:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_8
    .catch Lretrofit/RetrofitError; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 556
    :catch_8
    move-exception v4

    .line 557
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->g:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 561
    :sswitch_8
    const-string/jumbo v0, "e_my_user_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 562
    new-instance v3, Ltv/periscope/android/api/GetFollowersRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/GetFollowersRequest;-><init>()V

    .line 563
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/GetFollowersRequest;->cookie:Ljava/lang/String;

    .line 564
    iput-object v6, v3, Ltv/periscope/android/api/GetFollowersRequest;->userId:Ljava/lang/String;

    .line 566
    :try_start_9
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getFollowers(Ltv/periscope/android/api/GetFollowersRequest;)Ljava/util/List;

    move-result-object v7

    .line 567
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->h:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    new-instance v4, Ltv/periscope/android/api/FetchUsersResponse;

    invoke-direct {v4, v6, v7}, Ltv/periscope/android/api/FetchUsersResponse;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_9
    .catch Lretrofit/RetrofitError; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    .line 569
    :catch_9
    move-exception v4

    .line 570
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->h:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 574
    :sswitch_9
    const-string/jumbo v0, "e_my_user_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 575
    new-instance v3, Ltv/periscope/android/api/GetFollowingRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/GetFollowingRequest;-><init>()V

    .line 576
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/GetFollowingRequest;->cookie:Ljava/lang/String;

    .line 577
    iput-object v6, v3, Ltv/periscope/android/api/GetFollowingRequest;->userId:Ljava/lang/String;

    .line 579
    :try_start_a
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getFollowing(Ltv/periscope/android/api/GetFollowingRequest;)Ljava/util/List;

    move-result-object v7

    .line 580
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->i:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    new-instance v4, Ltv/periscope/android/api/FetchUsersResponse;

    invoke-direct {v4, v6, v7}, Ltv/periscope/android/api/FetchUsersResponse;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_a
    .catch Lretrofit/RetrofitError; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_0

    .line 582
    :catch_a
    move-exception v4

    .line 583
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->i:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 587
    :sswitch_a
    new-instance v3, Ltv/periscope/android/api/PsRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/PsRequest;-><init>()V

    .line 588
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/PsRequest;->cookie:Ljava/lang/String;

    .line 590
    :try_start_b
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getMutualFollows(Ltv/periscope/android/api/PsRequest;)Ljava/util/List;

    move-result-object v4

    .line 591
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->j:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_b
    .catch Lretrofit/RetrofitError; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_0

    .line 592
    :catch_b
    move-exception v4

    .line 593
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->j:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 597
    :sswitch_b
    const-string/jumbo v0, "e_user_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    new-instance v3, Ltv/periscope/android/api/FollowRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/FollowRequest;-><init>()V

    .line 599
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/FollowRequest;->cookie:Ljava/lang/String;

    .line 600
    iput-object v0, v3, Ltv/periscope/android/api/FollowRequest;->userId:Ljava/lang/String;

    .line 602
    :try_start_c
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v1, v3}, Ltv/periscope/android/api/ApiService;->follow(Ltv/periscope/android/api/FollowRequest;)Ltv/periscope/android/api/FollowResponse;

    move-result-object v4

    .line 603
    iput-object v0, v4, Ltv/periscope/android/api/FollowResponse;->userId:Ljava/lang/String;

    .line 605
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->k:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_c
    .catch Lretrofit/RetrofitError; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_0

    .line 606
    :catch_c
    move-exception v4

    .line 607
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->k:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 611
    :sswitch_c
    const-string/jumbo v0, "e_user_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    new-instance v3, Ltv/periscope/android/api/MuteRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/MuteRequest;-><init>()V

    .line 613
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/MuteRequest;->cookie:Ljava/lang/String;

    .line 614
    iput-object v0, v3, Ltv/periscope/android/api/MuteRequest;->userId:Ljava/lang/String;

    .line 616
    :try_start_d
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v1, v3}, Ltv/periscope/android/api/ApiService;->mute(Ltv/periscope/android/api/MuteRequest;)Ltv/periscope/android/api/MuteResponse;

    move-result-object v4

    .line 617
    iput-object v0, v4, Ltv/periscope/android/api/MuteResponse;->userId:Ljava/lang/String;

    .line 619
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->l:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_d
    .catch Lretrofit/RetrofitError; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_0

    .line 620
    :catch_d
    move-exception v4

    .line 621
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->l:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 625
    :sswitch_d
    const-string/jumbo v0, "e_user_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    new-instance v3, Ltv/periscope/android/api/UnMuteRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/UnMuteRequest;-><init>()V

    .line 627
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/UnMuteRequest;->cookie:Ljava/lang/String;

    .line 628
    iput-object v0, v3, Ltv/periscope/android/api/UnMuteRequest;->userId:Ljava/lang/String;

    .line 630
    :try_start_e
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v1, v3}, Ltv/periscope/android/api/ApiService;->unmute(Ltv/periscope/android/api/UnMuteRequest;)Ltv/periscope/android/api/UnMuteResponse;

    move-result-object v4

    .line 631
    iput-object v0, v4, Ltv/periscope/android/api/UnMuteResponse;->userId:Ljava/lang/String;

    .line 633
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->m:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_e
    .catch Lretrofit/RetrofitError; {:try_start_e .. :try_end_e} :catch_e

    goto/16 :goto_0

    .line 634
    :catch_e
    move-exception v4

    .line 635
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->m:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 640
    :sswitch_e
    const-string/jumbo v0, "extra_ids"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 641
    array-length v1, v0

    if-le v1, v6, :cond_d

    .line 642
    invoke-static {v0, v2, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 644
    :goto_1
    array-length v10, v6

    .line 646
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 647
    array-length v12, v6

    move v8, v2

    move v7, v2

    :goto_2
    if-ge v8, v12, :cond_0

    aget-object v0, v6, v8

    .line 648
    new-instance v3, Ltv/periscope/android/api/FollowRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/FollowRequest;-><init>()V

    .line 649
    iput-object v11, v3, Ltv/periscope/android/api/FollowRequest;->cookie:Ljava/lang/String;

    .line 650
    iput-object v0, v3, Ltv/periscope/android/api/FollowRequest;->userId:Ljava/lang/String;

    .line 652
    :try_start_f
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->follow(Ltv/periscope/android/api/FollowRequest;)Ltv/periscope/android/api/FollowResponse;

    move-result-object v4

    .line 654
    add-int/lit8 v7, v7, 0x1

    .line 655
    if-ne v7, v10, :cond_1

    .line 656
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->C:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_f
    .catch Lretrofit/RetrofitError; {:try_start_f .. :try_end_f} :catch_f

    goto/16 :goto_0

    .line 658
    :catch_f
    move-exception v4

    .line 660
    add-int/lit8 v0, v7, 0x1

    .line 661
    if-ne v0, v10, :cond_2

    .line 662
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->C:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    :cond_1
    move v0, v7

    .line 647
    :cond_2
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v7, v0

    goto :goto_2

    .line 669
    :sswitch_f
    const-string/jumbo v0, "e_user_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    new-instance v3, Ltv/periscope/android/api/UnfollowRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/UnfollowRequest;-><init>()V

    .line 671
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/UnfollowRequest;->cookie:Ljava/lang/String;

    .line 672
    iput-object v0, v3, Ltv/periscope/android/api/UnfollowRequest;->userId:Ljava/lang/String;

    .line 674
    :try_start_10
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v1, v3}, Ltv/periscope/android/api/ApiService;->unfollow(Ltv/periscope/android/api/UnfollowRequest;)Ltv/periscope/android/api/UnfollowResponse;

    move-result-object v4

    .line 675
    iput-object v0, v4, Ltv/periscope/android/api/UnfollowResponse;->userId:Ljava/lang/String;

    .line 677
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->n:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_10
    .catch Lretrofit/RetrofitError; {:try_start_10 .. :try_end_10} :catch_10

    goto/16 :goto_0

    .line 678
    :catch_10
    move-exception v4

    .line 679
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->n:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 683
    :sswitch_10
    new-instance v3, Ltv/periscope/android/api/PsRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/PsRequest;-><init>()V

    .line 684
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/PsRequest;->cookie:Ljava/lang/String;

    .line 686
    :try_start_11
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->unban(Ltv/periscope/android/api/PsRequest;)Ltv/periscope/android/api/PsResponse;

    move-result-object v4

    .line 687
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->o:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_11
    .catch Lretrofit/RetrofitError; {:try_start_11 .. :try_end_11} :catch_11

    goto/16 :goto_0

    .line 688
    :catch_11
    move-exception v4

    .line 689
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->o:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 693
    :sswitch_11
    new-instance v3, Ltv/periscope/android/api/PsRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/PsRequest;-><init>()V

    .line 694
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/PsRequest;->cookie:Ljava/lang/String;

    .line 696
    :try_start_12
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->deactivateAccount(Ltv/periscope/android/api/PsRequest;)Ltv/periscope/android/api/PsResponse;

    move-result-object v4

    .line 697
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->p:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_12
    .catch Lretrofit/RetrofitError; {:try_start_12 .. :try_end_12} :catch_12

    goto/16 :goto_0

    .line 698
    :catch_12
    move-exception v4

    .line 699
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->p:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 703
    :sswitch_12
    const-string/jumbo v0, "e_user_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    new-instance v3, Ltv/periscope/android/api/GetUserRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/GetUserRequest;-><init>()V

    .line 705
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/GetUserRequest;->cookie:Ljava/lang/String;

    .line 706
    iput-object v0, v3, Ltv/periscope/android/api/GetUserRequest;->userId:Ljava/lang/String;

    .line 708
    :try_start_13
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getUser(Ltv/periscope/android/api/GetUserRequest;)Ltv/periscope/android/api/GetUserResponse;

    move-result-object v4

    .line 709
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->g:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_13
    .catch Lretrofit/RetrofitError; {:try_start_13 .. :try_end_13} :catch_13

    goto/16 :goto_0

    .line 710
    :catch_13
    move-exception v4

    .line 711
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->g:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 715
    :sswitch_13
    const-string/jumbo v0, "e_username"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    new-instance v3, Ltv/periscope/android/api/GetUserRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/GetUserRequest;-><init>()V

    .line 717
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/GetUserRequest;->cookie:Ljava/lang/String;

    .line 718
    iput-object v0, v3, Ltv/periscope/android/api/GetUserRequest;->username:Ljava/lang/String;

    .line 720
    :try_start_14
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getUser(Ltv/periscope/android/api/GetUserRequest;)Ltv/periscope/android/api/GetUserResponse;

    move-result-object v4

    .line 721
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->g:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_14
    .catch Lretrofit/RetrofitError; {:try_start_14 .. :try_end_14} :catch_14

    goto/16 :goto_0

    .line 722
    :catch_14
    move-exception v4

    .line 723
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->g:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 727
    :sswitch_14
    const-string/jumbo v0, "e_user_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 728
    new-instance v3, Ltv/periscope/android/api/GetFollowersRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/GetFollowersRequest;-><init>()V

    .line 729
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/GetFollowersRequest;->cookie:Ljava/lang/String;

    .line 730
    iput-object v6, v3, Ltv/periscope/android/api/GetFollowersRequest;->userId:Ljava/lang/String;

    .line 732
    :try_start_15
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getFollowers(Ltv/periscope/android/api/GetFollowersRequest;)Ljava/util/List;

    move-result-object v7

    .line 733
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->h:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    new-instance v4, Ltv/periscope/android/api/FetchUsersResponse;

    invoke-direct {v4, v6, v7}, Ltv/periscope/android/api/FetchUsersResponse;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_15
    .catch Lretrofit/RetrofitError; {:try_start_15 .. :try_end_15} :catch_15

    goto/16 :goto_0

    .line 735
    :catch_15
    move-exception v4

    .line 736
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->h:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 740
    :sswitch_15
    const-string/jumbo v0, "e_user_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 741
    new-instance v3, Ltv/periscope/android/api/GetFollowingRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/GetFollowingRequest;-><init>()V

    .line 742
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/GetFollowingRequest;->cookie:Ljava/lang/String;

    .line 743
    iput-object v6, v3, Ltv/periscope/android/api/GetFollowingRequest;->userId:Ljava/lang/String;

    .line 745
    :try_start_16
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getFollowing(Ltv/periscope/android/api/GetFollowingRequest;)Ljava/util/List;

    move-result-object v7

    .line 746
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->i:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    new-instance v4, Ltv/periscope/android/api/FetchUsersResponse;

    invoke-direct {v4, v6, v7}, Ltv/periscope/android/api/FetchUsersResponse;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_16
    .catch Lretrofit/RetrofitError; {:try_start_16 .. :try_end_16} :catch_16

    goto/16 :goto_0

    .line 748
    :catch_16
    move-exception v4

    .line 749
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->i:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 753
    :sswitch_16
    const-string/jumbo v0, "e_secret_key"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 754
    const-string/jumbo v3, "e_secret_token"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 755
    const-string/jumbo v3, "e_sign_up"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 756
    const-string/jumbo v3, "e_languages"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 757
    const-string/jumbo v3, "e_digits_ids"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 758
    new-instance v3, Ltv/periscope/android/api/SuggestedPeopleRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/SuggestedPeopleRequest;-><init>()V

    .line 759
    const-string/jumbo v10, "e_cookie"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ltv/periscope/android/api/SuggestedPeopleRequest;->cookie:Ljava/lang/String;

    .line 760
    iput-object v0, v3, Ltv/periscope/android/api/SuggestedPeopleRequest;->twitterSessionKey:Ljava/lang/String;

    .line 761
    iput-object v6, v3, Ltv/periscope/android/api/SuggestedPeopleRequest;->twitterSessionSecret:Ljava/lang/String;

    .line 762
    iput-boolean v7, v3, Ltv/periscope/android/api/SuggestedPeopleRequest;->signup:Z

    .line 763
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 764
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v3, Ltv/periscope/android/api/SuggestedPeopleRequest;->languages:[Ljava/lang/String;

    .line 765
    iget-object v0, v3, Ltv/periscope/android/api/SuggestedPeopleRequest;->languages:[Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 769
    :goto_3
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 770
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v3, Ltv/periscope/android/api/SuggestedPeopleRequest;->digitsIds:[Ljava/lang/String;

    .line 771
    iget-object v0, v3, Ltv/periscope/android/api/SuggestedPeopleRequest;->digitsIds:[Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 774
    :cond_3
    :try_start_17
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->suggestedPeople(Ltv/periscope/android/api/SuggestedPeopleRequest;)Ltv/periscope/android/api/SuggestedPeopleResponse;

    move-result-object v4

    .line 775
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->t:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_17
    .catch Lretrofit/RetrofitError; {:try_start_17 .. :try_end_17} :catch_17

    goto/16 :goto_0

    .line 776
    :catch_17
    move-exception v4

    .line 777
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->t:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 767
    :cond_4
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, v3, Ltv/periscope/android/api/SuggestedPeopleRequest;->languages:[Ljava/lang/String;

    goto :goto_3

    .line 781
    :sswitch_17
    const-string/jumbo v0, "extra_query"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    new-instance v3, Ltv/periscope/android/api/UserSearchRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/UserSearchRequest;-><init>()V

    .line 783
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/UserSearchRequest;->cookie:Ljava/lang/String;

    .line 784
    iput-object v0, v3, Ltv/periscope/android/api/UserSearchRequest;->search:Ljava/lang/String;

    .line 786
    :try_start_18
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->userSearch(Ltv/periscope/android/api/UserSearchRequest;)Ljava/util/List;

    move-result-object v4

    .line 787
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->u:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_18
    .catch Lretrofit/RetrofitError; {:try_start_18 .. :try_end_18} :catch_18

    goto/16 :goto_0

    .line 788
    :catch_18
    move-exception v4

    .line 789
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->u:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 793
    :sswitch_18
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->broadcastSearch(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 796
    :sswitch_19
    new-instance v3, Ltv/periscope/android/api/MainBroadcastFollowingRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/MainBroadcastFollowingRequest;-><init>()V

    .line 797
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/MainBroadcastFollowingRequest;->cookie:Ljava/lang/String;

    .line 799
    :try_start_19
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->followingBroadcastFeed(Ltv/periscope/android/api/MainBroadcastFollowingRequest;)Ljava/util/List;

    move-result-object v4

    .line 801
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->x:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->convert(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_19
    .catch Lretrofit/RetrofitError; {:try_start_19 .. :try_end_19} :catch_19

    goto/16 :goto_0

    .line 802
    :catch_19
    move-exception v4

    .line 803
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->x:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 807
    :sswitch_1a
    new-instance v3, Ltv/periscope/android/api/MainBroadcastFeaturedRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/MainBroadcastFeaturedRequest;-><init>()V

    .line 808
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/MainBroadcastFeaturedRequest;->cookie:Ljava/lang/String;

    .line 810
    :try_start_1a
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->featuredBroadcastFeed(Ltv/periscope/android/api/MainBroadcastFeaturedRequest;)Ljava/util/List;

    move-result-object v4

    .line 812
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->w:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->convert(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_1a
    .catch Lretrofit/RetrofitError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto/16 :goto_0

    .line 813
    :catch_1a
    move-exception v4

    .line 814
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->w:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 819
    :sswitch_1b
    new-instance v3, Ltv/periscope/android/api/service/channels/GetSuggestedChannelsRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/service/channels/GetSuggestedChannelsRequest;-><init>()V

    .line 820
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/service/channels/GetSuggestedChannelsRequest;->cookie:Ljava/lang/String;

    .line 821
    const-string/jumbo v0, "e_service_auth_token"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    :try_start_1b
    invoke-direct {p0, v0}, Ltv/periscope/android/api/ApiRunnable;->verifyAuthToken(Ljava/lang/String;)V

    .line 824
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mChannelsService:Ltv/periscope/android/api/service/channels/ChannelsService;

    invoke-interface {v1, v0}, Ltv/periscope/android/api/service/channels/ChannelsService;->getChannels(Ljava/lang/String;)Ltv/periscope/android/api/service/channels/PsGetChannelsResponse;

    move-result-object v4

    .line 825
    new-instance v0, Ltv/periscope/android/event/c;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->aj:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    iget-object v4, v4, Ltv/periscope/android/api/service/channels/PsGetChannelsResponse;->channels:Ljava/util/List;

    .line 826
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->convertPsChannels(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_1b
    .catch Lretrofit/RetrofitError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto/16 :goto_0

    .line 827
    :catch_1b
    move-exception v11

    .line 828
    new-instance v6, Ltv/periscope/android/event/c;

    sget-object v7, Ltv/periscope/android/event/ApiEvent$Type;->aj:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v8, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    sget-object v10, Ltv/periscope/android/api/BackendServiceName;->CHANNELS:Ltv/periscope/android/api/BackendServiceName;

    move-object v9, v3

    move v12, v5

    move-object v13, p0

    invoke-direct/range {v6 .. v13}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Lretrofit/RetrofitError;ZLtv/periscope/android/api/ApiRunnable;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 833
    :sswitch_1c
    new-instance v3, Ltv/periscope/android/api/service/channels/GetBroadcastsForChannelRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/service/channels/GetBroadcastsForChannelRequest;-><init>()V

    .line 834
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/service/channels/GetBroadcastsForChannelRequest;->cookie:Ljava/lang/String;

    .line 835
    const-string/jumbo v0, "e_service_auth_token"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    const-string/jumbo v1, "e_service_channel_id"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 838
    :try_start_1c
    invoke-direct {p0, v0}, Ltv/periscope/android/api/ApiRunnable;->verifyAuthToken(Ljava/lang/String;)V

    .line 839
    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mChannelsService:Ltv/periscope/android/api/service/channels/ChannelsService;

    invoke-interface {v2, v0, v1}, Ltv/periscope/android/api/service/channels/ChannelsService;->getBroadcastsForChannel(Ljava/lang/String;Ljava/lang/String;)Ltv/periscope/android/api/service/channels/PsGetBroadcastsForChannelResponse;

    move-result-object v0

    .line 842
    new-instance v4, Ltv/periscope/android/api/service/channels/GetBroadcastsForChannelData;

    iget-object v0, v0, Ltv/periscope/android/api/service/channels/PsGetBroadcastsForChannelResponse;->bids:Ljava/util/List;

    invoke-direct {p0, v0}, Ltv/periscope/android/api/ApiRunnable;->convertBids(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Ltv/periscope/android/api/service/channels/GetBroadcastsForChannelData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 843
    new-instance v0, Ltv/periscope/android/event/c;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ao:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_1c
    .catch Lretrofit/RetrofitError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto/16 :goto_0

    .line 844
    :catch_1c
    move-exception v11

    .line 845
    new-instance v6, Ltv/periscope/android/event/c;

    sget-object v7, Ltv/periscope/android/event/ApiEvent$Type;->ao:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v8, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    sget-object v10, Ltv/periscope/android/api/BackendServiceName;->CHANNELS:Ltv/periscope/android/api/BackendServiceName;

    move-object v9, v3

    move v12, v5

    move-object v13, p0

    invoke-direct/range {v6 .. v13}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Lretrofit/RetrofitError;ZLtv/periscope/android/api/ApiRunnable;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 850
    :sswitch_1d
    const-string/jumbo v0, "e_service_auth_token"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    const-string/jumbo v1, "e_service_channel_name"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 852
    const-string/jumbo v2, "e_languages"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 854
    :try_start_1d
    invoke-direct {p0, v0}, Ltv/periscope/android/api/ApiRunnable;->verifyAuthToken(Ljava/lang/String;)V

    .line 855
    iget-object v3, p0, Ltv/periscope/android/api/ApiRunnable;->mChannelsService:Ltv/periscope/android/api/service/channels/ChannelsService;

    invoke-interface {v3, v0, v1, v2}, Ltv/periscope/android/api/service/channels/ChannelsService;->searchChannels(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ltv/periscope/android/api/service/channels/PsGetChannelSearchResponse;

    move-result-object v4

    .line 856
    new-instance v0, Ltv/periscope/android/event/c;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ap:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v4, Ltv/periscope/android/api/service/channels/PsGetChannelSearchResponse;->channels:Ljava/util/List;

    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->convertPsChannels(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_1d
    .catch Lretrofit/RetrofitError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto/16 :goto_0

    .line 857
    :catch_1d
    move-exception v11

    .line 858
    new-instance v6, Ltv/periscope/android/event/c;

    sget-object v7, Ltv/periscope/android/event/ApiEvent$Type;->ap:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v8, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    sget-object v10, Ltv/periscope/android/api/BackendServiceName;->CHANNELS:Ltv/periscope/android/api/BackendServiceName;

    move v12, v5

    move-object v13, p0

    invoke-direct/range {v6 .. v13}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Lretrofit/RetrofitError;ZLtv/periscope/android/api/ApiRunnable;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 863
    :sswitch_1e
    const-string/jumbo v0, "e_service_auth_token"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    const-string/jumbo v1, "e_service_channel_id"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 866
    :try_start_1e
    invoke-direct {p0, v0}, Ltv/periscope/android/api/ApiRunnable;->verifyAuthToken(Ljava/lang/String;)V

    .line 867
    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mChannelsService:Ltv/periscope/android/api/service/channels/ChannelsService;

    invoke-interface {v2, v0, v1}, Ltv/periscope/android/api/service/channels/ChannelsService;->getChannelInfo(Ljava/lang/String;Ljava/lang/String;)Ltv/periscope/android/api/service/channels/PsGetChannelInfoResponse;

    move-result-object v4

    .line 868
    new-instance v0, Ltv/periscope/android/event/c;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->aq:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v4, Ltv/periscope/android/api/service/channels/PsGetChannelInfoResponse;->channel:Ltv/periscope/android/api/service/channels/PsChannel;

    invoke-virtual {v4}, Ltv/periscope/android/api/service/channels/PsChannel;->create()Ltv/periscope/model/s;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_1e
    .catch Lretrofit/RetrofitError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto/16 :goto_0

    .line 870
    :catch_1e
    move-exception v11

    .line 871
    new-instance v6, Ltv/periscope/android/event/c;

    sget-object v7, Ltv/periscope/android/event/ApiEvent$Type;->aq:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v8, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    sget-object v10, Ltv/periscope/android/api/BackendServiceName;->CHANNELS:Ltv/periscope/android/api/BackendServiceName;

    move v12, v5

    move-object v13, p0

    invoke-direct/range {v6 .. v13}, Ltv/periscope/android/event/c;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Lretrofit/RetrofitError;ZLtv/periscope/android/api/ApiRunnable;)V

    move-object v0, v6

    goto/16 :goto_0

    .line 876
    :sswitch_1f
    const-string/jumbo v0, "extra_ids"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 877
    new-instance v3, Ltv/periscope/android/api/GetBroadcastsRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/GetBroadcastsRequest;-><init>()V

    .line 878
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/GetBroadcastsRequest;->cookie:Ljava/lang/String;

    .line 879
    iput-object v0, v3, Ltv/periscope/android/api/GetBroadcastsRequest;->ids:Ljava/util/ArrayList;

    .line 880
    const-string/jumbo v0, "e_only_public_publish"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Ltv/periscope/android/api/GetBroadcastsRequest;->onlyPublicPublish:Z

    .line 884
    const-string/jumbo v0, "e_event_type"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    if-eqz v0, :cond_5

    .line 886
    invoke-static {v0}, Ltv/periscope/android/event/ApiEvent$Type;->valueOf(Ljava/lang/String;)Ltv/periscope/android/event/ApiEvent$Type;

    move-result-object v1

    .line 891
    :goto_4
    :try_start_1f
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v2, "getting broadcasts"

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getBroadcasts(Ltv/periscope/android/api/GetBroadcastsRequest;)Ljava/util/List;

    move-result-object v4

    .line 893
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v2, "getBroadcasts succeeded"

    invoke-static {v0, v2}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->convert(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_1f
    .catch Lretrofit/RetrofitError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto/16 :goto_0

    .line 895
    :catch_1f
    move-exception v4

    .line 896
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v2, "getBroadcasts failed"

    invoke-static {v0, v2, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 897
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 888
    :cond_5
    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->y:Ltv/periscope/android/event/ApiEvent$Type;

    goto :goto_4

    .line 901
    :sswitch_20
    new-instance v3, Ltv/periscope/android/api/service/highlights/GetBroadcastTrailerRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/service/highlights/GetBroadcastTrailerRequest;-><init>()V

    .line 902
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/service/highlights/GetBroadcastTrailerRequest;->broadcastId:Ljava/lang/String;

    .line 903
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/service/highlights/GetBroadcastTrailerRequest;->cookie:Ljava/lang/String;

    .line 906
    :try_start_20
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getBroadcastReplayTrailer(Ltv/periscope/android/api/service/highlights/GetBroadcastTrailerRequest;)Ltv/periscope/android/api/service/highlights/GetBroadcastTrailerResponse;

    move-result-object v4

    .line 907
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->at:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_20
    .catch Lretrofit/RetrofitError; {:try_start_20 .. :try_end_20} :catch_20

    goto/16 :goto_0

    .line 908
    :catch_20
    move-exception v4

    .line 909
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->at:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 913
    :sswitch_21
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 914
    const-string/jumbo v1, "e_user_id"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 915
    new-instance v3, Ltv/periscope/android/api/GetBroadcastViewersRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/GetBroadcastViewersRequest;-><init>()V

    .line 916
    const-string/jumbo v2, "e_cookie"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Ltv/periscope/android/api/GetBroadcastViewersRequest;->cookie:Ljava/lang/String;

    .line 917
    iput-object v0, v3, Ltv/periscope/android/api/GetBroadcastViewersRequest;->id:Ljava/lang/String;

    .line 919
    :try_start_21
    const-string/jumbo v2, "PsApi"

    const-string/jumbo v4, "getting broadcast viewers"

    invoke-static {v2, v4}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v2, v3}, Ltv/periscope/android/api/ApiService;->getBroadcastViewers(Ltv/periscope/android/api/GetBroadcastViewersRequest;)Ltv/periscope/android/api/GetBroadcastViewersResponse;

    move-result-object v4

    .line 921
    const-string/jumbo v2, "PsApi"

    const-string/jumbo v6, "getBroadcastViewers succeeded"

    invoke-static {v2, v6}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iput-object v0, v4, Ltv/periscope/android/api/GetBroadcastViewersResponse;->broadcastId:Ljava/lang/String;

    .line 923
    iput-object v1, v4, Ltv/periscope/android/api/GetBroadcastViewersResponse;->broadcasterId:Ljava/lang/String;

    .line 924
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->B:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_21
    .catch Lretrofit/RetrofitError; {:try_start_21 .. :try_end_21} :catch_21

    goto/16 :goto_0

    .line 925
    :catch_21
    move-exception v4

    .line 926
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "getBroadcastViewers failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 927
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->B:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 931
    :sswitch_22
    new-instance v3, Ltv/periscope/android/api/RankedBroadcastsRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/RankedBroadcastsRequest;-><init>()V

    .line 932
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/RankedBroadcastsRequest;->cookie:Ljava/lang/String;

    .line 933
    const-string/jumbo v0, "e_languages"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 934
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 935
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v3, Ltv/periscope/android/api/RankedBroadcastsRequest;->languages:[Ljava/lang/String;

    .line 936
    iget-object v1, v3, Ltv/periscope/android/api/RankedBroadcastsRequest;->languages:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 940
    :goto_5
    const-string/jumbo v0, "e_use_personal"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Ltv/periscope/android/api/RankedBroadcastsRequest;->usePersonal:Z

    .line 941
    const-string/jumbo v0, "e_use_ml"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Ltv/periscope/android/api/RankedBroadcastsRequest;->useML:Z

    .line 943
    :try_start_22
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->rankedBroadcastFeed(Ltv/periscope/android/api/RankedBroadcastsRequest;)Ljava/util/List;

    move-result-object v4

    .line 944
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->D:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->convert(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_22
    .catch Lretrofit/RetrofitError; {:try_start_22 .. :try_end_22} :catch_22

    goto/16 :goto_0

    .line 945
    :catch_22
    move-exception v4

    .line 946
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->D:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 938
    :cond_6
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, v3, Ltv/periscope/android/api/RankedBroadcastsRequest;->languages:[Ljava/lang/String;

    goto :goto_5

    .line 950
    :sswitch_23
    new-instance v3, Ltv/periscope/android/api/RankedBroadcastsRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/RankedBroadcastsRequest;-><init>()V

    .line 951
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/RankedBroadcastsRequest;->cookie:Ljava/lang/String;

    .line 952
    const-string/jumbo v0, "e_languages"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 954
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v3, Ltv/periscope/android/api/RankedBroadcastsRequest;->languages:[Ljava/lang/String;

    .line 955
    iget-object v1, v3, Ltv/periscope/android/api/RankedBroadcastsRequest;->languages:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 959
    :goto_6
    const-string/jumbo v0, "e_use_personal"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Ltv/periscope/android/api/RankedBroadcastsRequest;->usePersonal:Z

    .line 960
    const-string/jumbo v0, "e_use_ml"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Ltv/periscope/android/api/RankedBroadcastsRequest;->useML:Z

    .line 962
    :try_start_23
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->rankedBroadcastFeed(Ltv/periscope/android/api/RankedBroadcastsRequest;)Ljava/util/List;

    move-result-object v4

    .line 963
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ai:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    .line 964
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->convert(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_23
    .catch Lretrofit/RetrofitError; {:try_start_23 .. :try_end_23} :catch_23

    goto/16 :goto_0

    .line 965
    :catch_23
    move-exception v4

    .line 966
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ai:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 957
    :cond_7
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, v3, Ltv/periscope/android/api/RankedBroadcastsRequest;->languages:[Ljava/lang/String;

    goto :goto_6

    .line 971
    :sswitch_24
    :try_start_24
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0}, Ltv/periscope/android/api/ApiService;->getTrendingLocations()Ljava/util/List;

    move-result-object v4

    .line 972
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ak:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_24
    .catch Lretrofit/RetrofitError; {:try_start_24 .. :try_end_24} :catch_24

    goto/16 :goto_0

    .line 973
    :catch_24
    move-exception v10

    .line 974
    new-instance v6, Ltv/periscope/android/event/ApiEvent;

    sget-object v7, Ltv/periscope/android/event/ApiEvent$Type;->ak:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v8, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    move v11, v5

    invoke-direct/range {v6 .. v11}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    move-object v0, v6

    goto/16 :goto_0

    .line 978
    :sswitch_25
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->getMapBroadcastFeed(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 981
    :sswitch_26
    new-instance v3, Ltv/periscope/android/api/BroadcastRankRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/BroadcastRankRequest;-><init>()V

    .line 982
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/BroadcastRankRequest;->cookie:Ljava/lang/String;

    .line 983
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/BroadcastRankRequest;->broadcastId:Ljava/lang/String;

    .line 985
    :try_start_25
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getBroadcastRank(Ltv/periscope/android/api/BroadcastRankRequest;)Ltv/periscope/android/api/BroadcastRankResponse;

    move-result-object v4

    .line 986
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->P:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_25
    .catch Lretrofit/RetrofitError; {:try_start_25 .. :try_end_25} :catch_25

    goto/16 :goto_0

    .line 987
    :catch_25
    move-exception v4

    .line 988
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->P:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 992
    :sswitch_27
    new-instance v3, Ltv/periscope/android/api/GetBroadcastRankParametersRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/GetBroadcastRankParametersRequest;-><init>()V

    .line 993
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/GetBroadcastRankParametersRequest;->cookie:Ljava/lang/String;

    .line 995
    :try_start_26
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getBroadcastsRankParameters(Ltv/periscope/android/api/GetBroadcastRankParametersRequest;)Ltv/periscope/android/api/GetBroadcastRankParametersResponse;

    move-result-object v4

    .line 996
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->Q:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_26
    .catch Lretrofit/RetrofitError; {:try_start_26 .. :try_end_26} :catch_26

    goto/16 :goto_0

    .line 997
    :catch_26
    move-exception v4

    .line 998
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->Q:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 1002
    :sswitch_28
    new-instance v3, Ltv/periscope/android/api/SetBroadcastRankParametersRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/SetBroadcastRankParametersRequest;-><init>()V

    .line 1003
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/SetBroadcastRankParametersRequest;->cookie:Ljava/lang/String;

    .line 1004
    const-string/jumbo v0, "e_rank_stickiness"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/SetBroadcastRankParametersRequest;->stickinessCoefficient:Ljava/lang/String;

    .line 1005
    const-string/jumbo v0, "e_rank_verified"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/SetBroadcastRankParametersRequest;->verifiedCoefficient:Ljava/lang/String;

    .line 1006
    const-string/jumbo v0, "e_rank_viewers"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/SetBroadcastRankParametersRequest;->viewersCountCoefficient:Ljava/lang/String;

    .line 1007
    const-string/jumbo v0, "e_rank_report_ratio"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/SetBroadcastRankParametersRequest;->reportRatioCoefficient:Ljava/lang/String;

    .line 1008
    const-string/jumbo v0, "e_rank_has_location"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/SetBroadcastRankParametersRequest;->hasLocationCoefficient:Ljava/lang/String;

    .line 1009
    const-string/jumbo v0, "e_rank_shares"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/SetBroadcastRankParametersRequest;->sharesCoefficient:Ljava/lang/String;

    .line 1010
    const-string/jumbo v0, "e_rank_cortex_score"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/SetBroadcastRankParametersRequest;->cortexScoreCoefficient:Ljava/lang/String;

    .line 1011
    const-string/jumbo v0, "e_rank_decay"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/SetBroadcastRankParametersRequest;->decayCoefficient:Ljava/lang/String;

    .line 1012
    const-string/jumbo v0, "e_rank_decay_half_life"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/SetBroadcastRankParametersRequest;->decayHalfLife:Ljava/lang/String;

    .line 1014
    :try_start_27
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->setBroadcastsRankParameters(Ltv/periscope/android/api/SetBroadcastRankParametersRequest;)Ltv/periscope/android/api/SetBroadcastRankParametersResponse;

    move-result-object v4

    .line 1015
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->R:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_27
    .catch Lretrofit/RetrofitError; {:try_start_27 .. :try_end_27} :catch_27

    goto/16 :goto_0

    .line 1016
    :catch_27
    move-exception v4

    .line 1017
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->R:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 1022
    :sswitch_29
    :try_start_28
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ltv/periscope/android/api/ApiService;->supportedLanguages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1023
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->S:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_28
    .catch Lretrofit/RetrofitError; {:try_start_28 .. :try_end_28} :catch_28

    goto/16 :goto_0

    .line 1024
    :catch_28
    move-exception v10

    .line 1025
    new-instance v6, Ltv/periscope/android/event/ApiEvent;

    sget-object v7, Ltv/periscope/android/event/ApiEvent$Type;->S:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v8, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    move v11, v5

    invoke-direct/range {v6 .. v11}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    move-object v0, v6

    goto/16 :goto_0

    .line 1029
    :sswitch_2a
    const-string/jumbo v0, "extra_width"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1030
    const-string/jumbo v1, "extra_height"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1031
    const-string/jumbo v2, "e_region"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1032
    const-string/jumbo v3, "persistent"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1033
    const-string/jumbo v3, "e_has_moderation"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1035
    new-instance v3, Ltv/periscope/android/api/CreateBroadcastPersistenceRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/CreateBroadcastPersistenceRequest;-><init>()V

    .line 1036
    const-string/jumbo v8, "e_cookie"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ltv/periscope/android/api/CreateBroadcastPersistenceRequest;->cookie:Ljava/lang/String;

    .line 1037
    iput-wide v10, v3, Ltv/periscope/android/api/CreateBroadcastPersistenceRequest;->lat:D

    .line 1038
    iput-wide v10, v3, Ltv/periscope/android/api/CreateBroadcastPersistenceRequest;->lng:D

    .line 1039
    iput v0, v3, Ltv/periscope/android/api/CreateBroadcastPersistenceRequest;->width:I

    .line 1040
    iput v1, v3, Ltv/periscope/android/api/CreateBroadcastPersistenceRequest;->height:I

    .line 1041
    iput-object v2, v3, Ltv/periscope/android/api/CreateBroadcastPersistenceRequest;->region:Ljava/lang/String;

    .line 1042
    iput-boolean v6, v3, Ltv/periscope/android/api/CreateBroadcastPersistenceRequest;->persistent:Z

    .line 1044
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1045
    iput-object v0, v3, Ltv/periscope/android/api/CreateBroadcastPersistenceRequest;->pspVersion:[I

    .line 1046
    iput-boolean v7, v3, Ltv/periscope/android/api/CreateBroadcastPersistenceRequest;->hasModeration:Z

    .line 1049
    :try_start_29
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "creating Broadcast with persistence"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->startBroadcast(Ltv/periscope/android/api/CreateBroadcastRequest;)Ltv/periscope/android/api/CreateBroadcastResponse;

    move-result-object v4

    .line 1051
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "createBroadcast with persistence succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->G:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-virtual {v4}, Ltv/periscope/android/api/CreateBroadcastResponse;->create()Ltv/periscope/model/w;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_29
    .catch Lretrofit/RetrofitError; {:try_start_29 .. :try_end_29} :catch_29

    goto/16 :goto_0

    .line 1054
    :catch_29
    move-exception v4

    .line 1055
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "createBroadcast with persistence failed "

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1056
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->G:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 1060
    :sswitch_2b
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->replayThumbnailPlaylist(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1063
    :sswitch_2c
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    const-string/jumbo v1, "e_title"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1065
    const-string/jumbo v2, "e_locked_ids"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1066
    const-string/jumbo v3, "e_has_loc"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1067
    const-string/jumbo v3, "e_lat"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    .line 1068
    const-string/jumbo v3, "e_long"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    .line 1069
    const-string/jumbo v3, "e_following_only_chat"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1070
    new-instance v3, Ltv/periscope/android/api/PublishBroadcastRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/PublishBroadcastRequest;-><init>()V

    .line 1071
    const-string/jumbo v10, "e_cookie"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Ltv/periscope/android/api/PublishBroadcastRequest;->cookie:Ljava/lang/String;

    .line 1072
    iput-object v0, v3, Ltv/periscope/android/api/PublishBroadcastRequest;->broadcastId:Ljava/lang/String;

    .line 1073
    iput-object v1, v3, Ltv/periscope/android/api/PublishBroadcastRequest;->title:Ljava/lang/String;

    .line 1074
    iput-object v2, v3, Ltv/periscope/android/api/PublishBroadcastRequest;->lockIds:Ljava/util/ArrayList;

    .line 1075
    iput-boolean v6, v3, Ltv/periscope/android/api/PublishBroadcastRequest;->hasLocation:Z

    .line 1076
    iput v7, v3, Ltv/periscope/android/api/PublishBroadcastRequest;->lat:F

    .line 1077
    iput v8, v3, Ltv/periscope/android/api/PublishBroadcastRequest;->lng:F

    .line 1078
    iput-boolean v9, v3, Ltv/periscope/android/api/PublishBroadcastRequest;->followingOnlyChat:Z

    .line 1079
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/PublishBroadcastRequest;->locale:Ljava/lang/String;

    .line 1080
    const-string/jumbo v0, "e_bit_rate"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Ltv/periscope/android/api/PublishBroadcastRequest;->bitRate:I

    .line 1081
    const-string/jumbo v0, "e_camera_rotation"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Ltv/periscope/android/api/PublishBroadcastRequest;->cameraRotation:I

    .line 1083
    :try_start_2a
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "publishing broadcast"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->publishBroadcast(Ltv/periscope/android/api/PublishBroadcastRequest;)Ltv/periscope/android/api/PublishBroadcastResponse;

    move-result-object v4

    .line 1085
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "publishBroadcast succeeded"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->H:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_2a
    .catch Lretrofit/RetrofitError; {:try_start_2a .. :try_end_2a} :catch_2a

    goto/16 :goto_0

    .line 1088
    :catch_2a
    move-exception v4

    .line 1089
    const-string/jumbo v0, "PsApi"

    const-string/jumbo v1, "publishBroadcast failed"

    invoke-static {v0, v1, v4}, Ltv/periscope/android/util/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1090
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->H:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 1094
    :sswitch_2d
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->deleteBroadcast(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1097
    :sswitch_2e
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->pingWatching(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1100
    :sswitch_2f
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->endWatching(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1103
    :sswitch_30
    const-string/jumbo v0, "e_user_follow_enabled"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1104
    const-string/jumbo v3, "e_autosave_enabled"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1105
    const-string/jumbo v3, "e_autodelete_enabled"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1106
    const-string/jumbo v3, "e_viewer_moderation_enabled"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 1107
    const-string/jumbo v3, "e_broadcast_moderation_enabled"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1108
    const-string/jumbo v3, "e_find_my_profile_enabled"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1109
    new-instance v3, Ltv/periscope/android/api/SetSettingsRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/SetSettingsRequest;-><init>()V

    .line 1110
    new-instance v11, Ltv/periscope/android/api/PsSettings;

    invoke-direct {v11}, Ltv/periscope/android/api/PsSettings;-><init>()V

    .line 1111
    iput-boolean v0, v11, Ltv/periscope/android/api/PsSettings;->isUserFollowEnabled:Z

    .line 1112
    iput-boolean v6, v11, Ltv/periscope/android/api/PsSettings;->isAutoSaveEnabled:Z

    .line 1113
    iput-boolean v7, v11, Ltv/periscope/android/api/PsSettings;->isAutoDeleteEnabled:Z

    .line 1114
    if-nez v8, :cond_8

    move v0, v1

    :goto_7
    iput-boolean v0, v11, Ltv/periscope/android/api/PsSettings;->isViewerModerationDisabled:Z

    .line 1115
    if-nez v9, :cond_9

    move v0, v1

    :goto_8
    iput-boolean v0, v11, Ltv/periscope/android/api/PsSettings;->isBroadcastModerationDisabled:Z

    .line 1116
    if-nez v10, :cond_a

    :goto_9
    iput-boolean v1, v11, Ltv/periscope/android/api/PsSettings;->isFindByDigitsIdDisabled:Z

    .line 1117
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/SetSettingsRequest;->cookie:Ljava/lang/String;

    .line 1118
    iput-object v11, v3, Ltv/periscope/android/api/SetSettingsRequest;->settings:Ltv/periscope/android/api/PsSettings;

    .line 1120
    :try_start_2b
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->setSettings(Ltv/periscope/android/api/SetSettingsRequest;)Ltv/periscope/android/api/SetSettingsResponse;

    move-result-object v4

    .line 1121
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->T:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_2b
    .catch Lretrofit/RetrofitError; {:try_start_2b .. :try_end_2b} :catch_2b

    goto/16 :goto_0

    .line 1122
    :catch_2b
    move-exception v4

    .line 1123
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->T:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 1114
    goto :goto_7

    :cond_9
    move v0, v2

    .line 1115
    goto :goto_8

    :cond_a
    move v1, v2

    .line 1116
    goto :goto_9

    .line 1127
    :sswitch_31
    new-instance v3, Ltv/periscope/android/api/GetSettingsRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/GetSettingsRequest;-><init>()V

    .line 1128
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/GetSettingsRequest;->cookie:Ljava/lang/String;

    .line 1130
    :try_start_2c
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->getSettings(Ltv/periscope/android/api/GetSettingsRequest;)Ltv/periscope/android/api/GetSettingsResponse;

    move-result-object v4

    .line 1131
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->O:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_2c
    .catch Lretrofit/RetrofitError; {:try_start_2c .. :try_end_2c} :catch_2c

    goto/16 :goto_0

    .line 1132
    :catch_2c
    move-exception v4

    .line 1133
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->O:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 1137
    :sswitch_32
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->endBroadcast(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1140
    :sswitch_33
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->pingBroadcast(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1143
    :sswitch_34
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->shareBroadcast(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1146
    :sswitch_35
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->reportBroadcast(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1149
    :sswitch_36
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->adjustBroadcastRank(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1152
    :sswitch_37
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->getBroadcastShareUrl(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1155
    :sswitch_38
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    new-instance v3, Ltv/periscope/android/api/BroadcastSummaryRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/BroadcastSummaryRequest;-><init>()V

    .line 1157
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/BroadcastSummaryRequest;->cookie:Ljava/lang/String;

    .line 1158
    iput-object v0, v3, Ltv/periscope/android/api/BroadcastSummaryRequest;->broadcastId:Ljava/lang/String;

    .line 1160
    :try_start_2d
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->broadcastSummary(Ltv/periscope/android/api/BroadcastSummaryRequest;)Ltv/periscope/android/api/BroadcastSummaryResponse;

    move-result-object v4

    .line 1161
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->W:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-virtual {v4}, Ltv/periscope/android/api/BroadcastSummaryResponse;->create()Ltv/periscope/model/q;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_2d
    .catch Lretrofit/RetrofitError; {:try_start_2d .. :try_end_2d} :catch_2d

    goto/16 :goto_0

    .line 1162
    :catch_2d
    move-exception v4

    .line 1163
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->W:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 1167
    :sswitch_39
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    check-cast v0, Ltv/periscope/android/api/BlockRequest;

    invoke-direct {p0, v1, v0, v5}, Ltv/periscope/android/api/ApiRunnable;->block(Ljava/lang/String;Ltv/periscope/android/api/BlockRequest;Z)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1170
    :sswitch_3a
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->unblock(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1173
    :sswitch_3b
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->getBlocked(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1176
    :sswitch_3c
    const-string/jumbo v0, "e_token"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    new-instance v3, Ltv/periscope/android/api/BroadcastIdForTokenRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/BroadcastIdForTokenRequest;-><init>()V

    .line 1178
    const-string/jumbo v1, "e_cookie"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Ltv/periscope/android/api/BroadcastIdForTokenRequest;->cookie:Ljava/lang/String;

    .line 1179
    iput-object v0, v3, Ltv/periscope/android/api/BroadcastIdForTokenRequest;->token:Ljava/lang/String;

    .line 1181
    :try_start_2e
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->aa:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    iget-object v4, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    .line 1182
    invoke-interface {v4, v3}, Ltv/periscope/android/api/ApiService;->getBroadcastIdForShareToken(Ltv/periscope/android/api/BroadcastIdForTokenRequest;)Ltv/periscope/android/api/BroadcastResponse;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_2e
    .catch Lretrofit/RetrofitError; {:try_start_2e .. :try_end_2e} :catch_2e

    goto/16 :goto_0

    .line 1183
    :catch_2e
    move-exception v4

    .line 1184
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->aa:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 1188
    :sswitch_3d
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->uploadToast(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_3e
    move-object v3, v0

    .line 1191
    check-cast v3, Ltv/periscope/android/api/UserBroadcastsRequest;

    .line 1193
    :try_start_2f
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->userBroadcasts(Ltv/periscope/android/api/UserBroadcastsRequest;)Ljava/util/List;

    move-result-object v6

    .line 1194
    iget-object v0, v3, Ltv/periscope/android/api/UserBroadcastsRequest;->userId:Ljava/lang/String;

    invoke-static {v0}, Ldod;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1195
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ac:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    iget-object v4, v3, Ltv/periscope/android/api/UserBroadcastsRequest;->userId:Ljava/lang/String;

    .line 1196
    invoke-direct {p0, v6}, Ltv/periscope/android/api/ApiRunnable;->convert(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    invoke-static {v4, v6}, Ltv/periscope/model/ab;->a(Ljava/lang/String;Ljava/util/List;)Ltv/periscope/model/ab;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_2f
    .catch Lretrofit/RetrofitError; {:try_start_2f .. :try_end_2f} :catch_2f

    goto/16 :goto_0

    .line 1201
    :catch_2f
    move-exception v4

    .line 1202
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ac:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 1197
    :cond_b
    :try_start_30
    iget-object v0, v3, Ltv/periscope/android/api/UserBroadcastsRequest;->username:Ljava/lang/String;

    invoke-static {v0}, Ldod;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1198
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ac:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    iget-object v4, v3, Ltv/periscope/android/api/UserBroadcastsRequest;->username:Ljava/lang/String;

    .line 1199
    invoke-direct {p0, v6}, Ltv/periscope/android/api/ApiRunnable;->convert(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    invoke-static {v4, v6}, Ltv/periscope/model/ab;->b(Ljava/lang/String;Ljava/util/List;)Ltv/periscope/model/ab;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_30
    .catch Lretrofit/RetrofitError; {:try_start_30 .. :try_end_30} :catch_2f

    goto/16 :goto_0

    .line 1206
    :cond_c
    :sswitch_3f
    const-string/jumbo v0, "e_file_dir"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1207
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1208
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1209
    new-instance v2, Ltv/periscope/android/api/ApiRunnable$1;

    const-string/jumbo v3, "image/jpeg"

    invoke-direct {v2, p0, v3, v1}, Ltv/periscope/android/api/ApiRunnable$1;-><init>(Ltv/periscope/android/api/ApiRunnable;Ljava/lang/String;Ljava/io/File;)V

    .line 1217
    :try_start_31
    iget-object v1, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v1, v0, v2}, Ltv/periscope/android/api/ApiService;->uploadProfileImage(Ljava/lang/String;Lretrofit/mime/TypedFile;)Ltv/periscope/android/api/UploadProfileImageResponse;

    move-result-object v4

    .line 1218
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ad:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_31
    .catch Lretrofit/RetrofitError; {:try_start_31 .. :try_end_31} :catch_30

    goto/16 :goto_0

    .line 1219
    :catch_30
    move-exception v10

    .line 1220
    new-instance v6, Ltv/periscope/android/event/ApiEvent;

    sget-object v7, Ltv/periscope/android/event/ApiEvent$Type;->ad:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v8, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    move v11, v5

    invoke-direct/range {v6 .. v11}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    move-object v0, v6

    goto/16 :goto_0

    .line 1224
    :sswitch_40
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->updateProfileDisplayName(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1227
    :sswitch_41
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->updateProfileDescription(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_42
    move-object v3, v0

    .line 1230
    check-cast v3, Ltv/periscope/android/api/PlaybackMetaRequest;

    .line 1232
    :try_start_32
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->playbackMeta(Ltv/periscope/android/api/PlaybackMetaRequest;)Ltv/periscope/android/api/PlaybackMetaResponse;

    move-result-object v4

    .line 1233
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ag:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_32
    .catch Lretrofit/RetrofitError; {:try_start_32 .. :try_end_32} :catch_31

    goto/16 :goto_0

    .line 1234
    :catch_31
    move-exception v4

    .line 1235
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ag:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    :sswitch_43
    move-object v3, v0

    .line 1239
    check-cast v3, Ltv/periscope/android/api/BroadcastMetaRequest;

    .line 1241
    :try_start_33
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->broadcastMeta(Ltv/periscope/android/api/BroadcastMetaRequest;)Ltv/periscope/android/api/BroadcastMetaResponse;

    move-result-object v4

    .line 1242
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ah:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_33
    .catch Lretrofit/RetrofitError; {:try_start_33 .. :try_end_33} :catch_32

    goto/16 :goto_0

    .line 1243
    :catch_32
    move-exception v4

    .line 1244
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->ah:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 1248
    :sswitch_44
    new-instance v3, Ltv/periscope/android/api/PersistBroadcastRequest;

    invoke-direct {v3}, Ltv/periscope/android/api/PersistBroadcastRequest;-><init>()V

    .line 1249
    const-string/jumbo v0, "e_cookie"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/PersistBroadcastRequest;->cookie:Ljava/lang/String;

    .line 1250
    const-string/jumbo v0, "e_broadcast_id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Ltv/periscope/android/api/PersistBroadcastRequest;->broadcastId:Ljava/lang/String;

    .line 1252
    :try_start_34
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mService:Ltv/periscope/android/api/ApiService;

    invoke-interface {v0, v3}, Ltv/periscope/android/api/ApiService;->persistBroadcast(Ltv/periscope/android/api/PersistBroadcastRequest;)Ltv/periscope/android/api/PsResponse;

    move-result-object v4

    .line 1253
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->as:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Ljava/lang/Object;Z)V
    :try_end_34
    .catch Lretrofit/RetrofitError; {:try_start_34 .. :try_end_34} :catch_33

    goto/16 :goto_0

    .line 1254
    :catch_33
    move-exception v4

    .line 1255
    new-instance v0, Ltv/periscope/android/event/ApiEvent;

    sget-object v1, Ltv/periscope/android/event/ApiEvent$Type;->as:Ltv/periscope/android/event/ApiEvent$Type;

    iget-object v2, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Ltv/periscope/android/event/ApiEvent;-><init>(Ltv/periscope/android/event/ApiEvent$Type;Ljava/lang/String;Ltv/periscope/android/api/ApiRequest;Lretrofit/RetrofitError;Z)V

    goto/16 :goto_0

    .line 1259
    :sswitch_45
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->accessVideo(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1262
    :sswitch_46
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->accessChat(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1265
    :sswitch_47
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->startWatching(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1268
    :sswitch_48
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->reportComment(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1271
    :sswitch_49
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->vote(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1274
    :sswitch_4a
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->activeJuror(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1278
    :sswitch_4b
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->getBroadcastsPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1281
    :sswitch_4c
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->accessVideoPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1284
    :sswitch_4d
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->accessChatPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1287
    :sswitch_4e
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->startWatchingPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1290
    :sswitch_4f
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->pingWatchingPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1293
    :sswitch_50
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->endWatchingPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1296
    :sswitch_51
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->replayThumbnailPlaylistPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1299
    :sswitch_52
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->markAbusePublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 1302
    :sswitch_53
    invoke-direct {p0, v4}, Ltv/periscope/android/api/ApiRunnable;->blockPublic(Landroid/os/Bundle;)Ltv/periscope/android/event/ApiEvent;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    move-object v6, v0

    goto/16 :goto_1

    .line 446
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_22
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_b
        0x9 -> :sswitch_f
        0xa -> :sswitch_12
        0xb -> :sswitch_15
        0xc -> :sswitch_14
        0xe -> :sswitch_16
        0xf -> :sswitch_17
        0x11 -> :sswitch_19
        0x12 -> :sswitch_1a
        0x13 -> :sswitch_1f
        0x14 -> :sswitch_21
        0x15 -> :sswitch_e
        0x1a -> :sswitch_2c
        0x1b -> :sswitch_2e
        0x1c -> :sswitch_2f
        0x1d -> :sswitch_30
        0x1e -> :sswitch_31
        0x1f -> :sswitch_32
        0x20 -> :sswitch_33
        0x21 -> :sswitch_37
        0x22 -> :sswitch_38
        0x23 -> :sswitch_39
        0x24 -> :sswitch_3a
        0x25 -> :sswitch_3b
        0x26 -> :sswitch_34
        0x27 -> :sswitch_3c
        0x28 -> :sswitch_3d
        0x29 -> :sswitch_35
        0x2b -> :sswitch_2d
        0x2c -> :sswitch_3e
        0x2d -> :sswitch_3f
        0x2e -> :sswitch_41
        0x2f -> :sswitch_40
        0x31 -> :sswitch_27
        0x32 -> :sswitch_28
        0x33 -> :sswitch_26
        0x34 -> :sswitch_25
        0x35 -> :sswitch_42
        0x36 -> :sswitch_43
        0x37 -> :sswitch_c
        0x38 -> :sswitch_d
        0x39 -> :sswitch_29
        0x3a -> :sswitch_36
        0x3b -> :sswitch_6
        0x3c -> :sswitch_a
        0x3d -> :sswitch_13
        0x3e -> :sswitch_2b
        0x3f -> :sswitch_10
        0x40 -> :sswitch_23
        0x41 -> :sswitch_45
        0x42 -> :sswitch_46
        0x43 -> :sswitch_47
        0x45 -> :sswitch_18
        0x46 -> :sswitch_1b
        0x47 -> :sswitch_2
        0x48 -> :sswitch_24
        0x49 -> :sswitch_48
        0x4a -> :sswitch_49
        0x4b -> :sswitch_4a
        0x4c -> :sswitch_1c
        0x4d -> :sswitch_44
        0x4e -> :sswitch_2a
        0x4f -> :sswitch_11
        0x50 -> :sswitch_1d
        0x51 -> :sswitch_4
        0x52 -> :sswitch_20
        0x53 -> :sswitch_1e
        0x54 -> :sswitch_1
        0xc8 -> :sswitch_4b
        0xca -> :sswitch_4f
        0xcb -> :sswitch_50
        0xce -> :sswitch_51
        0xcf -> :sswitch_52
        0xd0 -> :sswitch_53
        0xd1 -> :sswitch_4c
        0xd2 -> :sswitch_4d
        0xd3 -> :sswitch_4e
    .end sparse-switch

    .line 1044
    :array_0
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data
.end method

.method protected bridge synthetic finish(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Ltv/periscope/android/event/ApiEvent;

    invoke-virtual {p0, p1}, Ltv/periscope/android/api/ApiRunnable;->finish(Ltv/periscope/android/event/ApiEvent;)V

    return-void
.end method

.method protected finish(Ltv/periscope/android/event/ApiEvent;)V
    .locals 4

    .prologue
    .line 429
    const-string/jumbo v0, "PsApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No problems detected for action code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/periscope/android/api/ApiRunnable;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Num retries left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 430
    invoke-virtual {p0}, Ltv/periscope/android/api/ApiRunnable;->numRetries()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Current backoff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltv/periscope/android/api/ApiRunnable;->currentBackoff()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-eqz p1, :cond_0

    .line 432
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mEventBus:Lde/greenrobot/event/c;

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 434
    :cond_0
    return-void
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method protected id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Ltv/periscope/android/api/ApiRunnable;->mActionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic noRetriesLeft(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Ltv/periscope/android/event/ApiEvent;

    invoke-virtual {p0, p1}, Ltv/periscope/android/api/ApiRunnable;->noRetriesLeft(Ltv/periscope/android/event/ApiEvent;)V

    return-void
.end method

.method protected noRetriesLeft(Ltv/periscope/android/event/ApiEvent;)V
    .locals 3

    .prologue
    .line 416
    const-string/jumbo v0, "PsApi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No retries remaining for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/periscope/android/api/ApiRunnable;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Posting error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    if-eqz p1, :cond_0

    .line 418
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mEventBus:Lde/greenrobot/event/c;

    invoke-virtual {v0, p1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 420
    :cond_0
    return-void
.end method

.method protected bridge synthetic retry(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Ltv/periscope/android/event/ApiEvent;

    invoke-virtual {p0, p1}, Ltv/periscope/android/api/ApiRunnable;->retry(Ltv/periscope/android/event/ApiEvent;)V

    return-void
.end method

.method protected retry(Ltv/periscope/android/event/ApiEvent;)V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mEventBus:Lde/greenrobot/event/c;

    new-instance v1, Ltv/periscope/android/event/RetryEvent;

    invoke-direct {v1, p0}, Ltv/periscope/android/event/RetryEvent;-><init>(Ltv/periscope/android/api/ApiRunnable;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    .line 425
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 378
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 379
    invoke-super {p0}, Ldoc;->run()V

    .line 380
    return-void
.end method

.method public setAuthorizationHeader(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Ltv/periscope/android/api/ApiRunnable;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "e_service_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

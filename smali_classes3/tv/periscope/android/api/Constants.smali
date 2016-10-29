.class public final Ltv/periscope/android/api/Constants;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final API_CANARY_HOST:Ljava/lang/String; = "canary-api.periscope.tv"

.field public static final API_CANARY_URL:Ljava/lang/String;

.field public static final API_DEV_HOST:Ljava/lang/String; = "dev-api.periscope.tv"

.field public static final API_DEV_URL:Ljava/lang/String;

.field public static final API_HEART_THEME_URL_FORMAT:Ljava/lang/String; = "https://%s/public/heart_theme/android/%s/%s_%s.png"

.field public static final API_PING_INTERVAL_MILLIS:J

.field public static final API_PROD_HOST:Ljava/lang/String; = "api.periscope.tv"

.field public static final API_PROD_URL:Ljava/lang/String;

.field public static final CHANNELS_CANARY_HOST:Ljava/lang/String; = "canary-channels.periscope.tv"

.field public static final CHANNELS_CANARY_URL:Ljava/lang/String;

.field public static final CHANNELS_DEV_HOST:Ljava/lang/String; = "dev-channels.periscope.tv"

.field public static final CHANNELS_DEV_URL:Ljava/lang/String;

.field public static final CHANNELS_PROD_HOST:Ljava/lang/String; = "channels.periscope.tv"

.field public static final CHANNELS_PROD_URL:Ljava/lang/String;

.field public static final CHANNELS_SERVICE_VERSION:I = 0x1

.field public static final SAFETY_SERVICE_CANARY_HOST:Ljava/lang/String; = "canary-safety.periscope.tv"

.field public static final SAFETY_SERVICE_CANARY_URL:Ljava/lang/String;

.field public static final SAFETY_SERVICE_DEV_HOST:Ljava/lang/String; = "dev-safety.periscope.tv"

.field public static final SAFETY_SERVICE_DEV_URL:Ljava/lang/String;

.field public static final SAFETY_SERVICE_PROD_HOST:Ljava/lang/String; = "safety.periscope.tv"

.field public static final SAFETY_SERVICE_PROD_URL:Ljava/lang/String;

.field public static final SAFETY_SERVICE_VERSION:I = 0x1

.field public static final SIGNER_DEV_URL:Ljava/lang/String; = "https://dev-signer.periscope.tv"

.field public static final SIGNER_PROD_URL:Ljava/lang/String; = "https://signer.periscope.tv"

.field public static final TRACKING_MIN_WATCH_THRESHOLD_MS:J = 0xbb8L

.field public static final VALUE_BROADCAST_PERSISTENT:I = -0x1

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    const-string/jumbo v0, "dev-api.periscope.tv"

    invoke-static {v0}, Ltv/periscope/android/api/Constants;->getApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/periscope/android/api/Constants;->API_DEV_URL:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "canary-api.periscope.tv"

    invoke-static {v0}, Ltv/periscope/android/api/Constants;->getApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/periscope/android/api/Constants;->API_CANARY_URL:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "api.periscope.tv"

    invoke-static {v0}, Ltv/periscope/android/api/Constants;->getApiUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/periscope/android/api/Constants;->API_PROD_URL:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "dev-channels.periscope.tv"

    invoke-static {v0}, Ltv/periscope/android/api/Constants;->getChannelsServiceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/periscope/android/api/Constants;->CHANNELS_DEV_URL:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "canary-channels.periscope.tv"

    invoke-static {v0}, Ltv/periscope/android/api/Constants;->getChannelsServiceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/periscope/android/api/Constants;->CHANNELS_CANARY_URL:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "channels.periscope.tv"

    invoke-static {v0}, Ltv/periscope/android/api/Constants;->getChannelsServiceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/periscope/android/api/Constants;->CHANNELS_PROD_URL:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "dev-safety.periscope.tv"

    invoke-static {v0}, Ltv/periscope/android/api/Constants;->getSafetyServiceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/periscope/android/api/Constants;->SAFETY_SERVICE_DEV_URL:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "canary-safety.periscope.tv"

    invoke-static {v0}, Ltv/periscope/android/api/Constants;->getSafetyServiceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/periscope/android/api/Constants;->SAFETY_SERVICE_CANARY_URL:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "safety.periscope.tv"

    invoke-static {v0}, Ltv/periscope/android/api/Constants;->getSafetyServiceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/periscope/android/api/Constants;->SAFETY_SERVICE_PROD_URL:Ljava/lang/String;

    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ltv/periscope/android/api/Constants;->API_PING_INTERVAL_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/api/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelsServiceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSafetyServiceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/api/v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

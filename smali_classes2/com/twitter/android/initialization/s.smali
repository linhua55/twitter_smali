.class public Lcom/twitter/android/initialization/s;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laup;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lauo",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lauo",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lauo",
            "<",
            "Landroid/content/res/Configuration;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 39
    new-instance v0, Lcom/twitter/android/initialization/LoggerInitializer;

    invoke-direct {v0}, Lcom/twitter/android/initialization/LoggerInitializer;-><init>()V

    const/4 v1, 0x7

    new-array v1, v1, [Lauo;

    new-instance v2, Lcom/twitter/library/client/StrictModeInitializer;

    invoke-direct {v2}, Lcom/twitter/library/client/StrictModeInitializer;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lcom/twitter/library/initialization/SessionManagerInitializer;

    invoke-direct {v2}, Lcom/twitter/library/initialization/SessionManagerInitializer;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcom/twitter/android/initialization/ErrorReporterInitializer;

    invoke-direct {v2, v4, v4}, Lcom/twitter/android/initialization/ErrorReporterInitializer;-><init>(ZZ)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/twitter/android/initialization/OomeReporterInitializer;

    invoke-direct {v2}, Lcom/twitter/android/initialization/OomeReporterInitializer;-><init>()V

    aput-object v2, v1, v7

    new-instance v2, Lcom/twitter/util/serialization/SerializationInitializer;

    invoke-direct {v2}, Lcom/twitter/util/serialization/SerializationInitializer;-><init>()V

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-instance v3, Lcom/twitter/android/initialization/MetricsInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/MetricsInitializer;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/twitter/library/initialization/FeatureSwitchesInitializer;

    invoke-direct {v3}, Lcom/twitter/library/initialization/FeatureSwitchesInitializer;-><init>()V

    aput-object v3, v1, v2

    .line 40
    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/initialization/s;->a:Ljava/util/List;

    .line 59
    new-instance v0, Lcom/twitter/library/initialization/AssertsInitializer;

    invoke-direct {v0}, Lcom/twitter/library/initialization/AssertsInitializer;-><init>()V

    const/16 v1, 0x24

    new-array v1, v1, [Lauo;

    new-instance v2, Lcom/twitter/android/initialization/FrescoInitializer;

    invoke-direct {v2}, Lcom/twitter/android/initialization/FrescoInitializer;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lcom/twitter/android/initialization/JobCreatorInitializer;

    invoke-direct {v2}, Lcom/twitter/android/initialization/JobCreatorInitializer;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcom/twitter/android/initialization/AppGlobalInitializer;

    invoke-direct {v2}, Lcom/twitter/android/initialization/AppGlobalInitializer;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Lcom/twitter/android/initialization/AppSessionInitializer;

    invoke-direct {v2}, Lcom/twitter/android/initialization/AppSessionInitializer;-><init>()V

    aput-object v2, v1, v7

    new-instance v2, Lcom/twitter/android/initialization/LoggedoutPushInitializer;

    invoke-direct {v2}, Lcom/twitter/android/initialization/LoggedoutPushInitializer;-><init>()V

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-instance v3, Lcom/twitter/android/initialization/EventReporterInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/EventReporterInitializer;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/twitter/android/initialization/DataUsageObserverInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/DataUsageObserverInitializer;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/twitter/android/initialization/GeoInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/GeoInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/twitter/library/initialization/LibrarySingletonInitializer;

    invoke-direct {v3}, Lcom/twitter/library/initialization/LibrarySingletonInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/twitter/android/initialization/LocaleInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/LocaleInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/twitter/android/initialization/YearClassInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/YearClassInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/twitter/android/initialization/NARCInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/NARCInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/twitter/android/initialization/AdIdInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/AdIdInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/twitter/android/initialization/ClearCacheInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/ClearCacheInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/twitter/android/initialization/RegisteredCardsInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/RegisteredCardsInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/twitter/library/initialization/HashIconInitializer;

    invoke-direct {v3}, Lcom/twitter/library/initialization/HashIconInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/twitter/android/initialization/AppSingletonInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/AppSingletonInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/twitter/library/initialization/AccessibilityInitializer;

    invoke-direct {v3}, Lcom/twitter/library/initialization/AccessibilityInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/twitter/library/initialization/AppMigrationInitializer;

    invoke-direct {v3}, Lcom/twitter/library/initialization/AppMigrationInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lcom/twitter/library/initialization/WebViewInitializer;

    invoke-direct {v3}, Lcom/twitter/library/initialization/WebViewInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lcom/twitter/android/initialization/AppVisibilityTrackerInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/AppVisibilityTrackerInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lcom/twitter/library/initialization/LeakTrackerInitializer;

    invoke-direct {v3}, Lcom/twitter/library/initialization/LeakTrackerInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lcom/twitter/android/initialization/AppStyleInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/AppStyleInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Lcom/twitter/library/initialization/ActivityOrientationInitializer;

    invoke-direct {v3}, Lcom/twitter/library/initialization/ActivityOrientationInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-instance v3, Lcom/twitter/android/initialization/PersistentJobsInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/PersistentJobsInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Lcom/twitter/android/initialization/OemReferrerInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/OemReferrerInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Lcom/twitter/android/initialization/TypefaceInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/TypefaceInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-instance v3, Lcom/twitter/android/initialization/ChromeCustomTabsInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/ChromeCustomTabsInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-instance v3, Lcom/twitter/android/initialization/AnimationInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/AnimationInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Lcom/twitter/android/initialization/NetworkInfoScribeInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/NetworkInfoScribeInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Lcom/twitter/android/initialization/ClassLoaderInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/ClassLoaderInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Lcom/twitter/android/initialization/AutoPlayPreferencesInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/AutoPlayPreferencesInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-instance v3, Lcom/twitter/android/initialization/JobScheduleInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/JobScheduleInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-instance v3, Lcom/twitter/android/initialization/NotificationsSettingsMigratorInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/NotificationsSettingsMigratorInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-instance v3, Lcom/twitter/android/initialization/HomeJumpToTopPermitInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/HomeJumpToTopPermitInitializer;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-instance v3, Lcom/twitter/android/initialization/CookieHandlerInitializer;

    invoke-direct {v3}, Lcom/twitter/android/initialization/CookieHandlerInitializer;-><init>()V

    aput-object v3, v1, v2

    .line 60
    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/initialization/s;->b:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/twitter/android/initialization/LocaleInitializer;

    invoke-direct {v0}, Lcom/twitter/android/initialization/LocaleInitializer;-><init>()V

    new-array v1, v4, [Lauo;

    new-instance v2, Lcom/twitter/library/initialization/MediaManagerConfigChangeInitializer;

    invoke-direct {v2}, Lcom/twitter/library/initialization/MediaManagerConfigChangeInitializer;-><init>()V

    aput-object v2, v1, v5

    .line 100
    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/initialization/s;->c:Ljava/util/List;

    .line 99
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean p1, p0, Lcom/twitter/android/initialization/s;->d:Z

    .line 108
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lauo",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/twitter/android/initialization/s;->d:Z

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    sget-object v2, Lcom/twitter/android/initialization/s;->a:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/twitter/android/initialization/s;->b:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lczz;->a([Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/android/initialization/s;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public b()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lauo",
            "<",
            "Landroid/content/res/Configuration;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/twitter/android/initialization/s;->d:Z

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/twitter/android/initialization/s;->c:Ljava/util/List;

    .line 126
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

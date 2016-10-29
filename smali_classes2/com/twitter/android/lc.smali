.class public Lcom/twitter/android/lc;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/android/lc;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/lc;->b:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/twitter/android/lc;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/twitter/android/lc;->a:Lcom/twitter/android/lc;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/twitter/android/lc;

    invoke-direct {v0, p0}, Lcom/twitter/android/lc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twitter/android/lc;->a:Lcom/twitter/android/lc;

    .line 37
    :cond_0
    sget-object v0, Lcom/twitter/android/lc;->a:Lcom/twitter/android/lc;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/library/scribe/TwitterScribeLog;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v1}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 50
    const-string/jumbo v2, "addressBookPermissionStatus"

    iput-object v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 51
    new-array v2, v6, [Z

    iget-object v3, p0, Lcom/twitter/android/lc;->b:Landroid/content/Context;

    .line 52
    invoke-static {v3}, Lcom/twitter/library/util/m;->a(Landroid/content/Context;)Lcom/twitter/library/util/l;

    move-result-object v3

    invoke-interface {v3}, Lcom/twitter/library/util/l;->b()Z

    move-result v3

    aput-boolean v3, v2, v5

    .line 51
    invoke-static {v2}, Lcom/twitter/library/util/an;->a([Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 54
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v2}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 55
    const-string/jumbo v3, "geoPermissionStatus"

    iput-object v3, v2, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 56
    const/4 v3, 0x3

    new-array v3, v3, [Z

    .line 57
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v4

    invoke-interface {v4}, Lcca;->d()Z

    move-result v4

    aput-boolean v4, v3, v5

    .line 58
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v4

    invoke-interface {v4, v0}, Lcca;->c(Lcom/twitter/library/client/Session;)Z

    move-result v0

    aput-boolean v0, v3, v6

    const/4 v0, 0x2

    .line 59
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v4

    invoke-interface {v4}, Lcca;->e()Z

    move-result v4

    aput-boolean v4, v3, v0

    .line 56
    invoke-static {v3}, Lcom/twitter/library/util/an;->a([Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    .line 63
    const-string/jumbo v3, "notificationPermissionSettings"

    iput-object v3, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 64
    new-array v3, v6, [Z

    .line 65
    invoke-virtual {p0}, Lcom/twitter/android/lc;->a()Z

    move-result v4

    aput-boolean v4, v3, v5

    .line 64
    invoke-static {v3}, Lcom/twitter/library/util/an;->a([Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/twitter/library/scribe/TwitterScribeItem;->v:Ljava/lang/String;

    .line 67
    invoke-virtual {p1, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 68
    invoke-virtual {p1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 69
    invoke-virtual {p1, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    .line 70
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/lc;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

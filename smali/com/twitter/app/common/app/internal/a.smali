.class public Lcom/twitter/app/common/app/internal/a;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field protected final a:J

.field private final b:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;J)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/twitter/app/common/app/internal/a;->b:Landroid/app/Application;

    .line 45
    iput-wide p2, p0, Lcom/twitter/app/common/app/internal/a;->a:J

    .line 46
    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/app/Application;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/twitter/app/common/util/c;)Lcom/twitter/app/common/util/f;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/twitter/app/common/util/f;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/util/f;-><init>(Lcom/twitter/app/common/util/c;)V

    return-object v0
.end method

.method static a(Lcom/twitter/platform/PlatformContext;)Lcom/twitter/platform/u;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/twitter/platform/PlatformContext;->a()Lcom/twitter/platform/u;

    move-result-object v0

    return-object v0
.end method

.method static b()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method static b(Landroid/app/Application;)Lcom/twitter/app/common/util/c;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/twitter/app/common/util/c;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/util/c;-><init>(Landroid/app/Application;)V

    return-object v0
.end method

.method static b(Lcom/twitter/app/common/util/c;)Lcom/twitter/app/common/util/n;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/twitter/app/common/util/n;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/util/n;-><init>(Lcom/twitter/app/common/util/c;)V

    return-object v0
.end method

.method static b(Landroid/content/Context;)Lddi;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lddh;

    invoke-direct {v0, p0}, Lddh;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static c(Landroid/content/Context;)Lcom/twitter/platform/PlatformContext;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/twitter/platform/c;

    invoke-direct {v0, p0}, Lcom/twitter/platform/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static d(Landroid/content/Context;)Landroid/accounts/AccountManager;
    .locals 1

    .prologue
    .line 146
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    return-object v0
.end method

.method static d()Lcom/twitter/app/common/util/r;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/twitter/app/common/util/r;

    invoke-direct {v0}, Lcom/twitter/app/common/util/r;-><init>()V

    return-object v0
.end method

.method static e(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    .prologue
    .line 161
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Landroid/app/Application;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/app/common/app/internal/a;->b:Landroid/app/Application;

    return-object v0
.end method

.method protected a(Landroid/accounts/AccountManager;)Lcom/twitter/app/common/account/d;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Implement provideAppAccountManager() in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c()Lcom/twitter/config/AppConfig;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Implement provideAppConfig() in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

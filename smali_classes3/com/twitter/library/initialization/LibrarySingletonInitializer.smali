.class public Lcom/twitter/library/initialization/LibrarySingletonInitializer;
.super Lauo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauo",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/initialization/LibrarySingletonInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 30
    invoke-static {p1}, Lcom/twitter/util/ak;->a(Landroid/content/Context;)V

    .line 31
    invoke-static {}, Lcom/twitter/util/ak;->b()F

    move-result v0

    sput v0, Lcom/twitter/model/card/property/ImageSpec;->b:F

    .line 32
    new-instance v0, Lchu;

    invoke-direct {v0, p1}, Lchu;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/twitter/util/telephony/TelephonyUtil;->a(Lcom/twitter/util/telephony/TelephonyUtil;)V

    .line 34
    invoke-static {}, Lcom/twitter/platform/PlatformContext;->e()Lcom/twitter/platform/PlatformContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/platform/PlatformContext;->b()Lcom/twitter/platform/r;

    move-result-object v0

    new-instance v1, Lcom/twitter/library/network/u;

    invoke-direct {v1}, Lcom/twitter/library/network/u;-><init>()V

    invoke-static {v0, v1}, Lcom/twitter/library/network/z;->a(Lcom/twitter/platform/r;Lcom/twitter/util/object/i;)V

    .line 36
    invoke-static {p1}, Lcom/twitter/library/network/forecaster/b;->a(Landroid/content/Context;)V

    .line 37
    invoke-static {p1}, Lcom/twitter/library/service/u;->a(Landroid/content/Context;)V

    .line 38
    invoke-static {p1}, Lchw;->a(Landroid/content/Context;)V

    .line 39
    invoke-static {p1}, Lcom/twitter/library/network/l;->a(Landroid/content/Context;)Lcom/twitter/library/network/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/network/l;->a()V

    .line 41
    invoke-static {}, Lcom/twitter/library/network/narc/e;->a()V

    .line 44
    invoke-static {p1}, Lcom/twitter/library/client/ab;->a(Landroid/content/Context;)Lcom/twitter/library/client/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/ab;->a()V

    .line 46
    invoke-static {p1}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/twitter/badge/LauncherIconBadgeUpdaterService;->a(Landroid/content/Context;Lcom/twitter/library/client/bk;)V

    .line 49
    invoke-static {p1}, Lcom/twitter/library/util/al;->a(Landroid/content/Context;)V

    .line 50
    return-void
.end method

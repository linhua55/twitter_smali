.class public Lcom/twitter/android/initialization/AppSingletonInitializer;
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
    .line 36
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/initialization/AppSingletonInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 39
    invoke-static {p1}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    .line 41
    invoke-static {p1}, Lcom/twitter/android/client/w;->a(Landroid/content/Context;)Lcom/twitter/android/client/w;

    .line 42
    invoke-static {p1}, Lcom/twitter/library/media/manager/l;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/l;

    .line 43
    invoke-static {p1}, Lcom/twitter/android/util/ap;->a(Landroid/content/Context;)Lcom/twitter/android/util/al;

    .line 44
    new-instance v0, Lapf;

    invoke-direct {v0}, Lapf;-><init>()V

    invoke-static {v0}, Lcge;->a(Lcge;)V

    .line 46
    invoke-static {}, Lcom/twitter/android/card/m;->a()V

    .line 47
    invoke-static {p1}, Lcom/twitter/android/client/s;->a(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/twitter/android/av/bo;

    invoke-direct {v0}, Lcom/twitter/android/av/bo;-><init>()V

    invoke-static {v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/r;)V

    .line 49
    sget-object v0, Lcom/twitter/android/av/bg;->a:Lcom/twitter/library/av/playback/m;

    invoke-static {v0}, Lcom/twitter/library/av/playback/AVPlayer;->a(Lcom/twitter/library/av/playback/m;)V

    .line 50
    new-instance v0, Latf;

    invoke-direct {v0}, Latf;-><init>()V

    invoke-static {v0}, Lcjm;->a(Lcjn;)V

    .line 53
    invoke-static {p1}, Lcom/twitter/library/platform/TwitterDataSyncService;->a(Landroid/content/Context;)V

    .line 55
    new-instance v0, Lcom/twitter/library/media/manager/TwitterImageRequester$Factory;

    invoke-direct {v0}, Lcom/twitter/library/media/manager/TwitterImageRequester$Factory;-><init>()V

    invoke-static {v0}, Lcom/twitter/media/ui/image/BaseMediaImageView;->setImageRequesterFactory(Lcom/twitter/media/request/ImageRequester$Factory;)V

    .line 58
    invoke-static {p1}, Lbki;->a(Landroid/content/Context;)Lbki;

    move-result-object v0

    .line 59
    new-instance v1, Lrc;

    invoke-direct {v1, p1}, Lrc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lbki;->a(Lbkh;)V

    .line 60
    new-instance v1, Lbkf;

    invoke-direct {v1, p1}, Lbkf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lbki;->a(Lbkg;)V

    .line 61
    new-instance v1, Lre;

    invoke-direct {v1, p1}, Lre;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lbki;->a(Lbkg;)V

    .line 62
    new-instance v1, Lrd;

    invoke-direct {v1, p1}, Lrd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lbki;->a(Lbkg;)V

    .line 64
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-static {p1, v0}, Lrq;->a(Landroid/content/Context;Lcom/twitter/library/client/bk;)V

    .line 66
    invoke-static {}, Lto;->a()V

    .line 68
    invoke-static {p1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/client/g;

    invoke-direct {v1, p1}, Lcom/twitter/android/client/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/z;)V

    .line 69
    return-void
.end method

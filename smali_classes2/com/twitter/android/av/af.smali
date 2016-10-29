.class public Lcom/twitter/android/av/af;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field protected a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lrx/ap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0}, Lcom/twitter/android/av/af;->b()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/af;->a:Ljava/util/Set;

    .line 29
    invoke-static {}, Lcom/twitter/config/j;->a()Lrx/o;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    .line 30
    invoke-virtual {v1, v0}, Lrx/o;->d(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/av/ag;

    invoke-direct {v1, p0}, Lcom/twitter/android/av/ag;-><init>(Lcom/twitter/android/av/af;)V

    .line 31
    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/af;->b:Lrx/ap;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/av/af;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/twitter/android/av/af;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const-string/jumbo v0, "media_autoplay_publisher_blacklist"

    .line 63
    invoke-static {v0}, Lcom/twitter/config/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/android/av/af;->b:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 58
    return-void
.end method

.method public a(J)Z
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/av/af;->a:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)Z
    .locals 2

    .prologue
    .line 44
    invoke-static {p1}, Lcom/twitter/library/av/playback/bm;->m(Lcom/twitter/model/core/Tweet;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/av/af;->a(J)Z

    move-result v0

    return v0
.end method

.class public Lcom/twitter/android/people/ac;
.super Lcom/twitter/app/common/inject/e;
.source "Twttr"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/twitter/app/common/inject/e;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/twitter/android/people/ac;->a:Ljava/util/Map;

    .line 38
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lcgc;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lcgc;

    new-instance v1, Lcom/twitter/library/client/l;

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;J)V

    invoke-direct {v0, v1}, Lcgc;-><init>(Lcom/twitter/library/client/l;)V

    return-object v0
.end method

.method static a(Lcom/twitter/library/client/Session;Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/people/bb;
    .locals 4

    .prologue
    .line 95
    new-instance v0, Lcom/twitter/android/people/bb;

    invoke-virtual {p0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1}, Lcom/twitter/android/people/bb;-><init>(JLcom/twitter/library/scribe/TwitterScribeAssociation;)V

    return-object v0
.end method

.method static a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/bd;)Lcom/twitter/android/ys;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/twitter/android/ys;

    invoke-direct {v0, p3, p2, p1, p0}, Lcom/twitter/android/ys;-><init>(Lcom/twitter/library/client/bd;Lcom/twitter/library/client/Session;Lcom/twitter/library/util/FriendshipCache;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    return-object v0
.end method

.method static b(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lapn;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lapn;

    new-instance v1, Lazn;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lazn;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v0, v1, p1}, Lapn;-><init>(Lazt;Lcom/twitter/library/client/Session;)V

    return-object v0
.end method

.method static b()Lcom/twitter/library/util/FriendshipCache;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/twitter/library/util/FriendshipCache;

    invoke-direct {v0}, Lcom/twitter/library/util/FriendshipCache;-><init>()V

    return-object v0
.end method

.method static c(Landroid/content/Context;Lcom/twitter/library/client/Session;)Lapi;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lapi;

    new-instance v1, Lazn;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lazn;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v0, v1, p1}, Lapi;-><init>(Lazt;Lcom/twitter/library/client/Session;)V

    return-object v0
.end method


# virtual methods
.method a()Lapb;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lapc;

    invoke-direct {v0}, Lapc;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/people/ac;->a:Ljava/util/Map;

    .line 45
    invoke-virtual {v0, v1}, Lapc;->a(Ljava/util/Map;)Lapc;

    move-result-object v0

    const-string/jumbo v1, "connect"

    .line 46
    invoke-virtual {v0, v1}, Lapc;->a(Ljava/lang/String;)Lapc;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lapc;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapb;

    .line 44
    return-object v0
.end method

.method c()Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const-string/jumbo v1, "people"

    .line 86
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v1, p0, Lcom/twitter/android/people/ac;->a:Ljava/util/Map;

    .line 87
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "pivot"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->c(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 85
    return-object v0

    .line 87
    :cond_0
    const-string/jumbo v1, "browse"

    goto :goto_0
.end method

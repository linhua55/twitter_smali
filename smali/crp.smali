.class public Lcrp;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcrp;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Ljava/util/List",
            "<",
            "Lcrp;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Lcrp;

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcrp;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcrp;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcrp;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final g:I

.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 20
    new-instance v0, Lcrs;

    invoke-direct {v0}, Lcrs;-><init>()V

    sput-object v0, Lcrp;->a:Lcom/twitter/util/serialization/ah;

    .line 21
    sget-object v0, Lcrp;->a:Lcom/twitter/util/serialization/ah;

    .line 22
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    sput-object v0, Lcrp;->b:Lcom/twitter/util/serialization/ah;

    .line 33
    new-instance v0, Lcrr;

    invoke-direct {v0}, Lcrr;-><init>()V

    .line 34
    invoke-virtual {v0, v8}, Lcrr;->a(I)Lcrr;

    move-result-object v0

    const-string/jumbo v1, "follow"

    invoke-virtual {v0, v1}, Lcrr;->b(Ljava/lang/String;)Lcrr;

    move-result-object v0

    invoke-virtual {v0}, Lcrr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrp;

    sput-object v0, Lcrp;->c:Lcrp;

    .line 35
    new-instance v0, Lcrr;

    invoke-direct {v0}, Lcrr;-><init>()V

    .line 36
    invoke-virtual {v0, v4}, Lcrr;->a(I)Lcrr;

    move-result-object v0

    const-string/jumbo v1, "reply"

    invoke-virtual {v0, v1}, Lcrr;->b(Ljava/lang/String;)Lcrr;

    move-result-object v0

    invoke-virtual {v0}, Lcrr;->q()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v6, [Lcrp;

    new-instance v0, Lcrr;

    invoke-direct {v0}, Lcrr;-><init>()V

    .line 40
    invoke-virtual {v0, v6}, Lcrr;->a(I)Lcrr;

    move-result-object v0

    invoke-virtual {v0}, Lcrr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrp;

    aput-object v0, v2, v5

    new-instance v0, Lcrr;

    invoke-direct {v0}, Lcrr;-><init>()V

    .line 41
    invoke-virtual {v0, v7}, Lcrr;->a(I)Lcrr;

    move-result-object v0

    const-string/jumbo v3, "favorite"

    invoke-virtual {v0, v3}, Lcrr;->b(Ljava/lang/String;)Lcrr;

    move-result-object v0

    invoke-virtual {v0}, Lcrr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrp;

    aput-object v0, v2, v4

    .line 35
    invoke-static {v1, v2}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcrp;->d:Ljava/util/List;

    .line 42
    sget-object v1, Lcrp;->c:Lcrp;

    new-array v2, v4, [Lcrp;

    new-instance v0, Lcrr;

    invoke-direct {v0}, Lcrr;-><init>()V

    const/4 v3, 0x6

    .line 43
    invoke-virtual {v0, v3}, Lcrr;->a(I)Lcrr;

    move-result-object v0

    const-string/jumbo v3, "tweet_to"

    invoke-virtual {v0, v3}, Lcrr;->b(Ljava/lang/String;)Lcrr;

    move-result-object v0

    invoke-virtual {v0}, Lcrr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrp;

    aput-object v0, v2, v5

    .line 42
    invoke-static {v1, v2}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcrp;->e:Ljava/util/List;

    .line 44
    new-instance v0, Lcrr;

    invoke-direct {v0}, Lcrr;-><init>()V

    const/4 v1, 0x7

    .line 45
    invoke-virtual {v0, v1}, Lcrr;->a(I)Lcrr;

    move-result-object v0

    const-string/jumbo v1, "accept"

    invoke-virtual {v0, v1}, Lcrr;->b(Ljava/lang/String;)Lcrr;

    move-result-object v0

    invoke-virtual {v0}, Lcrr;->q()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v4, [Lcrp;

    new-instance v0, Lcrr;

    invoke-direct {v0}, Lcrr;-><init>()V

    const/16 v3, 0x8

    .line 46
    invoke-virtual {v0, v3}, Lcrr;->a(I)Lcrr;

    move-result-object v0

    const-string/jumbo v3, "deny"

    invoke-virtual {v0, v3}, Lcrr;->b(Ljava/lang/String;)Lcrr;

    move-result-object v0

    invoke-virtual {v0}, Lcrr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrp;

    aput-object v0, v2, v5

    .line 44
    invoke-static {v1, v2}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcrp;->f:Ljava/util/List;

    .line 48
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "reply"

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "retweet"

    .line 50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "favorite"

    .line 51
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "share"

    const/4 v2, 0x4

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "follow"

    .line 53
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "tweet_to"

    const/4 v2, 0x6

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "accept"

    const/4 v2, 0x7

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    const-string/jumbo v1, "deny"

    const/16 v2, 0x8

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcrp;->i:Ljava/util/Map;

    .line 48
    return-void
.end method

.method private constructor <init>(Lcrr;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcrr;->a(Lcrr;)I

    move-result v0

    iput v0, p0, Lcrp;->g:I

    .line 65
    invoke-static {p1}, Lcrr;->b(Lcrr;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrp;->h:Ljava/lang/String;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcrr;Lcrq;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcrp;-><init>(Lcrr;)V

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcrp;->i:Ljava/util/Map;

    return-object v0
.end method

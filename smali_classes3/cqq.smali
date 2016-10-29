.class public Lcqq;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/model/moments/MomentPageType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/twitter/model/moments/ad;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqg;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcqt;

.field public final e:Lcom/twitter/model/moments/DisplayStyle;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/String;

.field public final h:Lcom/twitter/model/moments/ap;

.field public final i:Lcqc;

.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    sget-object v0, Lcom/twitter/model/moments/MomentPageType;->b:Lcom/twitter/model/moments/MomentPageType;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/twitter/model/moments/MomentPageType;

    const/4 v2, 0x0

    sget-object v3, Lcom/twitter/model/moments/MomentPageType;->c:Lcom/twitter/model/moments/MomentPageType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/twitter/model/moments/MomentPageType;->g:Lcom/twitter/model/moments/MomentPageType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/twitter/model/moments/MomentPageType;->k:Lcom/twitter/model/moments/MomentPageType;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/twitter/model/moments/MomentPageType;->e:Lcom/twitter/model/moments/MomentPageType;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/twitter/model/moments/MomentPageType;->f:Lcom/twitter/model/moments/MomentPageType;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/twitter/model/moments/MomentPageType;->d:Lcom/twitter/model/moments/MomentPageType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/twitter/model/moments/MomentPageType;->j:Lcom/twitter/model/moments/MomentPageType;

    aput-object v3, v1, v2

    .line 27
    invoke-static {v0, v1}, Lcom/twitter/util/collection/au;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcqq;->k:Ljava/util/Set;

    .line 26
    return-void
.end method

.method private constructor <init>(Lcqs;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lcqs;->a:Lcom/twitter/model/moments/ad;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    iput-object v0, p0, Lcqq;->a:Lcom/twitter/model/moments/ad;

    .line 50
    iget-object v0, p1, Lcqs;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcqq;->b:Ljava/util/Map;

    .line 51
    iget-object v0, p1, Lcqs;->j:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcqq;->c:Ljava/util/List;

    .line 52
    iget v0, p1, Lcqs;->i:I

    iput v0, p0, Lcqq;->j:I

    .line 53
    iget-object v0, p1, Lcqs;->d:Lcqt;

    iput-object v0, p0, Lcqq;->d:Lcqt;

    .line 54
    iget-object v0, p1, Lcqs;->e:Lcom/twitter/model/moments/DisplayStyle;

    iput-object v0, p0, Lcqq;->e:Lcom/twitter/model/moments/DisplayStyle;

    .line 55
    iget-object v0, p1, Lcqs;->f:Ljava/util/Map;

    iput-object v0, p0, Lcqq;->f:Ljava/util/Map;

    .line 56
    iget-object v0, p1, Lcqs;->g:Ljava/lang/String;

    iput-object v0, p0, Lcqq;->g:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcqs;->h:Lcom/twitter/model/moments/ap;

    iput-object v0, p0, Lcqq;->h:Lcom/twitter/model/moments/ap;

    .line 58
    iget-object v0, p1, Lcqs;->k:Lcqc;

    iput-object v0, p0, Lcqq;->i:Lcqc;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcqs;Lcqr;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcqq;-><init>(Lcqs;)V

    return-void
.end method

.method static synthetic a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcqq;->k:Ljava/util/Set;

    return-object v0
.end method

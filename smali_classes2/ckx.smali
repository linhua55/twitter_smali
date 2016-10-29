.class public Lckx;
.super Lcks;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TweetType:",
        "Ljava/lang/Object;",
        ">",
        "Lcks;"
    }
.end annotation


# instance fields
.field public final d:Lckt;

.field public final e:Lckt;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lclc;

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TTweetType;>;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcky;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcky",
            "<TTweetType;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1}, Lcky;->a(Lcky;)J

    move-result-wide v2

    invoke-static {p1}, Lcky;->b(Lcky;)J

    move-result-wide v4

    invoke-static {p1}, Lcky;->c(Lcky;)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcks;-><init>(JJJ)V

    .line 43
    invoke-static {p1}, Lcky;->d(Lcky;)Lckt;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckt;

    iput-object v0, p0, Lckx;->d:Lckt;

    .line 44
    invoke-static {p1}, Lcky;->e(Lcky;)Lckt;

    move-result-object v0

    iput-object v0, p0, Lckx;->e:Lckt;

    .line 45
    invoke-static {p1}, Lcky;->f(Lcky;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lckx;->f:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcky;->g(Lcky;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lckx;->g:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcky;->h(Lcky;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lckx;->k:Ljava/util/List;

    .line 48
    invoke-static {p1}, Lcky;->i(Lcky;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lckx;->l:Ljava/util/List;

    .line 49
    invoke-static {p1}, Lcky;->j(Lcky;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lckx;->m:Ljava/util/List;

    .line 50
    invoke-static {p1}, Lcky;->k(Lcky;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lckx;->h:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcky;->l(Lcky;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lckx;->i:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcky;->m(Lcky;)Lclc;

    move-result-object v0

    iput-object v0, p0, Lckx;->j:Lclc;

    .line 53
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lckx;->b:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lckx;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lckx;->b:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lckx;->b:J

    return-wide v0
.end method

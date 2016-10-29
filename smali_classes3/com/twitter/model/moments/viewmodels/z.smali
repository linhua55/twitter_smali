.class public abstract Lcom/twitter/model/moments/viewmodels/z;
.super Lcom/twitter/model/moments/viewmodels/j;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/model/moments/viewmodels/y;",
        "B:",
        "Lcom/twitter/model/moments/viewmodels/z",
        "<TT;TB;>;>",
        "Lcom/twitter/model/moments/viewmodels/j",
        "<TT;TB;>;"
    }
.end annotation


# instance fields
.field g:Lcom/twitter/model/core/Tweet;

.field h:Lcom/twitter/model/moments/u;

.field i:J


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/twitter/model/moments/viewmodels/j;-><init>()V

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/model/moments/viewmodels/y;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/j;-><init>(Lcom/twitter/model/moments/viewmodels/i;)V

    .line 68
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/y;->t()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/z;->g:Lcom/twitter/model/core/Tweet;

    .line 69
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/y;->u()Lcom/twitter/model/moments/u;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/z;->h:Lcom/twitter/model/moments/u;

    .line 70
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/y;->s()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/moments/viewmodels/z;->i:J

    .line 71
    return-void
.end method


# virtual methods
.method protected L_()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/twitter/model/moments/viewmodels/j;->L_()V

    .line 104
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/z;->g:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/twitter/model/moments/viewmodels/z;->g:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->C:J

    iput-wide v0, p0, Lcom/twitter/model/moments/viewmodels/z;->i:J

    .line 107
    :cond_0
    return-void
.end method

.method public a(J)Lcom/twitter/model/moments/viewmodels/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/twitter/model/moments/viewmodels/z;->i:J

    .line 92
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/z;

    return-object v0
.end method

.method public a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/moments/viewmodels/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/Tweet;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 85
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/z;->g:Lcom/twitter/model/core/Tweet;

    .line 86
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/z;

    return-object v0
.end method

.method public a(Lcom/twitter/model/core/Tweet;J)Lcom/twitter/model/moments/viewmodels/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/Tweet;",
            "J)TB;"
        }
    .end annotation

    .prologue
    .line 75
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/twitter/model/core/Tweet;->C:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/twitter/model/moments/viewmodels/z;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/model/moments/viewmodels/z;

    .line 80
    :goto_0
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/z;

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/twitter/model/moments/viewmodels/z;->a(J)Lcom/twitter/model/moments/viewmodels/z;

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/moments/u;)Lcom/twitter/model/moments/viewmodels/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/u;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/z;->h:Lcom/twitter/model/moments/u;

    .line 98
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/z;

    return-object v0
.end method

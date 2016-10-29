.class public abstract Lcom/twitter/model/timeline/az;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/model/timeline/ay;",
        "B:",
        "Lcom/twitter/model/timeline/az;",
        ">",
        "Lcom/twitter/util/object/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Ljava/lang/String;

.field c:I

.field d:J

.field e:J

.field f:Lcom/twitter/model/timeline/al;

.field g:Lcom/twitter/model/timeline/l;

.field h:Lcom/twitter/model/core/TwitterSocialProof;

.field i:Lcom/twitter/model/moments/bg;

.field j:Ljava/lang/String;

.field k:I

.field l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/model/timeline/az;->d:J

    .line 153
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/model/timeline/az;->e:J

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/model/timeline/az;->k:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/twitter/model/timeline/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 188
    iput p1, p0, Lcom/twitter/model/timeline/az;->c:I

    .line 189
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/az;

    return-object v0
.end method

.method public a(J)Lcom/twitter/model/timeline/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/twitter/model/timeline/az;->d:J

    .line 195
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/az;

    return-object v0
.end method

.method public a(Lcom/twitter/model/core/TwitterSocialProof;)Lcom/twitter/model/timeline/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/TwitterSocialProof;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 212
    iput-object p1, p0, Lcom/twitter/model/timeline/az;->h:Lcom/twitter/model/core/TwitterSocialProof;

    .line 213
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/az;

    return-object v0
.end method

.method public a(Lcom/twitter/model/moments/bg;)Lcom/twitter/model/timeline/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/bg;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 218
    iput-object p1, p0, Lcom/twitter/model/timeline/az;->i:Lcom/twitter/model/moments/bg;

    .line 219
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/az;

    return-object v0
.end method

.method public a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/timeline/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/timeline/al;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcom/twitter/model/timeline/az;->f:Lcom/twitter/model/timeline/al;

    .line 207
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/az;

    return-object v0
.end method

.method public a(Lcom/twitter/model/timeline/l;)Lcom/twitter/model/timeline/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/timeline/l;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 170
    iput-object p1, p0, Lcom/twitter/model/timeline/az;->g:Lcom/twitter/model/timeline/l;

    .line 171
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/az;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/timeline/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 176
    iput-object p1, p0, Lcom/twitter/model/timeline/az;->j:Ljava/lang/String;

    .line 177
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/az;

    return-object v0
.end method

.method public a(Z)Lcom/twitter/model/timeline/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/twitter/model/timeline/az;->l:Z

    .line 231
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/az;

    return-object v0
.end method

.method public b(I)Lcom/twitter/model/timeline/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 224
    iput p1, p0, Lcom/twitter/model/timeline/az;->k:I

    .line 225
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/az;

    return-object v0
.end method

.method public b(J)Lcom/twitter/model/timeline/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/twitter/model/timeline/az;->e:J

    .line 201
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/az;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lcom/twitter/model/timeline/az;->b:Ljava/lang/String;

    .line 183
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/az;

    return-object v0
.end method

.method public bq_()Z
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/twitter/model/timeline/az;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/twitter/android/timeline/cy;
.super Lcom/twitter/android/timeline/bu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bu",
        "<",
        "Lcom/twitter/android/timeline/cv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/twitter/android/timeline/bu;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cy;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 21
    sget v0, Lchj;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 22
    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->p(I)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cv;
    .locals 12

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cy;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v9

    .line 29
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cy;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 30
    sget v0, Lchj;->f:I

    .line 31
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/timeline/dh;->a:Lcom/twitter/util/serialization/d;

    .line 30
    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/twitter/model/timeline/dh;

    .line 33
    if-eqz v7, :cond_1

    .line 34
    sget-object v0, Lcgh;->a:Lcgh;

    invoke-virtual {v0, p1}, Lcgh;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/bl;

    move-result-object v4

    .line 35
    iget-object v0, v7, Lcom/twitter/model/timeline/dh;->f:Ljava/util/Map;

    iget-wide v10, v4, Lcom/twitter/model/core/bl;->q:J

    .line 36
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterSocialProof;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v4, v0}, Lcom/twitter/model/core/bl;->a(Lcom/twitter/model/core/TwitterSocialProof;)Lcom/twitter/model/core/bl;

    .line 40
    :cond_0
    new-instance v0, Lcom/twitter/android/timeline/cn;

    .line 41
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cy;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v1

    invoke-virtual {v4}, Lcom/twitter/model/core/bl;->a()Lcom/twitter/model/core/Tweet;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/timeline/cn;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/core/Tweet;Lcom/twitter/model/timeline/al;)V

    .line 42
    new-instance v1, Lcmp;

    invoke-direct {v1}, Lcmp;-><init>()V

    .line 44
    new-instance v8, Lcom/twitter/android/timeline/cv;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cy;->d(Landroid/database/Cursor;)Lcom/twitter/model/timeline/al;

    move-result-object v4

    .line 45
    invoke-static {}, Lcmf;->f()Lcmf;

    move-result-object v5

    invoke-virtual {v1, v0}, Lcmp;->a(Ljava/lang/Object;)Lcmp;

    move-result-object v0

    invoke-virtual {v0}, Lcmp;->a()Lcmo;

    move-result-object v6

    move-object v0, v8

    move-object v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/timeline/cv;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;Lcmf;Lcmf;Lcom/twitter/model/timeline/dh;)V

    move-object v0, v8

    .line 47
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/twitter/android/timeline/cv;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cy;->d(Landroid/database/Cursor;)Lcom/twitter/model/timeline/al;

    move-result-object v4

    .line 48
    invoke-static {}, Lcmf;->f()Lcmf;

    move-result-object v5

    invoke-static {}, Lcmf;->f()Lcmf;

    move-result-object v6

    move-object v1, v9

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/timeline/cv;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;Lcmf;Lcmf;Lcom/twitter/model/timeline/dh;)V

    goto :goto_0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cy;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.class public Lcom/twitter/android/timeline/ci;
.super Lcom/twitter/android/timeline/bu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bu",
        "<",
        "Lcom/twitter/android/timeline/cj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/twitter/android/timeline/bu;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ci;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cj;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 2

    .prologue
    .line 18
    sget v0, Lchj;->e:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 19
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cj;
    .locals 5

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ci;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Lcom/twitter/android/timeline/ck;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ci;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ci;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 27
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ci;->d(Landroid/database/Cursor;)Lcom/twitter/model/timeline/al;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/timeline/ck;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;)V

    sget v1, Lchj;->r:I

    .line 28
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/ck;->a(Ljava/lang/String;)Lcom/twitter/android/timeline/ck;

    move-result-object v0

    sget v1, Lchj;->u:I

    .line 29
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/ck;->b(Ljava/lang/String;)Lcom/twitter/android/timeline/ck;

    move-result-object v0

    sget v1, Lchj;->v:I

    .line 30
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/ck;->c(Ljava/lang/String;)Lcom/twitter/android/timeline/ck;

    move-result-object v1

    sget v0, Lchj;->B:I

    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v2, Lcss;->a:Lcom/twitter/util/serialization/d;

    .line 31
    invoke-static {v0, v2}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcss;

    invoke-virtual {v1, v0}, Lcom/twitter/android/timeline/ck;->a(Lcss;)Lcom/twitter/android/timeline/ck;

    move-result-object v1

    sget v0, Lchj;->C:I

    .line 35
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v2, Lcom/twitter/model/topic/d;->a:Lcom/twitter/util/serialization/ah;

    .line 34
    invoke-static {v0, v2}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/i;

    invoke-virtual {v1, v0}, Lcom/twitter/android/timeline/ck;->a(Lcom/twitter/model/topic/i;)Lcom/twitter/android/timeline/ck;

    move-result-object v1

    sget v0, Lchj;->j:I

    .line 37
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/android/timeline/ck;->a(Z)Lcom/twitter/android/timeline/ck;

    move-result-object v0

    sget v1, Lchj;->t:I

    .line 38
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/ck;->d(Ljava/lang/String;)Lcom/twitter/android/timeline/ck;

    move-result-object v0

    sget v1, Lchj;->s:I

    .line 39
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/ck;->a(I)Lcom/twitter/android/timeline/ck;

    move-result-object v0

    sget v1, Lchj;->D:I

    .line 40
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/ck;->e(Ljava/lang/String;)Lcom/twitter/android/timeline/ck;

    move-result-object v0

    sget v1, Lchj;->A:I

    .line 41
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/ck;->b(I)Lcom/twitter/android/timeline/ck;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/twitter/android/timeline/ck;->a()Lcom/twitter/android/timeline/cj;

    move-result-object v0

    .line 26
    return-object v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ci;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

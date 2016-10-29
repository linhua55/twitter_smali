.class public Lcom/twitter/android/timeline/n;
.super Lcom/twitter/android/timeline/bu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bu",
        "<",
        "Lcom/twitter/android/timeline/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/android/timeline/bu;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/n;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 2

    .prologue
    .line 16
    sget v0, Lchj;->e:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 17
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lchj;->g:I

    .line 18
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/l;
    .locals 4

    .prologue
    .line 24
    sget v0, Lchj;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 25
    sget-object v1, Lcom/twitter/model/timeline/e;->a:Lcom/twitter/util/serialization/ah;

    .line 26
    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/e;

    .line 27
    new-instance v1, Lcom/twitter/android/timeline/m;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/n;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/timeline/m;-><init>(J)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/n;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/timeline/m;->a(Lcom/twitter/android/timeline/bj;)Lcom/twitter/android/timeline/bq;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/timeline/m;

    .line 29
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/n;->d(Landroid/database/Cursor;)Lcom/twitter/model/timeline/al;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/timeline/m;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/android/timeline/bq;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/timeline/m;

    .line 30
    invoke-virtual {v1, v0}, Lcom/twitter/android/timeline/m;->a(Lcom/twitter/model/timeline/e;)Lcom/twitter/android/timeline/m;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/twitter/android/timeline/m;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/l;

    .line 27
    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/n;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.class public Lcom/twitter/android/timeline/bn;
.super Lcom/twitter/android/timeline/bu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bu",
        "<",
        "Lcom/twitter/android/timeline/aq;",
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

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/bn;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/aq;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 2

    .prologue
    .line 17
    sget v0, Lchj;->e:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/aq;
    .locals 8

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/bn;->d(Landroid/database/Cursor;)Lcom/twitter/model/timeline/al;

    move-result-object v5

    .line 24
    sget v0, Lchj;->f:I

    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/timeline/ae;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/timeline/ae;

    .line 27
    sget v0, Lchj;->F:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 28
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/bn;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v1

    .line 29
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/bn;->e(Landroid/database/Cursor;)J

    move-result-wide v6

    .line 30
    new-instance v0, Lcom/twitter/android/timeline/aq;

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/timeline/aq;-><init>(Lcom/twitter/android/timeline/bj;Lcom/twitter/model/timeline/ae;JLcom/twitter/model/timeline/al;J)V

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/bn;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

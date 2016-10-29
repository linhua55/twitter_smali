.class public Lcom/twitter/android/timeline/ag;
.super Lcom/twitter/android/timeline/bu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bu",
        "<",
        "Lcom/twitter/android/timeline/ah;",
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

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ag;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/ah;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 3

    .prologue
    .line 18
    sget v0, Lchj;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 19
    sget v1, Lchj;->e:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 20
    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->t(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 19
    :goto_0
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/ah;
    .locals 6

    .prologue
    .line 26
    sget v0, Lchj;->Q:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/bg;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/model/moments/bg;

    .line 28
    new-instance v0, Lcom/twitter/android/timeline/ah;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ag;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ag;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 29
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ag;->d(Landroid/database/Cursor;)Lcom/twitter/model/timeline/al;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/timeline/ah;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;Lcom/twitter/model/moments/bg;)V

    .line 28
    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ag;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

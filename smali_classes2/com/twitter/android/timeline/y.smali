.class public Lcom/twitter/android/timeline/y;
.super Lcom/twitter/android/timeline/bu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bu",
        "<",
        "Lcom/twitter/android/timeline/z;",
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

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/y;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/z;

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

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/z;
    .locals 6

    .prologue
    .line 25
    new-instance v0, Lcom/twitter/model/timeline/y;

    invoke-direct {v0}, Lcom/twitter/model/timeline/y;-><init>()V

    sget v1, Lchj;->V:I

    .line 26
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->U:I

    .line 27
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->W:I

    .line 28
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->c(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->X:I

    .line 29
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->d(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->aj:I

    .line 30
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->e(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->ac:I

    .line 31
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->f(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->S:I

    .line 32
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->p(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->ad:I

    .line 33
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->g(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->ae:I

    .line 34
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->b(I)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->R:I

    .line 35
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->a(I)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->af:I

    .line 36
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/model/core/bm;->a([B)Lcom/twitter/model/core/bm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->ag:I

    .line 37
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/model/core/bm;->a([B)Lcom/twitter/model/core/bm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->b(Lcom/twitter/model/core/bm;)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->T:I

    .line 38
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->h(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->ah:I

    .line 39
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/timeline/y;->a(J)Lcom/twitter/model/timeline/y;

    move-result-object v0

    sget v1, Lchj;->ai:I

    .line 40
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/y;->c(I)Lcom/twitter/model/timeline/y;

    move-result-object v1

    const-string/jumbo v0, "timeline_flags"

    .line 41
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    sget v0, Lchj;->g:I

    .line 43
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 42
    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->v(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 41
    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/y;->b(Z)Lcom/twitter/model/timeline/y;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/twitter/model/timeline/y;->q()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/model/timeline/w;

    .line 45
    new-instance v0, Lcom/twitter/android/timeline/z;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/y;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/y;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/y;->d(Landroid/database/Cursor;)Lcom/twitter/model/timeline/al;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/timeline/z;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;Lcom/twitter/model/timeline/w;)V

    return-object v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/y;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

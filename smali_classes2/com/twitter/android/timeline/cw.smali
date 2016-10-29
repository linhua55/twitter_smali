.class public Lcom/twitter/android/timeline/cw;
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

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cw;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 17
    sget v0, Lchj;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 18
    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->o(I)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cv;
    .locals 8

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cw;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 25
    sget v0, Lchj;->f:I

    .line 26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/timeline/dh;->a:Lcom/twitter/util/serialization/d;

    .line 25
    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/twitter/model/timeline/dh;

    .line 27
    new-instance v0, Lcom/twitter/android/timeline/cv;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cw;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cw;->d(Landroid/database/Cursor;)Lcom/twitter/model/timeline/al;

    move-result-object v4

    .line 28
    invoke-static {}, Lcmf;->f()Lcmf;

    move-result-object v5

    invoke-static {}, Lcmf;->f()Lcmf;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/timeline/cv;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;Lcmf;Lcmf;Lcom/twitter/model/timeline/dh;)V

    .line 27
    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cw;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

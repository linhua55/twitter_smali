.class public Lcom/twitter/android/timeline/ba;
.super Lcom/twitter/android/timeline/bu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bu",
        "<",
        "Lcom/twitter/android/timeline/as;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/twitter/android/timeline/bu;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/twitter/android/timeline/as;
    .locals 8

    .prologue
    .line 60
    sget v0, Lchj;->f:I

    .line 61
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/ba;->a:Lcom/twitter/util/serialization/ah;

    .line 60
    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ba;

    .line 62
    iget-object v4, v0, Lcom/twitter/model/moments/ba;->b:Lcom/twitter/model/moments/ay;

    .line 63
    iget-wide v6, v0, Lcom/twitter/model/moments/ba;->d:J

    .line 64
    new-instance v0, Lcom/twitter/android/timeline/as;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ba;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ba;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 65
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ba;->d(Landroid/database/Cursor;)Lcom/twitter/model/timeline/al;

    move-result-object v5

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/timeline/as;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/moments/ay;Lcom/twitter/model/timeline/al;J)V

    .line 64
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ba;->a(Landroid/database/Cursor;)Lcom/twitter/android/timeline/as;

    move-result-object v0

    return-object v0
.end method

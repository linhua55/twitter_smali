.class public abstract Lcom/twitter/android/timeline/bu;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/android/timeline/bp;",
        ">",
        "Lcmv",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/timeline/bl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcmv;-><init>()V

    .line 15
    new-instance v0, Lcom/twitter/android/timeline/bl;

    invoke-direct {v0}, Lcom/twitter/android/timeline/bl;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/timeline/bu;->a:Lcom/twitter/android/timeline/bl;

    return-void
.end method


# virtual methods
.method protected c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/twitter/android/timeline/bu;->a:Lcom/twitter/android/timeline/bl;

    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/bl;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/twitter/android/timeline/bu;->a:Lcom/twitter/android/timeline/bl;

    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/bl;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Landroid/database/Cursor;)Lcom/twitter/model/timeline/al;
    .locals 2

    .prologue
    .line 28
    invoke-static {p1}, Lcom/twitter/android/timeline/be;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget v0, Lchj;->k:I

    .line 30
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 31
    sget-object v1, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/al;

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 37
    invoke-static {p1}, Lcom/twitter/android/timeline/be;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget v0, Lchj;->b:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 40
    :goto_0
    return-wide v0

    :cond_0
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

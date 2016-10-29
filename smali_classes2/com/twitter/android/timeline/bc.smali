.class public Lcom/twitter/android/timeline/bc;
.super Lcom/twitter/android/timeline/bu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bu",
        "<",
        "Lcom/twitter/android/timeline/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/twitter/android/timeline/bu;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/bc;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 2

    .prologue
    .line 13
    sget v0, Lchj;->e:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/a;
    .locals 4

    .prologue
    .line 19
    sget v0, Lchj;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 20
    new-instance v0, Lcom/twitter/android/timeline/b;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/bc;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/android/timeline/b;-><init>(J)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/bc;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/android/timeline/b;->a(Lcom/twitter/android/timeline/bj;)Lcom/twitter/android/timeline/bq;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/b;

    .line 22
    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/b;->a(Ljava/lang/String;)Lcom/twitter/android/timeline/b;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/twitter/android/timeline/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/a;

    .line 20
    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 10
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/bc;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.class public Lcom/twitter/android/timeline/ao;
.super Lcom/twitter/android/timeline/bu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bu",
        "<",
        "Lcom/twitter/android/timeline/ap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/timeline/ch;


# direct methods
.method constructor <init>(Lcom/twitter/android/timeline/ch;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/android/timeline/bu;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/twitter/android/timeline/ao;->a:Lcom/twitter/android/timeline/ch;

    .line 17
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ao;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 2

    .prologue
    .line 22
    sget v0, Lchj;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 23
    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->m(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->n(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/ap;
    .locals 7

    .prologue
    .line 30
    sget v0, Lchj;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 31
    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/timeline/ao;->a:Lcom/twitter/android/timeline/ch;

    .line 32
    invoke-virtual {v0, p1}, Lcom/twitter/android/timeline/ch;->a(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cn;

    move-result-object v5

    .line 33
    :goto_0
    sget v0, Lchj;->f:I

    .line 34
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/timeline/aa;->a:Lcom/twitter/util/serialization/d;

    .line 33
    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/model/timeline/aa;

    .line 35
    new-instance v0, Lcom/twitter/android/timeline/ap;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ao;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ao;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ao;->d(Landroid/database/Cursor;)Lcom/twitter/model/timeline/al;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/timeline/ap;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;Lcom/twitter/android/timeline/cn;Lcom/twitter/model/timeline/aa;)V

    return-object v0

    .line 32
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 12
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ao;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

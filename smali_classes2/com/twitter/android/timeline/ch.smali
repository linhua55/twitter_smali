.class public Lcom/twitter/android/timeline/ch;
.super Lcom/twitter/android/timeline/bu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bu",
        "<",
        "Lcom/twitter/android/timeline/cn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/android/timeline/bu;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/twitter/android/timeline/ch;->a:Z

    .line 20
    return-void
.end method

.method private static b(Landroid/database/Cursor;)Z
    .locals 4

    .prologue
    .line 51
    const/16 v0, 0x2a

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cn;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ch;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v1

    .line 26
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ch;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 27
    sget-object v0, Lcgh;->a:Lcgh;

    invoke-virtual {v0, p1}, Lcgh;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/bl;->a()Lcom/twitter/model/core/Tweet;

    move-result-object v4

    .line 30
    iget-boolean v0, p0, Lcom/twitter/android/timeline/ch;->a:Z

    if-eqz v0, :cond_0

    .line 31
    sget v0, Lchj;->k:I

    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v5, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    .line 31
    invoke-static {v0, v5}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/al;

    .line 34
    sget v5, Lchj;->Q:I

    .line 35
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    sget-object v6, Lcom/twitter/model/moments/bg;->a:Lcom/twitter/util/serialization/ah;

    .line 34
    invoke-static {v5, v6}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/model/moments/bg;

    move-object v6, v5

    move-object v5, v0

    .line 41
    :goto_0
    invoke-static {p1}, Lcom/twitter/android/timeline/ch;->b(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Lcom/twitter/android/timeline/al;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/timeline/al;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/core/Tweet;Lcom/twitter/model/timeline/al;)V

    .line 46
    :goto_1
    return-object v0

    :cond_0
    move-object v5, v6

    .line 39
    goto :goto_0

    .line 43
    :cond_1
    if-eqz v6, :cond_2

    .line 44
    new-instance v0, Lcom/twitter/android/timeline/ai;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/timeline/ai;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/core/Tweet;Lcom/twitter/model/timeline/al;Lcom/twitter/model/moments/bg;)V

    goto :goto_1

    .line 46
    :cond_2
    new-instance v0, Lcom/twitter/android/timeline/cn;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/timeline/cn;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/core/Tweet;Lcom/twitter/model/timeline/al;)V

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/ch;->a(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cn;

    move-result-object v0

    return-object v0
.end method

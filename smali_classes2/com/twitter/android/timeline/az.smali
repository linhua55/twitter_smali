.class public Lcom/twitter/android/timeline/az;
.super Lcom/twitter/android/timeline/bu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bu",
        "<",
        "Lcom/twitter/android/timeline/bb;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/timeline/ba;


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/ba;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/twitter/android/timeline/bu;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/twitter/android/timeline/az;->a:Lcom/twitter/android/timeline/ba;

    .line 23
    return-void
.end method

.method private a(Landroid/database/Cursor;II)Lcmf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "II)",
            "Lcmf",
            "<",
            "Lcom/twitter/android/timeline/as;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1}, Lcom/twitter/library/provider/bp;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/twitter/android/timeline/az;->a:Lcom/twitter/android/timeline/ba;

    add-int/lit8 v2, p3, 0x1

    invoke-static {v0, v1, p2, v2}, Lcmj;->a(Landroid/database/Cursor;Lcmv;II)Lcmf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/az;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bb;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 2

    .prologue
    .line 27
    sget v0, Lchj;->e:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bb;
    .locals 8

    .prologue
    .line 35
    sget v0, Lchj;->f:I

    .line 36
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/ba;->a:Lcom/twitter/util/serialization/ah;

    .line 35
    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ba;

    .line 39
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/az;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v1

    .line 40
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/az;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 41
    iget-object v4, v0, Lcom/twitter/model/moments/ba;->c:Lcom/twitter/model/moments/aw;

    .line 42
    iget-wide v6, v0, Lcom/twitter/model/moments/ba;->d:J

    .line 44
    iget v0, v1, Lcom/twitter/android/timeline/bj;->k:I

    iget v5, v1, Lcom/twitter/android/timeline/bj;->l:I

    .line 45
    invoke-direct {p0, p1, v0, v5}, Lcom/twitter/android/timeline/az;->a(Landroid/database/Cursor;II)Lcmf;

    move-result-object v5

    .line 46
    new-instance v0, Lcom/twitter/android/timeline/bb;

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/timeline/bb;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/moments/aw;Lcmf;J)V

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/az;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

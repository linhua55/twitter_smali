.class public Lcom/twitter/android/timeline/cz;
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


# instance fields
.field private final a:Lcom/twitter/android/timeline/db;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/twitter/android/timeline/bu;-><init>()V

    .line 21
    new-instance v0, Lcom/twitter/android/timeline/db;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/timeline/db;-><init>(Lcom/twitter/android/timeline/cz;Lcom/twitter/android/timeline/da;)V

    iput-object v0, p0, Lcom/twitter/android/timeline/cz;->a:Lcom/twitter/android/timeline/db;

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
            "Lcom/twitter/android/timeline/cs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p1}, Lcom/twitter/library/provider/bp;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/twitter/android/timeline/cz;->a:Lcom/twitter/android/timeline/db;

    add-int/lit8 v2, p3, 0x1

    invoke-static {v0, v1, p2, v2}, Lcmj;->a(Landroid/database/Cursor;Lcmv;II)Lcmf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cz;->b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cv;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 26
    sget v0, Lchj;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 27
    invoke-static {v0}, Lcom/twitter/model/timeline/bg;->q(I)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cv;
    .locals 8

    .prologue
    .line 33
    sget v0, Lchj;->f:I

    .line 34
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/timeline/dh;->a:Lcom/twitter/util/serialization/d;

    .line 33
    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/twitter/model/timeline/dh;

    .line 37
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cz;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v1

    .line 38
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cz;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 39
    if-eqz v7, :cond_0

    iget-object v4, v7, Lcom/twitter/model/timeline/dh;->e:Lcom/twitter/model/timeline/al;

    .line 41
    :goto_0
    iget v0, v1, Lcom/twitter/android/timeline/bj;->k:I

    iget v5, v1, Lcom/twitter/android/timeline/bj;->l:I

    invoke-direct {p0, p1, v0, v5}, Lcom/twitter/android/timeline/cz;->a(Landroid/database/Cursor;II)Lcmf;

    move-result-object v5

    .line 43
    new-instance v0, Lcom/twitter/android/timeline/cv;

    .line 44
    invoke-static {}, Lcmf;->f()Lcmf;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/timeline/cv;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;Lcmf;Lcmf;Lcom/twitter/model/timeline/dh;)V

    .line 43
    return-object v0

    .line 39
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 20
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/cz;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

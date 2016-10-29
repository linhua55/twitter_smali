.class Lcom/twitter/android/timeline/db;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lcom/twitter/android/timeline/cs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/timeline/cz;


# direct methods
.method private constructor <init>(Lcom/twitter/android/timeline/cz;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/twitter/android/timeline/db;->a:Lcom/twitter/android/timeline/cz;

    invoke-direct {p0}, Lcmv;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/timeline/cz;Lcom/twitter/android/timeline/da;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/db;-><init>(Lcom/twitter/android/timeline/cz;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cs;
    .locals 6

    .prologue
    .line 58
    sget v0, Lchj;->O:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 59
    sget v0, Lchj;->k:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v2, Lcom/twitter/model/timeline/al;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v0, v2}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/model/timeline/al;

    .line 61
    new-instance v0, Lcom/twitter/model/core/cv;

    invoke-direct {v0}, Lcom/twitter/model/core/cv;-><init>()V

    sget v2, Lchj;->G:I

    .line 62
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/core/cv;->a(J)Lcom/twitter/model/core/cv;

    move-result-object v0

    sget v2, Lchj;->I:I

    .line 63
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/model/core/cv;->g(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    sget v2, Lchj;->H:I

    .line 64
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/model/core/cv;->b(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    sget v2, Lchj;->J:I

    .line 65
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/model/core/cv;->c(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    sget v2, Lchj;->K:I

    .line 66
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/model/core/cv;->i(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    sget v2, Lchj;->L:I

    .line 67
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/model/core/cv;->i(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v0

    sget v2, Lchj;->M:I

    .line 68
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/model/core/cv;->e(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move-result-object v2

    sget v0, Lchj;->P:I

    .line 69
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v3, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {v0, v3}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    invoke-virtual {v2, v0}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/cv;

    move-result-object v0

    sget v2, Lchj;->N:I

    .line 71
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/model/core/cv;->b(I)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 72
    invoke-static {v1}, Lcom/twitter/model/core/dd;->e(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/twitter/model/core/cv;->c(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 73
    invoke-static {v1}, Lcom/twitter/model/core/dd;->d(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cv;->b(Z)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v5}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/core/cv;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/model/core/TwitterUser;

    .line 76
    new-instance v0, Lcom/twitter/android/timeline/cs;

    iget-object v1, p0, Lcom/twitter/android/timeline/db;->a:Lcom/twitter/android/timeline/cz;

    invoke-virtual {v1, p1}, Lcom/twitter/android/timeline/cz;->c(Landroid/database/Cursor;)Lcom/twitter/android/timeline/bj;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/timeline/db;->a:Lcom/twitter/android/timeline/cz;

    invoke-virtual {v2, p1}, Lcom/twitter/android/timeline/cz;->e(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/timeline/cs;-><init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/core/TwitterUser;Lcom/twitter/model/timeline/al;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/db;->a(Landroid/database/Cursor;)Lcom/twitter/android/timeline/cs;

    move-result-object v0

    return-object v0
.end method

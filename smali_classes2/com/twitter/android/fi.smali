.class public Lcom/twitter/android/fi;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lckw;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Ljava/util/List",
            "<",
            "Lckg;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcbv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lckg;->a:Lcom/twitter/util/serialization/ah;

    .line 27
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/fi;->a:Lcom/twitter/util/serialization/ah;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcbv;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcmv;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/twitter/android/fi;->b:Lcbv;

    .line 34
    return-void
.end method

.method private a(Lcom/twitter/android/h;IIILclg;)V
    .locals 3

    .prologue
    .line 82
    packed-switch p2, :pswitch_data_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tried to hydrate activity with invalid source type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget v0, v0, Lcbv;->j:I

    invoke-virtual {p1, v0}, Lcom/twitter/android/h;->getBlob(I)[B

    move-result-object v0

    .line 96
    packed-switch p3, :pswitch_data_1

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tried to hydrate activity with invalid target type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget v0, v0, Lcbv;->m:I

    invoke-virtual {p1, v0}, Lcom/twitter/android/h;->getBlob(I)[B

    move-result-object v0

    .line 113
    packed-switch p4, :pswitch_data_2

    .line 127
    :goto_2
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget v0, v0, Lcbv;->g:I

    .line 85
    invoke-virtual {p1, v0}, Lcom/twitter/android/h;->getBlob(I)[B

    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lcom/twitter/android/h;->a([B)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p5, v0}, Lclg;->a(Ljava/util/List;)Lclg;

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {p1, v0}, Lcom/twitter/android/h;->b([B)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p5, v0}, Lclg;->b(Ljava/util/List;)Lclg;

    goto :goto_1

    .line 102
    :pswitch_2
    invoke-virtual {p1, v0}, Lcom/twitter/android/h;->a([B)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p5, v0}, Lclg;->b(Ljava/util/List;)Lclg;

    goto :goto_1

    .line 115
    :pswitch_3
    sget-object v1, Lcom/twitter/android/fi;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p5, v0}, Lclg;->c(Ljava/util/List;)Lclg;

    goto :goto_2

    .line 119
    :pswitch_4
    invoke-virtual {p1, v0}, Lcom/twitter/android/h;->b([B)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p5, v0}, Lclg;->c(Ljava/util/List;)Lclg;

    goto :goto_2

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 96
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 113
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/fi;->b(Landroid/database/Cursor;)Lckw;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget-boolean v0, v0, Lcbv;->a:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p1}, Lcom/twitter/android/s;->b(Landroid/database/Cursor;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)Lckw;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 45
    move-object v1, p1

    check-cast v1, Lcom/twitter/android/h;

    .line 47
    iget-object v0, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget v0, v0, Lcbv;->c:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/h;->getInt(I)I

    move-result v0

    .line 49
    iget-object v2, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget v2, v2, Lcbv;->f:I

    invoke-virtual {v1, v2}, Lcom/twitter/android/h;->getInt(I)I

    move-result v2

    .line 51
    iget-object v3, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget v3, v3, Lcbv;->i:I

    invoke-virtual {v1, v3}, Lcom/twitter/android/h;->getInt(I)I

    move-result v3

    .line 53
    iget-object v4, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget v4, v4, Lcbv;->l:I

    invoke-virtual {v1, v4}, Lcom/twitter/android/h;->getInt(I)I

    move-result v4

    .line 55
    iget-object v5, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget v5, v5, Lcbv;->r:I

    invoke-virtual {v1, v5}, Lcom/twitter/android/h;->getInt(I)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v6, 0x1

    .line 57
    :goto_0
    new-instance v5, Lclg;

    invoke-direct {v5}, Lclg;-><init>()V

    .line 58
    invoke-virtual {v5, v0}, Lclg;->a(I)Lclg;

    move-result-object v5

    iget-object v7, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget v7, v7, Lcbv;->n:I

    .line 59
    invoke-virtual {v1, v7}, Lcom/twitter/android/h;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lclg;->b(J)Lclg;

    move-result-object v5

    iget-object v7, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget v7, v7, Lcbv;->o:I

    .line 60
    invoke-virtual {v1, v7}, Lcom/twitter/android/h;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lclg;->c(J)Lclg;

    move-result-object v5

    iget-object v7, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget v7, v7, Lcbv;->e:I

    .line 61
    invoke-virtual {v1, v7}, Lcom/twitter/android/h;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lclg;->b(I)Lclg;

    move-result-object v5

    .line 62
    invoke-virtual {v5, v2}, Lclg;->c(I)Lclg;

    move-result-object v5

    iget-object v7, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget v7, v7, Lcbv;->h:I

    .line 63
    invoke-virtual {v1, v7}, Lcom/twitter/android/h;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lclg;->d(I)Lclg;

    move-result-object v5

    .line 64
    invoke-virtual {v5, v3}, Lclg;->e(I)Lclg;

    move-result-object v5

    iget-object v7, p0, Lcom/twitter/android/fi;->b:Lcbv;

    iget v7, v7, Lcbv;->k:I

    .line 65
    invoke-virtual {v1, v7}, Lcom/twitter/android/h;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lclg;->f(I)Lclg;

    move-result-object v5

    .line 66
    invoke-virtual {v5, v4}, Lclg;->g(I)Lclg;

    move-result-object v5

    .line 69
    const/16 v7, 0x8

    if-eq v0, v7, :cond_0

    move-object v0, p0

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/fi;->a(Lcom/twitter/android/h;IIILclg;)V

    .line 72
    :cond_0
    invoke-virtual {v5}, Lclg;->q()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcle;

    .line 74
    new-instance v0, Lckm;

    iget-wide v2, v7, Lcle;->b:J

    iget-wide v4, v7, Lcle;->c:J

    move v1, v8

    invoke-direct/range {v0 .. v6}, Lckm;-><init>(IJJZ)V

    .line 76
    new-instance v1, Lckw;

    invoke-direct {v1, v0, v7}, Lckw;-><init>(Lckm;Lcle;)V

    return-object v1

    :cond_1
    move v6, v8

    .line 55
    goto :goto_0
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/fi;->a(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

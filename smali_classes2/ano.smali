.class public Lano;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lclb;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/s;


# direct methods
.method public constructor <init>(Lcom/twitter/android/s;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcmv;-><init>()V

    .line 26
    iput-object p1, p0, Lano;->a:Lcom/twitter/android/s;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lclb;
    .locals 10

    .prologue
    .line 32
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/h;

    .line 33
    iget-object v1, p0, Lano;->a:Lcom/twitter/android/s;

    invoke-virtual {v1, p1}, Lcom/twitter/android/s;->a(Landroid/database/Cursor;)Lckm;

    move-result-object v8

    .line 34
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/h;->getLong(I)J

    move-result-wide v2

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/twitter/android/h;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/Tweet;

    .line 38
    new-instance v9, Lclb;

    new-instance v1, Lcla;

    iget-wide v2, v0, Lcom/twitter/model/core/Tweet;->m:J

    iget-wide v4, v8, Lckm;->b:J

    iget-wide v6, v8, Lckm;->c:J

    invoke-direct/range {v1 .. v7}, Lcla;-><init>(JJJ)V

    invoke-direct {v9, v8, v1, v0}, Lclb;-><init>(Lckm;Lcla;Lcom/twitter/model/core/Tweet;)V

    return-object v9
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lano;->a(Landroid/database/Cursor;)Lclb;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/database/Cursor;)Z
    .locals 2

    .prologue
    .line 44
    invoke-static {p1}, Lcom/twitter/android/s;->b(Landroid/database/Cursor;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 21
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lano;->b(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

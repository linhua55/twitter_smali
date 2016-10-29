.class public Lcom/twitter/android/revenue/c;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lcom/twitter/android/revenue/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcmv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/twitter/android/revenue/a;
    .locals 14

    .prologue
    .line 17
    sget v0, Lcgl;->b:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 18
    sget v2, Lcgl;->f:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 19
    sget v4, Lcgl;->d:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 20
    sget v5, Lcgl;->e:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 21
    sget v6, Lcgl;->g:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 22
    sget v8, Lcgl;->h:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 23
    sget v10, Lcgl;->i:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 25
    sget v12, Lcgl;->c:I

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 28
    const-string/jumbo v13, "tweet"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 29
    new-instance v12, Lcom/twitter/android/revenue/ah;

    invoke-direct {v12}, Lcom/twitter/android/revenue/ah;-><init>()V

    sget-object v13, Lcgi;->a:Lcgi;

    invoke-virtual {v13, p1}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/twitter/android/revenue/ah;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/android/revenue/ah;

    move-result-object v12

    .line 36
    invoke-virtual {v12, v0, v1}, Lcom/twitter/android/revenue/ah;->a(J)Lcom/twitter/android/revenue/b;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/revenue/b;->b(J)Lcom/twitter/android/revenue/b;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v4}, Lcom/twitter/android/revenue/b;->a(Ljava/lang/String;)Lcom/twitter/android/revenue/b;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v5}, Lcom/twitter/android/revenue/b;->b(Ljava/lang/String;)Lcom/twitter/android/revenue/b;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v6, v7}, Lcom/twitter/android/revenue/b;->c(J)Lcom/twitter/android/revenue/b;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v8, v9}, Lcom/twitter/android/revenue/b;->d(J)Lcom/twitter/android/revenue/b;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v10, v11}, Lcom/twitter/android/revenue/b;->e(J)Lcom/twitter/android/revenue/b;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/twitter/android/revenue/b;->c()Lcom/twitter/android/revenue/a;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/c;->a(Landroid/database/Cursor;)Lcom/twitter/android/revenue/a;

    move-result-object v0

    return-object v0
.end method

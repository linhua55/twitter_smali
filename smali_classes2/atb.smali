.class Latb;
.super Lcom/twitter/android/bt;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/model/core/Tweet;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lavh;Lcom/twitter/model/core/Tweet;)V
    .locals 7

    .prologue
    .line 212
    iget-object v2, p2, Lavh;->a:Landroid/net/Uri;

    iget-object v3, p2, Lavh;->b:[Ljava/lang/String;

    iget-object v4, p2, Lavh;->c:Ljava/lang/String;

    iget-object v5, p2, Lavh;->d:[Ljava/lang/String;

    iget-object v6, p2, Lavh;->e:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iput-object p3, p0, Latb;->a:Lcom/twitter/model/core/Tweet;

    .line 214
    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Latb;->b:Ljava/util/List;

    .line 244
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 218
    invoke-super {p0}, Lcom/twitter/android/bt;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    .line 219
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 225
    :cond_0
    sget-object v2, Lcgh;->a:Lcgh;

    .line 226
    invoke-virtual {v2, v1}, Lcgh;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/bl;

    move-result-object v2

    iget-object v3, p0, Latb;->a:Lcom/twitter/model/core/Tweet;

    .line 227
    invoke-virtual {v3}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/model/core/bl;->a(Lcss;)Lcom/twitter/model/core/bl;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Lcom/twitter/model/core/bl;->a()Lcom/twitter/model/core/Tweet;

    move-result-object v2

    .line 229
    invoke-static {v2}, Lcom/twitter/android/revenue/v;->a(Lcom/twitter/model/core/Tweet;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    invoke-virtual {v0, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 232
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Latb;->b:Ljava/util/List;

    .line 237
    :cond_2
    invoke-static {v1}, Ldbt;->a(Landroid/database/Cursor;)V

    .line 238
    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Latb;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

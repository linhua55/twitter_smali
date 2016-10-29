.class Lcom/twitter/library/provider/bm;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/twitter/library/provider/bm;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 299
    iget-object v0, p0, Lcom/twitter/library/provider/bm;->b:Lcom/twitter/library/provider/au;

    invoke-static {v0}, Lcom/twitter/library/provider/au;->c(Lcom/twitter/library/provider/au;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 302
    const-string/jumbo v1, "interval"

    const/16 v2, 0x5a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string/jumbo v1, "account_settings"

    const-string/jumbo v2, "interval=?"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x3c

    .line 304
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 303
    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 306
    :cond_0
    return-void
.end method

.class Lcom/twitter/library/provider/bk;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/twitter/library/provider/bk;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 278
    const-class v0, Lbbt;

    new-instance v1, Lcom/twitter/database/model/a;

    const-string/jumbo v2, "unread_interactions"

    sget-object v3, Lcom/twitter/database/model/ColumnDefinition$Type;->a:Lcom/twitter/database/model/ColumnDefinition$Type;

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/a;-><init>(Ljava/lang/String;Lcom/twitter/database/model/ColumnDefinition$Type;)V

    .line 281
    invoke-virtual {v1}, Lcom/twitter/database/model/a;->a()Lcom/twitter/database/model/ColumnDefinition;

    move-result-object v1

    .line 278
    invoke-interface {p1, v0, v1}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;Lcom/twitter/database/model/ColumnDefinition;)V

    .line 282
    iget-object v0, p0, Lcom/twitter/library/provider/bk;->b:Lcom/twitter/library/provider/au;

    iget-object v1, p0, Lcom/twitter/library/provider/bk;->b:Lcom/twitter/library/provider/au;

    .line 283
    invoke-static {v1}, Lcom/twitter/library/provider/au;->e(Lcom/twitter/library/provider/au;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/high16 v4, 0x20000

    aput v4, v2, v3

    invoke-static {v1, v2}, Lcso;->a(I[I)I

    move-result v1

    .line 282
    invoke-static {v0, v1}, Lcom/twitter/library/provider/au;->a(Lcom/twitter/library/provider/au;I)I

    .line 284
    return-void
.end method

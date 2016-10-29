.class Lcom/twitter/library/provider/ba;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/twitter/library/provider/ba;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 471
    iget-object v0, p0, Lcom/twitter/library/provider/ba;->b:Lcom/twitter/library/provider/au;

    invoke-static {v0}, Lcom/twitter/library/provider/au;->i(Lcom/twitter/library/provider/au;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    const-class v0, Lbcj;

    new-instance v1, Lcom/twitter/database/model/a;

    const-string/jumbo v2, "remote_id"

    sget-object v3, Lcom/twitter/database/model/ColumnDefinition$Type;->e:Lcom/twitter/database/model/ColumnDefinition$Type;

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/a;-><init>(Ljava/lang/String;Lcom/twitter/database/model/ColumnDefinition$Type;)V

    .line 474
    invoke-virtual {v1}, Lcom/twitter/database/model/a;->a()Lcom/twitter/database/model/ColumnDefinition;

    move-result-object v1

    .line 472
    invoke-interface {p1, v0, v1}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;Lcom/twitter/database/model/ColumnDefinition;)V

    .line 476
    :cond_0
    return-void
.end method

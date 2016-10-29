.class Lcom/twitter/library/provider/ap;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/v;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/v;I)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/twitter/library/provider/ap;->b:Lcom/twitter/library/provider/v;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 146
    const-class v0, Lcom/twitter/database/schema/a;

    new-instance v1, Lcom/twitter/database/model/a;

    const-string/jumbo v2, "geo_tag"

    sget-object v3, Lcom/twitter/database/model/ColumnDefinition$Type;->k:Lcom/twitter/database/model/ColumnDefinition$Type;

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/a;-><init>(Ljava/lang/String;Lcom/twitter/database/model/ColumnDefinition$Type;)V

    .line 148
    invoke-virtual {v1}, Lcom/twitter/database/model/a;->a()Lcom/twitter/database/model/ColumnDefinition;

    move-result-object v1

    .line 146
    invoke-interface {p1, v0, v1}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;Lcom/twitter/database/model/ColumnDefinition;)V

    .line 150
    iget-object v0, p0, Lcom/twitter/library/provider/ap;->b:Lcom/twitter/library/provider/v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/library/provider/v;->a(Lcom/twitter/library/provider/v;Z)Z

    .line 151
    return-void
.end method

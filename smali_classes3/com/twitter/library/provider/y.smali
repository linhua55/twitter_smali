.class Lcom/twitter/library/provider/y;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/v;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/v;I)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/twitter/library/provider/y;->b:Lcom/twitter/library/provider/v;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 169
    const-class v0, Lcom/twitter/database/schema/a;

    new-instance v1, Lcom/twitter/database/model/a;

    const-string/jumbo v2, "sending_state"

    sget-object v3, Lcom/twitter/database/model/ColumnDefinition$Type;->a:Lcom/twitter/database/model/ColumnDefinition$Type;

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/a;-><init>(Ljava/lang/String;Lcom/twitter/database/model/ColumnDefinition$Type;)V

    const/4 v2, 0x0

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/database/model/a;->a(Ljava/lang/Object;)Lcom/twitter/database/model/a;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Lcom/twitter/database/model/a;->a()Lcom/twitter/database/model/ColumnDefinition;

    move-result-object v1

    .line 169
    invoke-interface {p1, v0, v1}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;Lcom/twitter/database/model/ColumnDefinition;)V

    .line 174
    iget-object v0, p0, Lcom/twitter/library/provider/y;->b:Lcom/twitter/library/provider/v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/library/provider/v;->a(Lcom/twitter/library/provider/v;Z)Z

    .line 176
    invoke-static {p2}, Lcom/twitter/library/provider/v;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 177
    return-void
.end method
.class Lcom/twitter/library/provider/ei;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/ea;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/ea;I)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/twitter/library/provider/ei;->b:Lcom/twitter/library/provider/ea;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 219
    const-class v0, Lbef;

    new-instance v1, Lcom/twitter/database/model/a;

    const-string/jumbo v2, "withheld_scope"

    sget-object v3, Lcom/twitter/database/model/ColumnDefinition$Type;->a:Lcom/twitter/database/model/ColumnDefinition$Type;

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/a;-><init>(Ljava/lang/String;Lcom/twitter/database/model/ColumnDefinition$Type;)V

    const/4 v2, -0x1

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/twitter/database/model/a;->a(Ljava/lang/Object;Z)Lcom/twitter/database/model/a;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/twitter/database/model/a;->a()Lcom/twitter/database/model/ColumnDefinition;

    move-result-object v1

    .line 219
    invoke-interface {p1, v0, v1}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;Lcom/twitter/database/model/ColumnDefinition;)V

    .line 223
    return-void
.end method

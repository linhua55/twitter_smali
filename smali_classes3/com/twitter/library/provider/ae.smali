.class Lcom/twitter/library/provider/ae;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/v;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/v;I)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/twitter/library/provider/ae;->b:Lcom/twitter/library/provider/v;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 225
    const-class v0, Lcom/twitter/database/schema/a;

    new-instance v1, Lcom/twitter/database/model/a;

    const-string/jumbo v2, "reply_prefill_disabled"

    sget-object v3, Lcom/twitter/database/model/ColumnDefinition$Type;->h:Lcom/twitter/database/model/ColumnDefinition$Type;

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/a;-><init>(Ljava/lang/String;Lcom/twitter/database/model/ColumnDefinition$Type;)V

    const/4 v2, 0x0

    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/database/model/a;->a(Ljava/lang/Object;)Lcom/twitter/database/model/a;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/twitter/database/model/a;->a()Lcom/twitter/database/model/ColumnDefinition;

    move-result-object v1

    .line 225
    invoke-interface {p1, v0, v1}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;Lcom/twitter/database/model/ColumnDefinition;)V

    .line 230
    return-void
.end method

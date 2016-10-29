.class Lcom/twitter/library/provider/eu;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/ea;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/ea;I)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/twitter/library/provider/eu;->b:Lcom/twitter/library/provider/ea;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 306
    const-class v0, Lbfi;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 307
    const-class v0, Lbfu;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 308
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "moments_guide_delete_trigger"

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->c([Ljava/lang/String;)V

    .line 309
    const-class v0, Lbfk;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 310
    const-class v0, Lbfw;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 311
    const-class v0, Lbfq;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 312
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "CREATE TRIGGER IF NOT EXISTS moments_guide_delete_trigger AFTER DELETE ON moments_sections FOR EACH ROW BEGIN DELETE FROM moments_guide WHERE section_id=OLD._id;END;"

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 313
    return-void
.end method

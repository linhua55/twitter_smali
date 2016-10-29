.class Lcom/twitter/library/provider/en;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/ea;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/ea;I)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/twitter/library/provider/en;->b:Lcom/twitter/library/provider/ea;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 253
    const-class v0, Lbfi;

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 254
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "DELETE FROM moments_pages;"

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 255
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "DELETE FROM pivot_guide_impression_ids;"

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 256
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "DELETE FROM moments_guide_user_states;"

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 257
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "DELETE FROM moment_sports_events;"

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 258
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "DELETE FROM moments_guide;"

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 259
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "DELETE FROM moments_sections;"

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 260
    return-void
.end method

.class Lcom/twitter/library/provider/ej;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/ea;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/ea;I)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/twitter/library/provider/ej;->b:Lcom/twitter/library/provider/ea;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DELETE FROM activities"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "DELETE FROM notifications_tab"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 230
    return-void
.end method

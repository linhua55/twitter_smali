.class Lcom/twitter/library/provider/ew;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/ea;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/ea;I)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/twitter/library/provider/ew;->b:Lcom/twitter/library/provider/ea;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 332
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DELETE FROM timeline WHERE type=8;"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 334
    return-void
.end method
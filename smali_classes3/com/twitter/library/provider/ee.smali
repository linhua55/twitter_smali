.class Lcom/twitter/library/provider/ee;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/ea;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/ea;I)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/twitter/library/provider/ee;->b:Lcom/twitter/library/provider/ea;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/twitter/library/provider/dm;->f()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 191
    return-void
.end method
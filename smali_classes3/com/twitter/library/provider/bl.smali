.class Lcom/twitter/library/provider/bl;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/twitter/library/provider/bl;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/twitter/library/provider/bl;->b:Lcom/twitter/library/provider/au;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/library/provider/au;->g(Lcom/twitter/library/provider/au;Z)Z

    .line 291
    return-void
.end method
